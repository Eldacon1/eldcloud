class User < ActiveRecord::Base
   attr_accessor :name
   attr_accessor :email
   attr_accessor :password
   attr_accessor :telephone
   attr_accessor :instant_messenger
   attr_accessor :checked_out_documents
   attr_accessor :accounts_left #(darab)
   attr_accessor :active_account
   attr_accessor :member_of_groups

   def initialize
      @checked_out_documents = Array.new
      @member_of_groups = Array.new
   end
end

class Account < ActiveRecord::Base
   attr_accessor :start_date
   attr_accessor :end_date
   attr_accessor :owner
   attr_accessor :user
end

class Group < ActiveRecord::Base
   attr_accessor :name
   attr_accessor :parent_group
   attr_accessor :users

   def initialize
      @users = Array.new
   end
end

class Document < ActiveRecord::Base
   has_one :security_profile
   attr_accessor :name
   attr_accessor :location_uri
   attr_accessor :checked_out_by_user
   attr_accessor :checkout_date

   def initialize
      #@labels = Array.new
   end
   #attr_accessor :labels
end

class SecurityProfile < ActiveRecord::Base
   has_many users which can read???!!!
   attr_accessor :can_read
   attr_accessor :can_write
   attr_accessor :can_list

   def initialize
      #pushable objects: User,Group
      @can_read = Array.new
      @can_write = Array.new
      @can_list = Array.new
   end
end

class Tag < ActiveRecord::Base
end










   attr_accessor :start_date
   attr_accessor :end_date

