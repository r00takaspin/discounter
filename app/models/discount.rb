class Discount
  include Mongoid::Document
  include Mongoid::Timestamps
  include ActiveModel::Serialization

  field :name, type: String
  field :discount, type: String
  field :promo, type: Mongoid::Boolean
  field :old_price, type: String
  field :new_price, type: String

  field :big_image, type: String
  field :image, type: String
  field :logo, type: String

  field :text, type: String
  field :color, type: String
  field :discount_category_id, type: Integer

  belongs_to :discount_category, class_name: 'DiscountCategory'

  mount_uploader :image, DiscountBigPictureUploader
  mount_uploader :big_image, DiscountSmallPictureUploader
  mount_uploader :logo, DiscountSmallPictureUploader
end
