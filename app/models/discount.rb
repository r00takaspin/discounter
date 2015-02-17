class Discount
  include Mongoid::Document
  field :name, type: String
  field :discount, type: String
  field :promo, type: Mongoid::Boolean
  field :old_price, type: String
  field :new_price, type: String
  field :picture, type: String
  field :image, type: String
  field :text, type: String
  field :color, type: String
  field :discount_category_id, type: Integer

  belongs_to :discount_category, class_name: 'DiscountCategory'

  mount_uploader :image,DiscountSmallPictureUploader
end
