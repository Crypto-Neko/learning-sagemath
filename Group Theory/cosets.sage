# Problem 4: Find all cosets of a subgroup of a given group.
def find_cosets(G, H):
    if not H.is_subgroup(G):
        return("H must be a subgroup of G.")

    cosets_of_subgroup = G.cosets(H)
    n=1
    for cs in cosets_of_subgroup:
        print("Coset " + str(n) + ":" + str(cs))
        n+=1
