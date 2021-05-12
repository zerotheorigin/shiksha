require "application_system_test_case"

class CustomForms::SaratDemo1FormsTest < ApplicationSystemTestCase
  setup do
    @custom_forms_sarat_demo_1_form = custom_forms_sarat_demo_1_forms(:one)
  end

  test "visiting the index" do
    visit custom_forms_sarat_demo_1_forms_url
    assert_selector "h1", text: "Custom Forms/Sarat Demo1 Forms"
  end

  test "creating a Sarat demo 1 form" do
    visit custom_forms_sarat_demo_1_forms_url
    click_on "New Custom Forms/Sarat Demo1 Form"

    fill_in "Q1", with: @custom_forms_sarat_demo_1_form.Q1
    fill_in "Q2", with: @custom_forms_sarat_demo_1_form.Q2
    fill_in "Q3", with: @custom_forms_sarat_demo_1_form.Q3
    fill_in "Q4", with: @custom_forms_sarat_demo_1_form.Q4
    click_on "Create Sarat demo 1 form"

    assert_text "Sarat demo 1 form was successfully created"
    click_on "Back"
  end

  test "updating a Sarat demo 1 form" do
    visit custom_forms_sarat_demo_1_forms_url
    click_on "Edit", match: :first

    fill_in "Q1", with: @custom_forms_sarat_demo_1_form.Q1
    fill_in "Q2", with: @custom_forms_sarat_demo_1_form.Q2
    fill_in "Q3", with: @custom_forms_sarat_demo_1_form.Q3
    fill_in "Q4", with: @custom_forms_sarat_demo_1_form.Q4
    click_on "Update Sarat demo 1 form"

    assert_text "Sarat demo 1 form was successfully updated"
    click_on "Back"
  end

  test "destroying a Sarat demo 1 form" do
    visit custom_forms_sarat_demo_1_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sarat demo 1 form was successfully destroyed"
  end
end
