class Component < ActiveRecord::Base
  belongs_to :comptype, :foreign_key => "component_type"
  belongs_to :location, :foreign_key => "component_location"
  validates_presence_of :description
  validates_presence_of :model
  validates_presence_of :serial
  validates_presence_of :acquisition_date
  validates_presence_of :responsible
end
