require "application_system_test_case"

class CustomForms::AdmissionFormsTest < ApplicationSystemTestCase
  setup do
    @custom_forms_admission_form = custom_forms_admission_forms(:one)
  end

  test "visiting the index" do
    visit custom_forms_admission_forms_url
    assert_selector "h1", text: "Custom Forms/Admission Forms"
  end

  test "creating a Admission form" do
    visit custom_forms_admission_forms_url
    click_on "New Custom Forms/Admission Form"

    fill_in "Address", with: @custom_forms_admission_form.address
    fill_in "Age", with: @custom_forms_admission_form.age
    fill_in "Dob", with: @custom_forms_admission_form.dob
    fill_in "Fathers name", with: @custom_forms_admission_form.fathers_name
    fill_in "Gender", with: @custom_forms_admission_form.gender
    fill_in "Name", with: @custom_forms_admission_form.name
    fill_in "Phone no", with: @custom_forms_admission_form.phone_no
    click_on "Create Admission form"

    assert_text "Admission form was successfully created"
    click_on "Back"
  end

  test "updating a Admission form" do
    visit custom_forms_admission_forms_url
    click_on "Edit", match: :first

    fill_in "Address", with: @custom_forms_admission_form.address
    fill_in "Age", with: @custom_forms_admission_form.age
    fill_in "Dob", with: @custom_forms_admission_form.dob
    fill_in "Fathers name", with: @custom_forms_admission_form.fathers_name
    fill_in "Gender", with: @custom_forms_admission_form.gender
    fill_in "Name", with: @custom_forms_admission_form.name
    fill_in "Phone no", with: @custom_forms_admission_form.phone_no
    click_on "Update Admission form"

    assert_text "Admission form was successfully updated"
    click_on "Back"
  end

  test "destroying a Admission form" do
    visit custom_forms_admission_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Admission form was successfully destroyed"
  end
end
