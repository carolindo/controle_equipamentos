class Location < ActiveRecord::Base
  has_many :components,  :foreign_key => 'component_location'
  validates_presence_of :location_description
  def before_destroy 
    raise "Existe algum equipamento associado a este local." unless components.count == 0
  end
end
