#Graph  
DSL for creating a simple graph and determining properties of graph from a file.  

`ruby graph-runner.rb` from the terminal to run.

An example file, `graph.qm`, that can be read by `graph-runner.rb' is in the root of the project.

##Example

graph "g" //Sets the label of the graph

vertices 5 //Creates five vertices

edge 0 , 1 //Creates a relationship between the two vertices.

printArray //Print each vertex and a list of its related vertices.

printDegree 0 //Displays the number of relationships a given vertex has with other vertices.

printMaxDegree //Displays the greatest number of relationships

edge? 1 , 2 //Determines if there is a relationship between two vertices.
