require "application_system_test_case"

class GokulDemosTest < ApplicationSystemTestCase
  setup do
    @gokul_demo = gokul_demos(:one)
  end

  test "visiting the index" do
    visit gokul_demos_url
    assert_selector "h1", text: "Gokul Demos"
  end

  test "creating a Gokul demo" do
    visit gokul_demos_url
    click_on "New Gokul Demo"

    fill_in "Designation", with: @gokul_demo.designation
    fill_in "Employee no", with: @gokul_demo.employee_no
    fill_in "Name", with: @gokul_demo.name
    click_on "Create Gokul demo"

    assert_text "Gokul demo was successfully created"
    click_on "Back"
  end

  test "updating a Gokul demo" do
    visit gokul_demos_url
    click_on "Edit", match: :first

    fill_in "Designation", with: @gokul_demo.designation
    fill_in "Employee no", with: @gokul_demo.employee_no
    fill_in "Name", with: @gokul_demo.name
    click_on "Update Gokul demo"

    assert_text "Gokul demo was successfully updated"
    click_on "Back"
  end

  test "destroying a Gokul demo" do
    visit gokul_demos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gokul demo was successfully destroyed"
  end
end
