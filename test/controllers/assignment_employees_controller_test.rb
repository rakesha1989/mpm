require 'test_helper'

class AssignmentEmployeesControllerTest < ActionController::TestCase
  setup do
    @assignment_employee = assignment_employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assignment_employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assignment_employee" do
    assert_difference('AssignmentEmployee.count') do
      post :create, assignment_employee: { assignmnet_id: @assignment_employee.assignmnet_id, employee_id: @assignment_employee.employee_id }
    end

    assert_redirected_to assignment_employee_path(assigns(:assignment_employee))
  end

  test "should show assignment_employee" do
    get :show, id: @assignment_employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assignment_employee
    assert_response :success
  end

  test "should update assignment_employee" do
    patch :update, id: @assignment_employee, assignment_employee: { assignmnet_id: @assignment_employee.assignmnet_id, employee_id: @assignment_employee.employee_id }
    assert_redirected_to assignment_employee_path(assigns(:assignment_employee))
  end

  test "should destroy assignment_employee" do
    assert_difference('AssignmentEmployee.count', -1) do
      delete :destroy, id: @assignment_employee
    end

    assert_redirected_to assignment_employees_path
  end
end
