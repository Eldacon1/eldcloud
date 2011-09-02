class CreateSecurityProfiles < ActiveRecord::Migration
  def self.up
    create_table :security_profiles do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :security_profiles
  end
end
