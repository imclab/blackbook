# == Schema Information
#
# Table name: likes
#
#  id          :integer(4)      not null, primary key
#  object_id   :integer(4)
#  object_type :string(255)
#  user_id     :integer(4)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class LikeTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end