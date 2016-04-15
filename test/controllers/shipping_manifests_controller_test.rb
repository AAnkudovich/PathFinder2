require 'test_helper'

class ShippingManifestsControllerTest < ActionController::TestCase
  setup do
    @shipping_manifest = shipping_manifests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shipping_manifests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shipping_manifest" do
    assert_difference('ShippingManifest.count') do
      post :create, shipping_manifest: { dateOut: @shipping_manifest.dateOut, shippingStatus: @shipping_manifest.shippingStatus, shoppingOrder_id: @shipping_manifest.shoppingOrder_id, vanID: @shipping_manifest.vanID }
    end

    assert_redirected_to shipping_manifest_path(assigns(:shipping_manifest))
  end

  test "should show shipping_manifest" do
    get :show, id: @shipping_manifest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shipping_manifest
    assert_response :success
  end

  test "should update shipping_manifest" do
    patch :update, id: @shipping_manifest, shipping_manifest: { dateOut: @shipping_manifest.dateOut, shippingStatus: @shipping_manifest.shippingStatus, shoppingOrder_id: @shipping_manifest.shoppingOrder_id, vanID: @shipping_manifest.vanID }
    assert_redirected_to shipping_manifest_path(assigns(:shipping_manifest))
  end

  test "should destroy shipping_manifest" do
    assert_difference('ShippingManifest.count', -1) do
      delete :destroy, id: @shipping_manifest
    end

    assert_redirected_to shipping_manifests_path
  end
end
