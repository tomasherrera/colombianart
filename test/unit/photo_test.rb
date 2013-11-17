# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  data       :string(255)
#  product_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PhotoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
