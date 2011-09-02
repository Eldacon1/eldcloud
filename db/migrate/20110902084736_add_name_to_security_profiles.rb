class AddNameToSecurityProfiles < ActiveRecord::Migration
  def self.up
    add_column :security_profiles, :name, :string
  end

  def self.down
    remove_column :security_profiles, :name
  end
end
