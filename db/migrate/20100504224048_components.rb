class Equipments < ActiveRecord::Migration
  def self.up
    create_table :components do |t|
      t.column :description, :string, :limit => 60, :null => false
      t.column :serial, :string, :limit => 40, :null => true
      t.column :model, :string, :limit => 40, :null => true
      t.column :acquisition_date, :date, :null => false
      t.column :component_type, :string, :limit => 2, :null => false
      t.column :component_location, :string, :limit => 2, :null => false
    end
  end

  def self.down
    drop_table :components
  end
end
