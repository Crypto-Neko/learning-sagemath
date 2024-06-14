# Problem #18: Check if a field extension is normal and/or separable.
def is_normal_extension(E, F):
    f = E.gen().minimal_polynomial(F)

def is_separable_extension(E, F):
    for e in E:
        f = e.minimal_polynomial(F)
        if not f.is_squarefree():
            return False
        return True


#### EXAMPLE CODE ####
F = eval(input("Enter a field: "))
E = eval(input("Enter an extension field: "))
print("E is normal over F: " + str(is_normal_extension(E, F)))
print("E is separable over F: " + str(is_separable_extension(E, F)))
