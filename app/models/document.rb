# == Schema Information
#
# Table name: documents
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  location   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Document < ActiveRecord::Base
   has_one :creator, :class_name=>"User"
   has_one :checked_out_by, :class_name=>"User"
   has_one :security_profile
end
