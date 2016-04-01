require 'test_helper'

class PackingJobsControllerTest < ActionController::TestCase
  setup do
    @packing_job = packing_jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:packing_jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create packing_job" do
    assert_difference('PackingJob.count') do
      post :create, packing_job: { customer_id: @packing_job.customer_id, shoppingOrder_id: @packing_job.shoppingOrder_id }
    end

    assert_redirected_to packing_job_path(assigns(:packing_job))
  end

  test "should show packing_job" do
    get :show, id: @packing_job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @packing_job
    assert_response :success
  end

  test "should update packing_job" do
    patch :update, id: @packing_job, packing_job: { customer_id: @packing_job.customer_id, shoppingOrder_id: @packing_job.shoppingOrder_id }
    assert_redirected_to packing_job_path(assigns(:packing_job))
  end

  test "should destroy packing_job" do
    assert_difference('PackingJob.count', -1) do
      delete :destroy, id: @packing_job
    end

    assert_redirected_to packing_jobs_path
  end
end
