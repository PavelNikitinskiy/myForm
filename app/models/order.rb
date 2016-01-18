class Order < ActiveRecord::Base
  validates :sum, :numericality => { :greater_than_or_equal_to => 1, :less_than_or_equal_to => 600 }
  validates :days, :numericality => { :greater_than_or_equal_to => 1, :less_than_or_equal_to => 30 }
  validates_presence_of  :email,:product_id,:mobile,:sum,:days
  validates :email,:product_id,:mobile, length: { maximum: 50 }
  validates :product_id, length: { maximum: 500 }
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/,  message: "Not valid"}

  validates :mobile, format: {:with => /\A^\+?\d+(-\d+)*$\z/,  :message => "Not valid"}

end
