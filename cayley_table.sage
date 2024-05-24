# Problem 1: Print the Cayley table of an arbitrary group.
def cayley_table(G):
    order = G.order()
    table = [G.list()]
    for i in range(1, order):
        row = []
        for j in range(0, order):
            row.append(G.list()[i] * G.list()[j])
        table.append(row)

    return(table)


#### TEST CODE ####
G = eval(input("Please enter a group in valid SageMath syntax: "))
while not G in Groups:
    G = eval(input("Please enter a group in valid SageMath syntax: "))
    print("Group is invalid. Please enter a valid group.")
table = cayley_table(G)
print("Cayley table for G:\n")
for row in table:
    print(row)

