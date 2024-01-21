import sys

input = sys.stdin.readline

company = {}

for _ in range(int(input())):
    name, state = map(str, input().split())
    
    if state == 'enter':
        company[name] = state
    else:
        del company[name]

print("\n".join(sorted(company.keys(), reverse=True)))