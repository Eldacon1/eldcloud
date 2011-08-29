class User
   attr_accessor :name
   attr_accessor :email
   attr_accessor :password
   attr_accessor :telephone
   attr_accessor :checked_out_documents
   attr_accessor :accounts_left #(darab)
   attr_accessor :active_account
   attr_accessor :member_of_groups

   def initialize
      @checked_out_documents = Array.new
      @member_of_groups = Array.new
   end
end

class Account
   attr_accessor :start_date
   attr_accessor :end_date
   attr_accessor :owner
   attr_accessor :user
end

class Group
   attr_accessor :name
   attr_accessor :parent_group
   attr_accessor :users

   def initialize
      @users = Array.new
   end
end

class SecurityGroup
   attr_accessor :name
   attr_accessor :users

   def initialize
      @users = Array.new
   end
end

class Document
   attr_accessor :name
   attr_accessor :location_uri
   attr_accessor :can_read
   attr_accessor :can_write
   attr_accessor :can_list
   attr_accessor :checked_out_by_user
   attr_accessor :checkout_date

   def initialize
      @can_read = Array.new
      @can_write = Array.new
      @can_list = Array.new
      #pushable objects: User,Group,SecurityGroup

      #@labels = Array.new
   end
   #attr_accessor :labels
end


hogy lehet megtalalni egy dokumentumot labels/fa?










   attr_accessor :start_date
   attr_accessor :end_date

