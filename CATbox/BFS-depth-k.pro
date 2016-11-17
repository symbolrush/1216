# Options ----------------------------------------------------------------------
breakpoints = [9]
interactive = [1]
graphDisplays = 1
about = """

"""
#--------------------------------------------------------------------------------

PickVertex   = lambda : self.PickVertex(1,None)
label        = VisibleVertexLabeling(A)
depth        = VisibleVertexLabeling(A)
pred         = AnimatedPredecessor(A)
Neighborhood = lambda v,a=A,g=G: AnimatedNeighborhood(a,g,v,["red"])
Q            = AnimatedVertexQueue(A,"blue","red")

class MyGraphInformer(GraphInformer):

    def VertexInfo(self,v):
	if label[v]:
	    return "Vertex %d - label %d - pred %d"%(v,label[v],pred[v])
	elif v in Q.contents:
            return "Vertex %d - Queue position %d"%(v,Q.contents.index(v)+1)
	else:
            return "Vertex %d - not visited yet"%v
        return

A.SetAllVerticesColor("#EEEEEE")
for v in G.vertices:
    label[v] = None
    pred[v]  = None
    depth[v]  = None

A.RegisterGraphInformer(MyGraphInformer(G))
