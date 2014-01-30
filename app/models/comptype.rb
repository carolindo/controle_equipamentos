class Comptype < ActiveRecord::Base
  has_many :components,  :foreign_key => 'component_type'
  validates_presence_of :type_description
  def before_destroy 
    raise "Existe algum equipamento associado a este tipo." unless components.count == 0
  end
end

