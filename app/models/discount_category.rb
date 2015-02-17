class DiscountCategory
  include Mongoid::Document
  field :title, type: String
  has_many :discounts
end
