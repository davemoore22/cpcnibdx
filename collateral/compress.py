# Compress CSV Output of TILED
#
# Note that the CSV Output of TILED needs to be made continuous (one line) and
# also stripped of spaces
import csv
import os
os.system('clear')

with open('level-1.csv', newline='') as csvfile:
	data = list(csv.reader(csvfile))
level = data[0]
source = []
compressed = []

# Convert from String to Int
for row in level:
	source.append(int(row))

# Compress
for i in range(0, len(source), 2):
	# TILED values start at 6 for layout sprites
	msb = source[i] - 6;
	lsb = source[i + 1] - 6;
	msb = msb << 4
	cell = msb | lsb
	compressed.append(cell)

print("Compressing...")

# Decompress just for safety
decompressed = []
for cell in compressed:
	msb = (cell >> 4) + 6
	lsb = (cell & 0b00001111) + 6
	decompressed.append(msb)
	decompressed.append(lsb)

print("Decompressing to Check...")

if (source != decompressed):
	print("FAILURE!")
	print("SOURCE DATA:")
	print(source)
	print("DECOMPRESSED DATA:")
	print(decompressed)
else:
	print("SUCCESS! Compressed Output is ", compressed)

