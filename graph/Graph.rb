require 'Singleton'
require_relative 'Vertex'

class Graph

	include Singleton
	attr_accessor :vertices

	def initialize
		@vertices = []
		@label = nil
	end

	def set_label (text)
		@label = text
	end

	def add_vertices (vertex)
		@vertices << vertex
	end

	def print_array
		puts "Graph #{@label}"
		@vertices.each { |v| v.print_vertex }
	end

	def print_degree (vertex)
		@vertices.each { |v| if v.label == vertex then puts "The degree of vertex " + v.label.to_s + " is " +  v.degree.to_s end }
	end

	def print_max_degree
		max = 0
		@vertices.each { |v| if v.degree > max then max = v.degree end }
		puts "The maximum degree is " + max.to_s

	end

	def edge?(initial, terminal)
		isEdge = false
		@vertices[initial].incident_vertices.each { |e| if e.incident_vertex == terminal then isEdge = true end }
		print "( " + initial.to_s + ", " + terminal.to_s + " ) is"
		if isEdge == false
			print " not"
		end
		puts " an edge"
	end

	def in_triangle? (start, finish)

	end
end
=begin
Graph.instance.set_label('g')
Graph.instance.add_vertices(Vertex.new(1))
Graph.instance.add_vertices(Vertex.new(2))
puts Graph.instance.last_vertex
Graph.instance.print_array
=end
