require "application_system_test_case"

class SundarFormsTest < ApplicationSystemTestCase
  setup do
    @sundar_form = sundar_forms(:one)
  end

  test "visiting the index" do
    visit sundar_forms_url
    assert_selector "h1", text: "Sundar Forms"
  end

  test "creating a Sundar form" do
    visit sundar_forms_url
    click_on "New Sundar Form"

    fill_in "Address", with: @sundar_form.address
    fill_in "Age", with: @sundar_form.age
    fill_in "Name", with: @sundar_form.name
    fill_in "Profile", with: @sundar_form.profile
    click_on "Create Sundar form"

    assert_text "Sundar form was successfully created"
    click_on "Back"
  end

  test "updating a Sundar form" do
    visit sundar_forms_url
    click_on "Edit", match: :first

    fill_in "Address", with: @sundar_form.address
    fill_in "Age", with: @sundar_form.age
    fill_in "Name", with: @sundar_form.name
    fill_in "Profile", with: @sundar_form.profile
    click_on "Update Sundar form"

    assert_text "Sundar form was successfully updated"
    click_on "Back"
  end

  test "destroying a Sundar form" do
    visit sundar_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sundar form was successfully destroyed"
  end
end
