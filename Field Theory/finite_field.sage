# Problem 16: Construct an arbitrary finite field.
def finite_field(p, n):
    if not is_prime(p):
        raise ValueError("The first integer must be prime.")

    F = GF(p**n)
    return F


#### EXAMPLE CODE ####
p = int(input("Enter a prime number: "))
n = int(input("Enter an integer: "))
print(finite_field(p, n))
