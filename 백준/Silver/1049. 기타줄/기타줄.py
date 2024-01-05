import sys

input = sys.stdin.readline

N, M = map(int, input().split())
packgage = []
unit = []

for _ in range(M):
    packgage_price, unit_price = map(int, input().split())
    packgage.append(packgage_price)
    unit.append(unit_price)

min_package = min(packgage)
min_unit = min(unit)
result = 0

if min_unit * 6 <= min_package:
    result = min_unit * N
elif min_unit * 6 > min_package:
    result =  min_package * (N // 6) 
    N %= 6  
    if N > min_package // min_unit: 
        result += min_package
    else:
        result = result + min_unit*N

print(result)