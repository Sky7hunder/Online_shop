# == Schema Information
#
# Table name: orders
#
#  id              :integer          not null, primary key
#  total           :decimal(12, 3)
#  order_status_id :integer
#  created_at      :datetime
#  updated_at      :datetime
#  confirmed       :boolean
#  user_name       :string
#  user_surname    :string
#  user_phone      :integer
#  user_email      :string
#

class Order < ActiveRecord::Base
  belongs_to :order_status
  has_many :order_items
  has_many :products, :through => :order_items
  before_create :set_order_status
  before_save :update_subtotal

  def total
    order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end
private
  def set_order_status
    self.order_status_id = 1
  end

  def update_subtotal
    self[:total] = total
  end
end
