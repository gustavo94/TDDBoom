import random
import networkx
import numpy

def to_graph(matrix):
    graph = networkx.from_numpy_matrix(numpy.array(matrix), create_using=networkx.DiGraph())
    print graph
    print(networkx.dijkstra_path(graph,6,0))

def traveler(matrix):
    traveler_path = {'path': [], }
    for i, row in enumerate(matrix):
        for j, column in enumerate(row):
            if column == 'start':
                traveler_path['path'].append({'x': i, 'y': j})
            elif column == 'objective':
                traveler_path['path'].append({'x': i, 'y': j})
    print traveler_path

def create_board(size):
    matrix = []
    for i in range(size):
        aux = []
        for j in range(size):
            aux.append(random.randint(1,5))
        matrix.append(aux)
    matrix[0][size-1] = 0
    matrix[size-1][0] = 6
    print matrix
    return matrix

to_graph(create_board(size=6))
