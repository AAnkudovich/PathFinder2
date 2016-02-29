require 'test_helper'

class ShoppingOrdersControllerTest < ActionController::TestCase
  setup do
    @shopping_order = shopping_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shopping_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shopping_order" do
    assert_difference('ShoppingOrder.count') do
      post :create, shopping_order: { currentStatus: @shopping_order.currentStatus, customer_id: @shopping_order.customer_id, payMethod: @shopping_order.payMethod, total: @shopping_order.total }
    end

    assert_redirected_to shopping_order_path(assigns(:shopping_order))
  end

  test "should show shopping_order" do
    get :show, id: @shopping_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shopping_order
    assert_response :success
  end

  test "should update shopping_order" do
    patch :update, id: @shopping_order, shopping_order: { currentStatus: @shopping_order.currentStatus, customer_id: @shopping_order.customer_id, payMethod: @shopping_order.payMethod, total: @shopping_order.total }
    assert_redirected_to shopping_order_path(assigns(:shopping_order))
  end

  test "should destroy shopping_order" do
    assert_difference('ShoppingOrder.count', -1) do
      delete :destroy, id: @shopping_order
    end

    assert_redirected_to shopping_orders_path
  end
end
