class User < ActiveRecord::Base
   has_many :checked_out_documents, :class_name => :document
   has_many :groups
   has_one :active_account, :class_name => :account
   attr_accessor :name
   attr_accessor :email
   attr_accessor :password
   attr_accessor :telephone
   attr_accessor :instant_messenger
   attr_accessor :accounts_left #(darab)
end

class Account < ActiveRecord::Base
   has_one :owner ,:class_name => :user
   has_one :user
   attr_accessor :start_date
   attr_accessor :end_date
end

class Group < ActiveRecord::Base
   has_one :parent_group, :class_name => :group
   has_many :children_groups, :class_name => :group
   has_many :users
   attr_accessor :name
   attr_accessor :is_a_one_man_group
end

class Document < ActiveRecord::Base
   has_one :security_profile
   has_one :creator, :class_name => :user
   has_one :checked_out_by, :class_name => :user
   has_many :tags
   attr_accessor :name
   attr_accessor :location_uri
   attr_accessor :checkout_date
end

class SecurityProfile < ActiveRecord::Base
   #minden usernek csinalunk egy egyszemelyes group-ot is
   has_many :readers, :class_name => :group
   has_many :writers, :class_name => :group
   has_many :listers, :class_name => :group
end

class Tag < ActiveRecord::Base
   attr_accessor :name
end
