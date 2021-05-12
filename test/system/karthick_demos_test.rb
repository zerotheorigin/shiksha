require "application_system_test_case"

class KarthickDemosTest < ApplicationSystemTestCase
  setup do
    @karthick_demo = karthick_demos(:one)
  end

  test "visiting the index" do
    visit karthick_demos_url
    assert_selector "h1", text: "Karthick Demos"
  end

  test "creating a Karthick demo" do
    visit karthick_demos_url
    click_on "New Karthick Demo"

    fill_in "Age", with: @karthick_demo.age
    fill_in "Gender", with: @karthick_demo.gender
    fill_in "Hobbies", with: @karthick_demo.hobbies
    fill_in "Interests", with: @karthick_demo.interests
    fill_in "Name", with: @karthick_demo.name
    fill_in "Skills", with: @karthick_demo.skills
    click_on "Create Karthick demo"

    assert_text "Karthick demo was successfully created"
    click_on "Back"
  end

  test "updating a Karthick demo" do
    visit karthick_demos_url
    click_on "Edit", match: :first

    fill_in "Age", with: @karthick_demo.age
    fill_in "Gender", with: @karthick_demo.gender
    fill_in "Hobbies", with: @karthick_demo.hobbies
    fill_in "Interests", with: @karthick_demo.interests
    fill_in "Name", with: @karthick_demo.name
    fill_in "Skills", with: @karthick_demo.skills
    click_on "Update Karthick demo"

    assert_text "Karthick demo was successfully updated"
    click_on "Back"
  end

  test "destroying a Karthick demo" do
    visit karthick_demos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Karthick demo was successfully destroyed"
  end
end
