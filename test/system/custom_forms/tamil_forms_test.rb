require "application_system_test_case"

class CustomForms::TamilFormsTest < ApplicationSystemTestCase
  setup do
    @custom_forms_tamil_form = custom_forms_tamil_forms(:one)
  end

  test "visiting the index" do
    visit custom_forms_tamil_forms_url
    assert_selector "h1", text: "Custom Forms/Tamil Forms"
  end

  test "creating a Tamil form" do
    visit custom_forms_tamil_forms_url
    click_on "New Custom Forms/Tamil Form"

    fill_in "District", with: @custom_forms_tamil_form.district
    fill_in "Dob", with: @custom_forms_tamil_form.dob
    fill_in "Email", with: @custom_forms_tamil_form.email
    fill_in "Name", with: @custom_forms_tamil_form.name
    fill_in "Pincode", with: @custom_forms_tamil_form.pincode
    fill_in "Place", with: @custom_forms_tamil_form.place
    click_on "Create Tamil form"

    assert_text "Tamil form was successfully created"
    click_on "Back"
  end

  test "updating a Tamil form" do
    visit custom_forms_tamil_forms_url
    click_on "Edit", match: :first

    fill_in "District", with: @custom_forms_tamil_form.district
    fill_in "Dob", with: @custom_forms_tamil_form.dob
    fill_in "Email", with: @custom_forms_tamil_form.email
    fill_in "Name", with: @custom_forms_tamil_form.name
    fill_in "Pincode", with: @custom_forms_tamil_form.pincode
    fill_in "Place", with: @custom_forms_tamil_form.place
    click_on "Update Tamil form"

    assert_text "Tamil form was successfully updated"
    click_on "Back"
  end

  test "destroying a Tamil form" do
    visit custom_forms_tamil_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tamil form was successfully destroyed"
  end
end
