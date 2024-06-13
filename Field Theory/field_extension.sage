# Problem 13: Define an extension over a field.
def field_extension(F, f, sym):
    if not F in Fields:
        raise ValueError("F must be a field.")
    if not isinstance(sym, str):
        raise ValueError("Pass a symbol to be used for the root defining the extension.")

    R.<x> = PolynomialRing(F)
    poly = R(f)
    K = F.extension(poly, sym)
    return K


#### EXAMPLE CODE ####
F = eval(input("Enter a field: "))
f = input("Enter a polynomial over the field: ")
sym = input("Enter a character to represent the root: ")
K = field_extension(F, f, sym)
