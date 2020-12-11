require "application_system_test_case"

class EmployeeEmailsTest < ApplicationSystemTestCase
  setup do
    @employee_email = employee_emails(:one)
  end

  test "visiting the index" do
    visit employee_emails_url
    assert_selector "h1", text: "Employee Emails"
  end

  test "creating a Employee email" do
    visit employee_emails_url
    click_on "New Employee Email"

    fill_in "Email", with: @employee_email.email
    fill_in "Employee", with: @employee_email.employee_id
    click_on "Create Employee email"

    assert_text "Employee email was successfully created"
    click_on "Back"
  end

  test "updating a Employee email" do
    visit employee_emails_url
    click_on "Edit", match: :first

    fill_in "Email", with: @employee_email.email
    fill_in "Employee", with: @employee_email.employee_id
    click_on "Update Employee email"

    assert_text "Employee email was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee email" do
    visit employee_emails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee email was successfully destroyed"
  end
end
