require "application_system_test_case"

class SubjectsTest < ApplicationSystemTestCase
  setup do
    @subject = subjects(:one)
  end

  test "visiting the index" do
    visit subjects_url
    assert_selector "h1", text: "Subjects"
  end

  test "creating a Subject" do
    visit subjects_url
    click_on "New Subject"

    fill_in "Ay end", with: @subject.ay_end
    fill_in "Ay start", with: @subject.ay_start
    fill_in "Section", with: @subject.section_id
    fill_in "Sub name", with: @subject.sub_name
    fill_in "Syllabus", with: @subject.syllabus
    click_on "Create Subject"

    assert_text "Subject was successfully created"
    click_on "Back"
  end

  test "updating a Subject" do
    visit subjects_url
    click_on "Edit", match: :first

    fill_in "Ay end", with: @subject.ay_end
    fill_in "Ay start", with: @subject.ay_start
    fill_in "Section", with: @subject.section_id
    fill_in "Sub name", with: @subject.sub_name
    fill_in "Syllabus", with: @subject.syllabus
    click_on "Update Subject"

    assert_text "Subject was successfully updated"
    click_on "Back"
  end

  test "destroying a Subject" do
    visit subjects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subject was successfully destroyed"
  end
end
