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
   has_many :readers, :class_name=>"Group"
   has_many :writers, :class_name=>"Group"
   has_many :listers, :class_name=>"Group"
   has_many :notified_groups, :class_name=>"Group"
   has_many :managers, :class_name=>"Group"
end
