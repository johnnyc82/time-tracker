require 'test_helper'

class TaskTimesControllerTest < ActionController::TestCase
  setup do
    @task_time = task_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:task_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task_time" do
    assert_difference('TaskTime.count') do
      post :create, task_time: { elapsed: @task_time.elapsed, estimated: @task_time.estimated, total: @task_time.total }
    end

    assert_redirected_to task_time_path(assigns(:task_time))
  end

  test "should show task_time" do
    get :show, id: @task_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task_time
    assert_response :success
  end

  test "should update task_time" do
    patch :update, id: @task_time, task_time: { elapsed: @task_time.elapsed, estimated: @task_time.estimated, total: @task_time.total }
    assert_redirected_to task_time_path(assigns(:task_time))
  end

  test "should destroy task_time" do
    assert_difference('TaskTime.count', -1) do
      delete :destroy, id: @task_time
    end

    assert_redirected_to task_times_path
  end
end
