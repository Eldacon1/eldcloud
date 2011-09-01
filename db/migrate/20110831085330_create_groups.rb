class CreateGroups < ActiveRecord::Migration
  def self.up
    create_table :groups do |t|
      t.string :name
      t.integer :is_a_one_man_group

      t.timestamps
    end
  end

  def self.down
    drop_table :groups
  end
end
