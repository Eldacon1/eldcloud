# == Schema Information
#
# Table name: events
#
#  id                    :integer         not null, primary key
#  name                  :string(255)
#  link_to_event_subject :string(255)
#  created_at            :datetime
#  updated_at            :datetime
#

class Event < ActiveRecord::Base
   has_many :groups
end
