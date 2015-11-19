require 'test_helper'

class MeetingEmployeesControllerTest < ActionController::TestCase
  setup do
    @meeting_employee = meeting_employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meeting_employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meeting_employee" do
    assert_difference('MeetingEmployee.count') do
      post :create, meeting_employee: { employee_id: @meeting_employee.employee_id, meeting_id: @meeting_employee.meeting_id }
    end

    assert_redirected_to meeting_employee_path(assigns(:meeting_employee))
  end

  test "should show meeting_employee" do
    get :show, id: @meeting_employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meeting_employee
    assert_response :success
  end

  test "should update meeting_employee" do
    patch :update, id: @meeting_employee, meeting_employee: { employee_id: @meeting_employee.employee_id, meeting_id: @meeting_employee.meeting_id }
    assert_redirected_to meeting_employee_path(assigns(:meeting_employee))
  end

  test "should destroy meeting_employee" do
    assert_difference('MeetingEmployee.count', -1) do
      delete :destroy, id: @meeting_employee
    end

    assert_redirected_to meeting_employees_path
  end
end
