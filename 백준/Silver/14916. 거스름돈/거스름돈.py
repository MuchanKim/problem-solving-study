coin = int(input())

count = 0
i = 0

while True:
    if coin % 5 == 0:    
        count += coin//5	
        break
    else:
        coin -= 2  
        count += 1

    if coin < 0:  
        break
if coin<0:		
    print(-1)			
else:
    print(count)