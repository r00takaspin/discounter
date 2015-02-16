require 'test_helper'

class DiscountCategoriesControllerTest < ActionController::TestCase
  setup do
    @discount_category = discount_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:discount_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create discount_category" do
    assert_difference('DiscountCategory.count') do
      post :create, discount_category: { name: @discount_category.name }
    end

    assert_redirected_to discount_category_path(assigns(:discount_category))
  end

  test "should show discount_category" do
    get :show, id: @discount_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @discount_category
    assert_response :success
  end

  test "should update discount_category" do
    patch :update, id: @discount_category, discount_category: { name: @discount_category.name }
    assert_redirected_to discount_category_path(assigns(:discount_category))
  end

  test "should destroy discount_category" do
    assert_difference('DiscountCategory.count', -1) do
      delete :destroy, id: @discount_category
    end

    assert_redirected_to discount_categories_path
  end
end
