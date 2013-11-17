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

class Photo < ActiveRecord::Base
  belongs_to :product
  attr_accessible :data
  mount_uploader :data, GravatarUploader
end
