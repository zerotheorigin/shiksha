require "application_system_test_case"

class CustomForms::KannanFormsTest < ApplicationSystemTestCase
  setup do
    @custom_forms_kannan_form = custom_forms_kannan_forms(:one)
  end

  test "visiting the index" do
    visit custom_forms_kannan_forms_url
    assert_selector "h1", text: "Custom Forms/Kannan Forms"
  end

  test "creating a Kannan form" do
    visit custom_forms_kannan_forms_url
    click_on "New Custom Forms/Kannan Form"

    fill_in "Question1", with: @custom_forms_kannan_form.question1
    fill_in "Question2", with: @custom_forms_kannan_form.question2
    click_on "Create Kannan form"

    assert_text "Kannan form was successfully created"
    click_on "Back"
  end

  test "updating a Kannan form" do
    visit custom_forms_kannan_forms_url
    click_on "Edit", match: :first

    fill_in "Question1", with: @custom_forms_kannan_form.question1
    fill_in "Question2", with: @custom_forms_kannan_form.question2
    click_on "Update Kannan form"

    assert_text "Kannan form was successfully updated"
    click_on "Back"
  end

  test "destroying a Kannan form" do
    visit custom_forms_kannan_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kannan form was successfully destroyed"
  end
end
