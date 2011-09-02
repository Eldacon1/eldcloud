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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
