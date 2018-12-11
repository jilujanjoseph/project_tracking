require 'test_helper'

class EmployeesControllerTest < ActionController::TestCase
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post :create, employee: { address: @employee.address, date_of_joining: @employee.date_of_joining, email_id: @employee.email_id, emp_name: @employee.emp_name, employe_id: @employee.employe_id, pan_no: @employee.pan_no, passport_expry_date: @employee.passport_expry_date, passport_no: @employee.passport_no, phone_no: @employee.phone_no, user_id: @employee.user_id }
    end

    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should show employee" do
    get :show, id: @employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee
    assert_response :success
  end

  test "should update employee" do
    patch :update, id: @employee, employee: { address: @employee.address, date_of_joining: @employee.date_of_joining, email_id: @employee.email_id, emp_name: @employee.emp_name, employe_id: @employee.employe_id, pan_no: @employee.pan_no, passport_expry_date: @employee.passport_expry_date, passport_no: @employee.passport_no, phone_no: @employee.phone_no, user_id: @employee.user_id }
    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete :destroy, id: @employee
    end

    assert_redirected_to employees_path
  end
end
