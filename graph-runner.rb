#!/usr/bin/env ruby
require_relative 'graph/Graph.rb'

def graph(text)
	Graph.instance.set_label text
end

def vertices (text)
	count = 0
	while count < text
		Graph.instance.add_vertices Vertex.new(count)
		count = count + 1
	end
end

def edge (initial, terminal)
	Graph.instance.vertices[initial].add_incident_vertices Edge.new(terminal)
	Graph.instance.vertices[terminal].add_incident_vertices Edge.new(initial)
end

def printArray
	Graph.instance.print_array
end

def printDegree (text)
	Graph.instance.print_degree(text)
end

def printMaxDegree
	Graph.instance.print_max_degree
end

def edge? (initial, terminal)
	Graph.instance.edge?(initial, terminal)
end

def inTriangle? (start, finish)
	Graph.instance.in_triangle?(start, finish)
end


load 'graph.qm'
