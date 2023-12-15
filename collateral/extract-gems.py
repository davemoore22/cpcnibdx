# Extract Gems
import csv
import os
os.system('clear')

with open('level-3.csv', newline='') as csvfile:
	data = list(csv.reader(csvfile))
level = data[0]
source = []
gems = []

# Convert from String to Int
for row in level:
	source.append(int(row))

print(source)

idx = 0;
for cell in source:
	if (cell == 5):
		x = idx % 40
		y = int(idx / 40)
		gems.append((x, y))
	idx = idx + 1
print(gems)





