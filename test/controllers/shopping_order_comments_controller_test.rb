require 'test_helper'

class ShoppingOrderCommentsControllerTest < ActionController::TestCase
  setup do
    @shopping_order_comment = shopping_order_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shopping_order_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shopping_order_comment" do
    assert_difference('ShoppingOrderComment.count') do
      post :create, shopping_order_comment: { deliveryRating: @shopping_order_comment.deliveryRating, message: @shopping_order_comment.message, packingRating: @shopping_order_comment.packingRating, packingRating: @shopping_order_comment.packingRating, shoppingOrderID: @shopping_order_comment.shoppingOrderID, userID: @shopping_order_comment.userID }
    end

    assert_redirected_to shopping_order_comment_path(assigns(:shopping_order_comment))
  end

  test "should show shopping_order_comment" do
    get :show, id: @shopping_order_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shopping_order_comment
    assert_response :success
  end

  test "should update shopping_order_comment" do
    patch :update, id: @shopping_order_comment, shopping_order_comment: { deliveryRating: @shopping_order_comment.deliveryRating, message: @shopping_order_comment.message, packingRating: @shopping_order_comment.packingRating, packingRating: @shopping_order_comment.packingRating, shoppingOrderID: @shopping_order_comment.shoppingOrderID, userID: @shopping_order_comment.userID }
    assert_redirected_to shopping_order_comment_path(assigns(:shopping_order_comment))
  end

  test "should destroy shopping_order_comment" do
    assert_difference('ShoppingOrderComment.count', -1) do
      delete :destroy, id: @shopping_order_comment
    end

    assert_redirected_to shopping_order_comments_path
  end
end
