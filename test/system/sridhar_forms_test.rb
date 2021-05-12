require "application_system_test_case"

class SridharFormsTest < ApplicationSystemTestCase
  setup do
    @sridhar_form = sridhar_forms(:one)
  end

  test "visiting the index" do
    visit sridhar_forms_url
    assert_selector "h1", text: "Sridhar Forms"
  end

  test "creating a Sridhar form" do
    visit sridhar_forms_url
    click_on "New Sridhar Form"

    fill_in "Age", with: @sridhar_form.age
    fill_in "Designation", with: @sridhar_form.designation
    fill_in "Dob", with: @sridhar_form.dob
    fill_in "Doj", with: @sridhar_form.doj
    fill_in "Employer", with: @sridhar_form.employer
    fill_in "Name", with: @sridhar_form.name
    fill_in "Sex", with: @sridhar_form.sex
    click_on "Create Sridhar form"

    assert_text "Sridhar form was successfully created"
    click_on "Back"
  end

  test "updating a Sridhar form" do
    visit sridhar_forms_url
    click_on "Edit", match: :first

    fill_in "Age", with: @sridhar_form.age
    fill_in "Designation", with: @sridhar_form.designation
    fill_in "Dob", with: @sridhar_form.dob
    fill_in "Doj", with: @sridhar_form.doj
    fill_in "Employer", with: @sridhar_form.employer
    fill_in "Name", with: @sridhar_form.name
    fill_in "Sex", with: @sridhar_form.sex
    click_on "Update Sridhar form"

    assert_text "Sridhar form was successfully updated"
    click_on "Back"
  end

  test "destroying a Sridhar form" do
    visit sridhar_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sridhar form was successfully destroyed"
  end
end
