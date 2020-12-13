require 'test_helper'

class EmployeeEmailsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @employee_email = employee_emails(:one)
    @employee = employees(:one)
    @user = users(:one)
    sign_in @user
  end

  test "should get index" do
    get employee_emails_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_email_url
    assert_response :success
  end

  test "should create employee_email" do
    assert_difference('EmployeeEmail.count') do
      post employee_emails_url, params: { employee_email: { email: @employee_email.email + "create", employee_id: @employee.id } }
    end

    assert_redirected_to employee_email_url(EmployeeEmail.last)
  end

  test "should show employee_email" do
    get employee_email_url(@employee_email)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_email_url(@employee_email)
    assert_response :success
  end

  test "should update employee_email" do
    patch employee_email_url(@employee_email), params: { employee_email: { email: @employee_email.email, employee_id: @employee.id } }
    assert_redirected_to employee_email_url(@employee_email)
  end

  test "should destroy employee_email" do
    assert_difference('EmployeeEmail.count', -1) do
      delete employee_email_url(@employee_email)
    end

    assert_redirected_to employee_emails_url
  end
end
