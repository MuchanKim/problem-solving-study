N = int(input())
 
arr = []
for i in range(N):
    arr.append(list(map(int, input().split())))
 
arr.sort(key = lambda x: [-x[0], x[1]])
 
cnt = 0
for i in range(N):
    if arr[4][0] == arr[i][0] and arr[4][1] < arr[i][1]:
    	cnt += 1
 
print(cnt)