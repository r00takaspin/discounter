class Api::DiscountController < ActionController::Base
  def discount_categories
    @categories = DiscountCategory.all
    render json: @categories.map {|x| {id:x.id,title: x.title}}.as_json, :root => "discountCategories"
  end

  def discounts
    @disocunts = Discount.all

    render json: @disocunts.map {|x| {
               id:x.id,
               title: x.name,
               #image: x.image_url(:thumb),
               image: request.protocol + request.host_with_port + x.image_url(:thumb),
               discount: x.discount,
               color: x.color,
               old_price: x.old_price,
               new_price: x.new_price,
               discountCategory: x.discount_category_id
           }}.as_json, :root => "discounts"
  end
end