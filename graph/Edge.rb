class Edge

  attr_accessor :incident_vertex

  def initialize(incident_vertex)
 	@incident_vertex = incident_vertex
  end

  def print_incident_vertex
  	print "#{@incident_vertex} "
  end
end
