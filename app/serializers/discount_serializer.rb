class DiscountSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id,:title,:discount,:promo,:old_price,:new_price,:text,:color,:discountCategory,:big_image,:image,:logo

  def big_image
    object.big_image_url(:thumb)
  end

  def image
    object.image_url(:thumb)
  end

  def logo
    object.logo_url(:thumb)
  end

  def title
    object.name
  end

  def discountCategory
    object.discount_category_id.to_s
  end
end