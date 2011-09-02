class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :name
      t.string :link_to_event_subject

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
