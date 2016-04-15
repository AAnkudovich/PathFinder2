require 'test_helper'

class VansControllerTest < ActionController::TestCase
  setup do
    @van = vans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create van" do
    assert_difference('Van.count') do
      post :create, van: { regPlate: @van.regPlate }
    end

    assert_redirected_to van_path(assigns(:van))
  end

  test "should show van" do
    get :show, id: @van
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @van
    assert_response :success
  end

  test "should update van" do
    patch :update, id: @van, van: { regPlate: @van.regPlate }
    assert_redirected_to van_path(assigns(:van))
  end

  test "should destroy van" do
    assert_difference('Van.count', -1) do
      delete :destroy, id: @van
    end

    assert_redirected_to vans_path
  end
end
