# == Schema Information
#
# Table name: accounts
#
#  id         :integer         not null, primary key
#  start_date :date
#  end_date   :date
#  created_at :datetime
#  updated_at :datetime
#

class Account < ActiveRecord::Base
   has_one :user
   has_one :manager, :class_name=>"User"
end
