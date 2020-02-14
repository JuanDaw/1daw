def find_odd(lst):
    veces = {}
    for e in lst:
        if e in veces:
            veces[e] += 1
        else:
            veces[e] = 1
    for k, v in veces.items():
        if v % 2 != 0:
            return k

############################

def find_odd(lst):
  for num in lst:
    if lst.count(num) % 2:
      return num

############################

def find_odd(lst):
	ans = 0
	for i in lst:
		ans^=i
	return ans