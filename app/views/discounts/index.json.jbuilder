json.array!(@discounts) do |discount|
  json.extract! discount, :id, :name, :discount, :promo, :old_price, :new_price, :picture, :image, :text, :color, :discount_category_id
  json.url discount_url(discount, format: :json)
end
