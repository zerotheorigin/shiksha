require "application_system_test_case"

class InfoletsTest < ApplicationSystemTestCase
  setup do
    @infolet = infolets(:one)
  end

  test "visiting the index" do
    visit infolets_url
    assert_selector "h1", text: "Infolets"
  end

  test "creating a Infolet" do
    visit infolets_url
    click_on "New Infolet"

    fill_in "Student", with: @infolet.student_id
    fill_in "Teacher", with: @infolet.teacher_id
    click_on "Create Infolet"

    assert_text "Infolet was successfully created"
    click_on "Back"
  end

  test "updating a Infolet" do
    visit infolets_url
    click_on "Edit", match: :first

    fill_in "Student", with: @infolet.student_id
    fill_in "Teacher", with: @infolet.teacher_id
    click_on "Update Infolet"

    assert_text "Infolet was successfully updated"
    click_on "Back"
  end

  test "destroying a Infolet" do
    visit infolets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Infolet was successfully destroyed"
  end
end
