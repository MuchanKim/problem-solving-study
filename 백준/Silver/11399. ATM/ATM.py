count = input()
persons = list(map(int, input().split()))
persons.sort()

sum = 0 
new = 0
for i in persons:
    new += i
    sum += new
    
print(sum)