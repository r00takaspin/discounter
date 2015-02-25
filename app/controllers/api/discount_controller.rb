class Api::DiscountController < ActionController::Base
  def category_list
    @categories = DiscountCategory.all
    render json: @categories.map {|x| {id:x.id.to_s,title: x.title,total_size:x.discounts.count.to_s}}.as_json, :root => "discountCategories"
  end

  def discounts
    result = []

    if params[:category_id]
      @discounts = Discount.where(discount_category_id: params[:category_id])
      @discounts.each_with_index { |x, idx|
        result << {
            id: x.id.to_s,
            title: x.name,
            image: x.image_url(:thumb),
            logo: x.logo_url(:thumb),
            big_image: x.big_image_url,
            discount: x.discount,
            color: x.color,
            old_price: x.old_price,
            new_price: x.new_price,
            text: x.text,
            next: @discounts[idx+1].nil? ? @discounts.first.id.to_s : @discounts[idx+1].id.to_s,
            prev: @discounts[idx-1].nil? ? @discounts.last.id.to_s : @discounts[idx-1].id.to_s,
            discountCategory: x.discount_category_id.to_s
        }
      }

      render json: result, :root => "discounts"
    else
      @discounts = Discount.all

      @discounts.each_with_index { |x, idx|
        result << {
            id: x.id.to_s,
            title: x.name,
            image: x.image_url(:thumb),
            logo: x.logo_url(:thumb),
            big_image: x.big_image_url,
            discount: x.discount,
            color: x.color,
            old_price: x.old_price,
            new_price: x.new_price,
            color: x.color,
            text: x.text,
            next: @discounts[idx+1].nil? ? @discounts.first.id.to_s : @discounts[idx+1].id.to_s,
            prev: @discounts[idx-1].nil? ? @discounts.last.id.to_s : @discounts[idx-1].id.to_s,
            discountCategory: x.discount_category_id.to_s
        }
      }

      render json: result, :root => "discounts"
    end
  end

  def find
    @discount = Discount.find(params[:discount_id])

    render json: [{
               id:@discount.id.to_s,
               title: @discount.name,
               image: @discount.image_url(:thumb),
               logo: @discount.logo_url(:thumb),
               big_image: @discount.big_image_url,
               discount: @discount.discount,
               color: @discount.color,
               old_price: @discount.old_price,
               new_price: @discount.new_price,
               text: @discount.text,
               discountCategory: @discount.discount_category_id.to_s
           }].as_json,:root=>"discounts"
  end
end