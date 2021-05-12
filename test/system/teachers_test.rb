require "application_system_test_case"

class TeachersTest < ApplicationSystemTestCase
  setup do
    @teacher = teachers(:one)
  end

  test "visiting the index" do
    visit teachers_url
    assert_selector "h1", text: "Teachers"
  end

  test "creating a Teacher" do
    visit teachers_url
    click_on "New Teacher"

    fill_in "Dob", with: @teacher.DOB
    fill_in "Dojs", with: @teacher.DOJS
    fill_in "City", with: @teacher.city
    fill_in "Family mobile1", with: @teacher.family_mobile1
    fill_in "Family mobile2", with: @teacher.family_mobile2
    fill_in "Family work city", with: @teacher.family_work_city
    fill_in "Family work location", with: @teacher.family_work_location
    fill_in "Family work ph", with: @teacher.family_work_ph
    fill_in "Family work pincode", with: @teacher.family_work_pincode
    fill_in "Family work street1", with: @teacher.family_work_street1
    fill_in "Family work street2", with: @teacher.family_work_street2
    fill_in "First name", with: @teacher.first_name
    fill_in "Gender", with: @teacher.gender
    fill_in "Last name", with: @teacher.last_name
    fill_in "Location", with: @teacher.location
    fill_in "Pincode", with: @teacher.pincode
    fill_in "Qualification", with: @teacher.qualification
    fill_in "Staff no", with: @teacher.staff_no
    fill_in "Street1", with: @teacher.street1
    fill_in "Street2", with: @teacher.street2
    fill_in "Subject", with: @teacher.subject_id
    click_on "Create Teacher"

    assert_text "Teacher was successfully created"
    click_on "Back"
  end

  test "updating a Teacher" do
    visit teachers_url
    click_on "Edit", match: :first

    fill_in "Dob", with: @teacher.DOB
    fill_in "Dojs", with: @teacher.DOJS
    fill_in "City", with: @teacher.city
    fill_in "Family mobile1", with: @teacher.family_mobile1
    fill_in "Family mobile2", with: @teacher.family_mobile2
    fill_in "Family work city", with: @teacher.family_work_city
    fill_in "Family work location", with: @teacher.family_work_location
    fill_in "Family work ph", with: @teacher.family_work_ph
    fill_in "Family work pincode", with: @teacher.family_work_pincode
    fill_in "Family work street1", with: @teacher.family_work_street1
    fill_in "Family work street2", with: @teacher.family_work_street2
    fill_in "First name", with: @teacher.first_name
    fill_in "Gender", with: @teacher.gender
    fill_in "Last name", with: @teacher.last_name
    fill_in "Location", with: @teacher.location
    fill_in "Pincode", with: @teacher.pincode
    fill_in "Qualification", with: @teacher.qualification
    fill_in "Staff no", with: @teacher.staff_no
    fill_in "Street1", with: @teacher.street1
    fill_in "Street2", with: @teacher.street2
    fill_in "Subject", with: @teacher.subject_id
    click_on "Update Teacher"

    assert_text "Teacher was successfully updated"
    click_on "Back"
  end

  test "destroying a Teacher" do
    visit teachers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Teacher was successfully destroyed"
  end
end
