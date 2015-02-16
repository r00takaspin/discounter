class DiscountCategory
  include Mongoid::Document
  field :title, type: String
  embeds_many :discounts, cascade_callbacks: true
end
