class User < ActiveRecord::Base
   has_and_belongs_to_many :group
   has_many :managed_groups, :class_name=>"Group"
end
