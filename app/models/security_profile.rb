# == Schema Information
#
# Table name: security_profiles
#
#  id         :integer         not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  name       :string(255)
#

class SecurityProfile < ActiveRecord::Base
   has_and_belongs_to_many :readers, :class_name=>"Group"
   has_and_belongs_to_many :writers, :class_name=>"Group"
   has_and_belongs_to_many :listers, :class_name=>"Group"
   has_and_belongs_to_many :notified_groups, :class_name=>"Group"
   has_and_belongs_to_many :managers, :class_name=>"Group"
end
