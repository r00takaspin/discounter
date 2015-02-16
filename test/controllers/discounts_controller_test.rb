require 'test_helper'

class DiscountsControllerTest < ActionController::TestCase
  setup do
    @discount = discounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:discounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create discount" do
    assert_difference('Discount.count') do
      post :create, discount: { color: @discount.color, discount: @discount.discount, discount_category_id: @discount.discount_category_id, image: @discount.image, name: @discount.name, new_price: @discount.new_price, old_price: @discount.old_price, picture: @discount.picture, promo: @discount.promo, text: @discount.text }
    end

    assert_redirected_to discount_path(assigns(:discount))
  end

  test "should show discount" do
    get :show, id: @discount
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @discount
    assert_response :success
  end

  test "should update discount" do
    patch :update, id: @discount, discount: { color: @discount.color, discount: @discount.discount, discount_category_id: @discount.discount_category_id, image: @discount.image, name: @discount.name, new_price: @discount.new_price, old_price: @discount.old_price, picture: @discount.picture, promo: @discount.promo, text: @discount.text }
    assert_redirected_to discount_path(assigns(:discount))
  end

  test "should destroy discount" do
    assert_difference('Discount.count', -1) do
      delete :destroy, id: @discount
    end

    assert_redirected_to discounts_path
  end
end
