from cs50 import get_float

while True:
    money = get_float("change ouwned: ");
    if money >= 0:
        break

cents = int((money * 100) + 0.5)

total = 0
for coin in [25, 10, 5, 1]:
    total += cents // coin
    cents %= coin

print(total)