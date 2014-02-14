#!/usr/bin/python
import sys, re

def calc_sum(numbers_str):
	numbers_str = numbers_str.replace('\n', ',').replace('\t', ',')
	total = 0
	if re.match(r'(\d+[\D?])*', numbers_str):
		non_decimal = re.compile(r'[^\-?\d]+')
		numbers_str = non_decimal.sub(',', numbers_str)
		numbers = numbers_str.split(',')
		if numbers:
			numbers = filter(None, numbers)
			numbers = map(int, numbers)
			for i in numbers:
				if i < 0:
					print "negative number:";
				        exit(0);	
			total = sum(numbers)
	return total

print calc_sum("//;\n1;2")
