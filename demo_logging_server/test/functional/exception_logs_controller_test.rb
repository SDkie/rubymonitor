require 'test_helper'

class ExceptionLogsControllerTest < ActionController::TestCase
  setup do
    @exception_log = exception_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exception_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exception_log" do
    assert_difference('ExceptionLog.count') do
      post :create, exception_log: { Message: @exception_log.Message, Parameters: @exception_log.Parameters, URL: @exception_log.URL, backtrace: @exception_log.backtrace, count: @exception_log.count, time_stamp: @exception_log.time_stamp }
    end

    assert_redirected_to exception_log_path(assigns(:exception_log))
  end

  test "should show exception_log" do
    get :show, id: @exception_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exception_log
    assert_response :success
  end

  test "should update exception_log" do
    put :update, id: @exception_log, exception_log: { Message: @exception_log.Message, Parameters: @exception_log.Parameters, URL: @exception_log.URL, backtrace: @exception_log.backtrace, count: @exception_log.count, time_stamp: @exception_log.time_stamp }
    assert_redirected_to exception_log_path(assigns(:exception_log))
  end

  test "should destroy exception_log" do
    assert_difference('ExceptionLog.count', -1) do
      delete :destroy, id: @exception_log
    end

    assert_redirected_to exception_logs_path
  end
end
