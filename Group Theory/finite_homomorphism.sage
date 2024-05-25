# Problem 5: Construct an arbitrary homomorphism between finite groups.
def homomorphism(G, H, func):
    phi = Hom(G, H)([func(g) for g in H.gens()])

    a = G.gen()
    b = G.gen()^2
    print(f"phi(a * b) = {phi(a * b)}")
    print(f"phi(a) * phi(b) = {phi(a) * phi(b)}")
