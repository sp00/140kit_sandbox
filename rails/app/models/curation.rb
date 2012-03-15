class Curation < ActiveRecord::Base
  belongs_to :researcher
  has_and_belongs_to_many :datasets, :join_table => "curation_datasets"
  has_many :analysis_metadatas
  
  def self.max_time
    return 1.week
  end
  
  def self.default_time_series
    return 10.minutes
  end
  
  def self.default_step
    return 10.minutes
  end
  
  def current_status
    case self.status
    when "tsv_storing"
      return "Currently Streaming"
    when "tsv_stored"
      return "Stream Complete"
    when "needs_import"
      return "Ready to Analyze"
    when "imported"
      return "Analyzing"
    when "needs_drop"
      return "Finished Analysis"
    when "dropped"
      return "Archived"
    else
      return "Unknown"
    end
  end
  
  def current_options
    case self.status
    when "tsv_storing"
      return "<a href='/curations/#{self.id}/analyze>Set Analytics</a> | <a href='/curations/#{self.id}/destroy>Destroy</a>"
    when "tsv_stored"
      return "<a href='/curations/#{self.id}/analyze>Set Analytics</a> | <a href='/curations/#{self.id}/import'>Bring it live</a>"
    when "needs_import"
      return "Sit tight..."
    when "imported"
      return "<a href='/curations/#{self.id}/analyze>Set Analytics</a> | <a href='/curations/#{self.id}/archive'>Archive</a>"
    when "needs_drop"
      return "Sit tight..."
    when "dropped"
      return "<a href='/curations/#{self.id}/analyze>Set Analytics</a> | <a href='/curations/#{self.id}/restore'>restore</a>"
    else
      return "Sit tight..."
    end
  end
end