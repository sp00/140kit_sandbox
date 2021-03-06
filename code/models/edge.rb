class Edge
  include DataMapper::Resource
  property :id, Serial
  property :start_node, String, :unique_index => [:unique_edge], :index => [:start_node_edge, :start_node]
  property :end_node, String, :unique_index => [:unique_edge], :index => [:end_node_edge, :end_node]
  property :time, Time, :unique_index => [:unique_edge], :index => [:time_edge, :time]
  property :edge_id, String, :unique_index => [:unique_edge], :index => [:edge_id_edge, :edge_id]
  property :flagged, Boolean, :default => false
  property :style, String
  belongs_to :analysis_metadata, :unique_index => [:unique_edge], :index => [:graph_id_analysis_metadata_id, :analysis_metadata_id]
  belongs_to :graph, :unique_index => [:unique_edge], :index => [:start_node_edge, :end_node_edge, :edge_id_edge, :time_edge, :graph_id_analysis_metadata_id]
  belongs_to :curation, :unique_index => [:unique_edge], :index => [:curation_edge]
end