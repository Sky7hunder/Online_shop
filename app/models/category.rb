# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  position   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ActiveRecord::Base
  acts_as_list

  has_many :product_categories
  has_many :products, through: :product_categories

  default_scope { order('position ASC') }

  validates :name, presence: true, uniqueness: true, length: {in: 3..30}
end
