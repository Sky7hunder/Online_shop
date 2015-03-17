# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  price       :decimal(12, 3)
#  active      :boolean
#  created_at  :datetime
#  updated_at  :datetime
#  description :text
#  image       :string
#

class Product < ActiveRecord::Base
  has_many :product_categories, dependent: :destroy
  has_many :categories, through: :product_categories
  has_many :order_items
  has_many :orders, :through => :order_items

  mount_uploader :image, ImageUploader

  default_scope { where(active: true) }

  #scope :search, -> search {where('name LIKE ?', "%#{search}%")}

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      default_scope
    end
  end
end
