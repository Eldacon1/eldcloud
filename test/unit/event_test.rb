# == Schema Information
#
# Table name: events
#
#  id                    :integer         not null, primary key
#  name                  :string(255)
#  link_to_event_subject :string(255)
#  created_at            :datetime
#  updated_at            :datetime
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
