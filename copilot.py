# create a game to guess a prime number
def is_prime(n):
    if n == 1:
        return False
    for i in range(2, n):
        if n % i == 0:
            return False
    return True


def get_number():
    n = int(input("Enter a number: "))
    return n


def main():
    n = get_number()
    while not is_prime(n):
        print("Guess a prime number!")

    print("You guessed a prime number")


main()
