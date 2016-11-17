k = 2

root = PickVertex()
Q.Append(root)
pred[root] = root
depth[root] = 0
step = 1

while Q.IsNotEmpty():
    v = Q.Top()
    if depth[v] < k:
        for w in Neighborhood(v):
            if not pred[w]:
                Q.Append(w)
                depth[w] = depth[v] + 1
                pred[w] = v
				        