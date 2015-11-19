require 'test_helper'

class WingEmployeesControllerTest < ActionController::TestCase
  setup do
    @wing_employee = wing_employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wing_employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wing_employee" do
    assert_difference('WingEmployee.count') do
      post :create, wing_employee: { employee_id: @wing_employee.employee_id, wing_id: @wing_employee.wing_id }
    end

    assert_redirected_to wing_employee_path(assigns(:wing_employee))
  end

  test "should show wing_employee" do
    get :show, id: @wing_employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wing_employee
    assert_response :success
  end

  test "should update wing_employee" do
    patch :update, id: @wing_employee, wing_employee: { employee_id: @wing_employee.employee_id, wing_id: @wing_employee.wing_id }
    assert_redirected_to wing_employee_path(assigns(:wing_employee))
  end

  test "should destroy wing_employee" do
    assert_difference('WingEmployee.count', -1) do
      delete :destroy, id: @wing_employee
    end

    assert_redirected_to wing_employees_path
  end
end
