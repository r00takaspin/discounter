json.array!(@discount_categories) do |discount_category|
  json.extract! discount_category, :id, :title
  json.url discount_category_url(discount_category, format: :json)
end
