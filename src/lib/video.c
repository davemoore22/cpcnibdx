/*
 * NibblerDX for the Amstrad CPC
 * Copyright (C) 2024 Dave Moore
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; If not, see <http://www.gnu.org/licenses/>.
 */

#include "video.h"

/* Screen Layout */
static const pos_t logo_loc = {.x = 1, .y = 1};
static const pos_t dx_loc = {.x = 65, .y = 5};

/* Initialise Video and Clear the Screen */
void v_init(void) {

	/* Note that Firmware is disabled */
	cpct_disableFirmware();
	cpct_setVideoMode(1);
	cpct_waitVSYNCStart();
	cpct_clearScreen_f64(0);
}

/* Reset all Screen Pens to Black, effectively blanking the screen */
void v_blk_scr(void) {

	static const u8 blank_pal[4] = {HW_BLACK, HW_BLACK, HW_BLACK, HW_BLACK};

	cpct_removeInterruptHandler();
	cpct_waitVSYNC();
	cpct_setPalette(blank_pal, sizeof(blank_pal));
	cpct_setBorder(HW_BLACK);
}

/* Wipe the Screen in a Direction */
void v_wipe_scr(bool dir) {

	u8 *pos;

	if (dir) {

		/* Wipe to the right */
		for (u8 x = 0; x < 80; x++) {
			if (x % 2 == 0) {
				cpct_waitVSYNC();
				pos = v_get_sp(x, 0);
				cpct_drawSolidBox(pos, 0, 2, 200);
			}
		}
	} else {

		/* Wipe to the left */
		for (u8 x = 78; x > 0; x--) {
			if (x % 2 == 0) {
				cpct_waitVSYNC();
				pos = v_get_sp(x, 0);
				cpct_drawSolidBox(pos, 0, 2, 200);
			}
		}
	}
}

/* Clear the Screen to Pen 0 */
void v_clr_scr(void) {

	cpct_waitVSYNCStart();
	cpct_clearScreen_f64(0);
}

/* Print a string using the Font sprites but centered horizontally */
void v_print_c(const char *str, const u8 y, const u8 pen) {

	u8 x = (40) - (strlen(str) * 2) / 2;

	v_print(str, x, y, pen);
}

/* Print a number using the Font sprites */
void v_print_n(const i64 num, const u8 x, const u8 y, const u8 pen) {

	char str[40];

	/* Handle large integers */
	sprintf(str, "%lld", num);
	v_print(str, x, y, pen);
}

/* Print a string using the Font sprites */
void v_print(const char *str, const u8 x, const u8 y, const u8 pen) {

	u8 *p_video;
	u8 cx = x, cy = y;
	size_t i = 0;
	int idx;
	u8 rc_spr[2 * 8];
	u16 rplc = cpct_pens2pixelPatternPairM1(1, pen);

	/* Iterate the through string */
	while (str[i] != '\0') {

		/* Tilemap for Text starts at ASCII 32 (Space) */
		idx = (int)str[i] - 32;
		p_video = v_get_sp(cx, cy);

		/* Recolour if necessary (making a copy in this case) */
		if (pen != 1) {

			/* In original sprite data the text is Index 1 */
			cpct_memcpy(rc_spr, font_ts[idx], 2 * 8);
			cpct_spriteColourizeM1(rplc, 2 * 8, rc_spr);
			cpct_drawSprite(rc_spr, p_video, 2, 8);
		} else {

			/* No recolour necessary so just draw direct */
			cpct_drawSprite(font_ts[idx], p_video, 2, 8);
		}

		/* As we're in Mode 1, move on 2 bytes (8 pixels) */
		cx = cx + CHAR_BYTES_W;
		i++;
	}
}

/* Reset the Palette back to Normal Mode 1 Colours */
void v_reset_pal(void) {

	static const u8 normal_pal[4] = {
		HW_BLACK, HW_BRIGHT_WHITE, HW_ORANGE, HW_BRIGHT_RED};

	cpct_waitVSYNC();
	cpct_setPalette(normal_pal, sizeof(normal_pal));
	cpct_setBorder(HW_BLACK);
}

/*  Wait for a specified number of VSYNCs */
void v_wait_VSYNC(u8 n) {

	do {
		cpct_waitVSYNC();
		if (--n) {
			__asm__("halt");
			__asm__("halt");
		}
	} while (n);
}

/*  Wrapper function for cpct_getScreenPtr */
u8 *v_get_sp(const u8 x, const u8 y) {

	return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
}

