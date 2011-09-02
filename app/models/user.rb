# == Schema Information
#
# Table name: users
#
#  id                :integer         not null, primary key
#  name              :string(255)
#  email             :string(255)
#  password          :string(255)
#  telephone         :string(255)
#  instant_messenger :string(255)
#  accounts_left     :integer
#  created_at        :datetime
#  updated_at        :datetime
#

class User < ActiveRecord::Base
   has_and_belongs_to_many :group
   has_many :managed_groups, :class_name=>"Group"

   belongs_to :account
   belongs_to :account
end
