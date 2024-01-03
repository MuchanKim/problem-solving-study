num = int(input())
A = [int(x) for x in input().split()]
B = [int(x) for x in input().split()]
temp_B = B
A =sorted(A)
 
sum = 0
for i in range(num) : 
    sum += (A[i] * temp_B[temp_B.index(max(temp_B))])
    temp_B.remove(max(temp_B))
 
print(sum)
