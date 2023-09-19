N = int(input())
card_list = [i for i in range(1, N+1)]
new_card_list = []

while len(card_list) != 1:
    new_card_list.append(card_list.pop(0))
    card_list.append(card_list.pop(0))

for i in new_card_list:
    print(i, end = ' ')
print(card_list[0])