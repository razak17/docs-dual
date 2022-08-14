import random
import string

num = int(input("Enter the length of password : "))

# getting all the alphabets
characters = list(string.ascii_letters)

# adding numbers from 0 to 9
characters.extend(list(x.__str__() for x in range(0, 10)))
# characters.extend(list(str(x) for x in range(0, 10)))
# characters.extend(list(f'{x}' for x in range(0, 10)))

# adding all the special characters
characters.extend(list(string.punctuation))

print(characters)

password = ""

for i in range(num):
    password = password + str(random.choice(characters))

print("password: {}".format(password))
