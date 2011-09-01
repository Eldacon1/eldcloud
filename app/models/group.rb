class Group < ActiveRecord::Base 
   has_and_belongs_to_many :user
   belongs_to :manager, :class_name=>"User"
   has_many :children, :class_name=>"Group"
   belongs_to :parent, :class_name=>"Group"
end