/* Flash the Screen Border for a specified duration */
void v_flash_brd(u8 col, u16 n) {

	cpct_setPALColour(16, col);
	u_wait(n * 15);
	cpct_setPALColour(16, HW_BLACK);
}

/* Draw the Logo */
void v_draw_logo(void) {

	u8 *pos;

	/* Draw logo (due to the size, it is split into 3 seperate sprites) */
	pos = v_get_sp(logo_loc.x, logo_loc.y * LINE_PY);
	cpct_drawSprite(image_logo_0, pos, IMAGE_LOGO_0_W, IMAGE_LOGO_0_H);
	pos = v_get_sp(IMAGE_LOGO_0_W, logo_loc.y * LINE_PY);
	cpct_drawSprite(image_logo_1, pos, IMAGE_LOGO_1_W, IMAGE_LOGO_1_H);
	pos = v_get_sp(dx_loc.x, dx_loc.y * LINE_PY);
	cpct_drawSpriteMasked(image_logo_2, pos, IMAGE_LOGO_2_W, IMAGE_LOGO_2_H);
}

/* Draw a Playfield */
void v_draw_pf(const u8 *pf, const pos_t *loc, const dim_t *sz) {

	int top_x = loc->x * LINE_PX, top_y = loc->y * LINE_PY;
	u8 *pos;
	u8 cell;

	/* For each cell in the tilemap */
	for (int x = 0; x < sz->w; x++) {
		for (int y = 0; y < sz->h; y++) {

			/*
			 * Note there is no need to recolour anything on the fly
			 * since our sprites have already been given the correct
			 * pens at design time!
			 */
			cell = pf[x + (y * sz->w)];
			pos = v_get_sp(top_x + (x * CHAR_BYTES_W),
				top_y + (y * LINE_PY));
			cpct_drawTileAligned2x8_f(sprite_ts[cell], pos);
		}
	}


}

/* Draw a whole Snake */
void v_draw_snake(const snake_t *snake, const pos_t *loc) {

	u8 *head_pos, *body_pos;
	u8 x, y;

	/* Draw the Body */
	for (u8 seg_idx = 1; seg_idx < snake->length; seg_idx++) {

		x = (snake->body[seg_idx].x + loc->x) * CHAR_BYTES_W;
		y = (snake->body[seg_idx].y + loc->y) * CHAR_BYTES_H;
		body_pos = v_get_sp(x, y);
		cpct_drawSpriteBlended(
			body_pos, CHAR_BYTES_H, CHAR_BYTES_W, sprite_ts[4]);
	}

	/* Draw the Head */
	x = (snake->body[0].x + loc->x) * CHAR_BYTES_W;
	y = (snake->body[0].y + loc->y) * CHAR_BYTES_H;
	head_pos = v_get_sp(x, y);
	cpct_drawSpriteBlended(head_pos, CHAR_BYTES_H, CHAR_BYTES_W,
		sprite_ts[snake->direction]);
}


/* Erase one segment of a Snake */
void v_erase_snake_seg(
	const snake_t *snake, const pos_t *loc, const u8 seg) {

	u8 *pos;
	u8 x, y;

	x = (snake->body[seg].x + loc->x) * CHAR_BYTES_W;
	y = (snake->body[seg].y + loc->y) * CHAR_BYTES_H;
	pos = v_get_sp(x, y);

	cpct_drawSprite(sprite_ts[49], pos, CHAR_BYTES_W, CHAR_BYTES_H);
}

/* Draw a snake segment */
void v_draw_snake_seg(
	const snake_t *snake, const pos_t *loc, const u8 seg,
	const bool is_head) {

	u8 *pos;
	u8 x, y;

	/* Remember the Demo Mode Playfield is not at 0,0 */
	if (is_head) {

		/* Draw the head */
		x = (snake->body[0].x + loc->x) * CHAR_BYTES_W;
		y = (snake->body[0].y + loc->y) * CHAR_BYTES_H;
		pos = v_get_sp(x, y);

		/* Remember to draw the correct directional sprite */
		cpct_drawSpriteBlended(pos, CHAR_BYTES_H, CHAR_BYTES_W,
			sprite_ts[snake->direction]);
	} else {

		/* Draw a body segment */
		x = (snake->body[seg].x + loc->x) * CHAR_BYTES_W;
		y = (snake->body[seg].y + loc->y) * CHAR_BYTES_H;
		pos = v_get_sp(x, y);

		/* Body sprite is always the same sprite */
		cpct_drawSpriteBlended(
			pos, CHAR_BYTES_H, CHAR_BYTES_W, sprite_ts[4]);
	}

}