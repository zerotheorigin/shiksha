require "application_system_test_case"

class CustomForms::SundarForm2sTest < ApplicationSystemTestCase
  setup do
    @custom_forms_sundar_form2 = custom_forms_sundar_form2s(:one)
  end

  test "visiting the index" do
    visit custom_forms_sundar_form2s_url
    assert_selector "h1", text: "Custom Forms/Sundar Form2s"
  end

  test "creating a Sundar form2" do
    visit custom_forms_sundar_form2s_url
    click_on "New Custom Forms/Sundar Form2"

    fill_in "Age", with: @custom_forms_sundar_form2.age
    fill_in "Email", with: @custom_forms_sundar_form2.email
    fill_in "Name", with: @custom_forms_sundar_form2.name
    click_on "Create Sundar form2"

    assert_text "Sundar form2 was successfully created"
    click_on "Back"
  end

  test "updating a Sundar form2" do
    visit custom_forms_sundar_form2s_url
    click_on "Edit", match: :first

    fill_in "Age", with: @custom_forms_sundar_form2.age
    fill_in "Email", with: @custom_forms_sundar_form2.email
    fill_in "Name", with: @custom_forms_sundar_form2.name
    click_on "Update Sundar form2"

    assert_text "Sundar form2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Sundar form2" do
    visit custom_forms_sundar_form2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sundar form2 was successfully destroyed"
  end
end
