require_relative 'Edge'

class Vertex

	attr_accessor :label, :degree, :incident_vertices

	def initialize(int)
		@label = int
		@incident_vertices = []
		@degree = 0
	end

	def add_incident_vertices(edge)
		@incident_vertices << edge
		@degree = @degree + 1 
	end

	def print_vertex
		print "#{@label} : [ "
			@incident_vertices.each { |e| e.print_incident_vertex }
		puts "]"
	end
end
