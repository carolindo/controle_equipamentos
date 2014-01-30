class Comptypes < ActiveRecord::Migration
  def self.up
    create_table :comptypes do |t|
      t.column :type_code, :string, :limit => 2, :null => false
      t.column :type_description, :string, :limit => 40, :null => false
    end
  end

  def self.down
    drop_table :comptypes
  end

end
