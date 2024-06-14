# Problem 15: Find the Galois group of a field extension
def galois_group(F, E):
    if not F in Fields or not E in Fields:
        raise ValueError("Must pass fields as input.")
    if not E.has_coerce_map_from(F):
        raise ValueError("E must be an extension of F.")
    
    G = E.galois_group(F)
    return G

#### EXAMPLE CODE ####
F = eval(input("Enter a field: "))
E = eval(input("Enter an extension field: "))
print(galois_group(F, E))
