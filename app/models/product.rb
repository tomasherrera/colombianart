# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  user_id     :integer
#  image       :string(255)
#  public      :boolean
#  units       :integer
#  price       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ActiveRecord::Base
  belongs_to :user
  has_many :photos
  attr_accessible :description, :image, :public, :title, :units, :price
  mount_uploader :image, GravatarUploader
  accepts_nested_attributes_for :photos, :allow_destroy => true
end
