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
  attr_accessible :description, :image, :public, :title, :units, :price

  validates_presence_of :description, :image, :title, :units, :price
  mount_uploader :image, GravatarUploader
  belongs_to :user
end
