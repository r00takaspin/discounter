class DiscountCategorySerializer < ActiveModel::Serializer

  embed :ids, include: :true

  has_many :discounts
end