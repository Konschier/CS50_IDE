# Getting input and validating it
height = input("Enter the height here: \n")
if (int(height) < 1) or (int(height) > 8):
    height = input("Enter an valid height: \n")
    if not height.isnumeric():
        height = input("Only numbers are allowed: \n")
    if height is not int:
        height = input("Only numbers are allowed: \n")

# Creating the shape that I need
for i in range(1, int(height) + 1):
    print(' ' * (int(height) - int(i)) + '#' * i)