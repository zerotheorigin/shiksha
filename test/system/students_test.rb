require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "creating a Student" do
    visit students_url
    click_on "New Student"

    fill_in "Dob", with: @student.DOB
    fill_in "Dojs", with: @student.DOJS
    fill_in "Admission no", with: @student.admission_no
    fill_in "City", with: @student.city
    fill_in "Exam reg no", with: @student.exam_reg_no
    fill_in "Father mobile1", with: @student.father_mobile1
    fill_in "Father mobile2", with: @student.father_mobile2
    fill_in "Father name", with: @student.father_name
    fill_in "Father occupation", with: @student.father_occupation
    fill_in "Father qualification", with: @student.father_qualification
    fill_in "Father work ph", with: @student.father_work_ph
    fill_in "First name", with: @student.first_name
    fill_in "Gender", with: @student.gender
    fill_in "Last name", with: @student.last_name
    fill_in "Location", with: @student.location
    fill_in "Mother mobile1", with: @student.mother_mobile1
    fill_in "Mother mobile2", with: @student.mother_mobile2
    fill_in "Mother name", with: @student.mother_name
    fill_in "Mother occupation", with: @student.mother_occupation
    fill_in "Mother qualification", with: @student.mother_qualification
    fill_in "Mother work ph", with: @student.mother_work_ph
    fill_in "Parent work city", with: @student.parent_work_city
    fill_in "Parent work location", with: @student.parent_work_location
    fill_in "Parent work pincode", with: @student.parent_work_pincode
    fill_in "Parent work street1", with: @student.parent_work_street1
    fill_in "Parent work street2", with: @student.parent_work_street2
    fill_in "Pincode", with: @student.pincode
    fill_in "Section", with: @student.section_id
    fill_in "Sibling1", with: @student.sibling1
    fill_in "Sibling2", with: @student.sibling2
    fill_in "Street1", with: @student.street1
    fill_in "Street2", with: @student.street2
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "updating a Student" do
    visit students_url
    click_on "Edit", match: :first

    fill_in "Dob", with: @student.DOB
    fill_in "Dojs", with: @student.DOJS
    fill_in "Admission no", with: @student.admission_no
    fill_in "City", with: @student.city
    fill_in "Exam reg no", with: @student.exam_reg_no
    fill_in "Father mobile1", with: @student.father_mobile1
    fill_in "Father mobile2", with: @student.father_mobile2
    fill_in "Father name", with: @student.father_name
    fill_in "Father occupation", with: @student.father_occupation
    fill_in "Father qualification", with: @student.father_qualification
    fill_in "Father work ph", with: @student.father_work_ph
    fill_in "First name", with: @student.first_name
    fill_in "Gender", with: @student.gender
    fill_in "Last name", with: @student.last_name
    fill_in "Location", with: @student.location
    fill_in "Mother mobile1", with: @student.mother_mobile1
    fill_in "Mother mobile2", with: @student.mother_mobile2
    fill_in "Mother name", with: @student.mother_name
    fill_in "Mother occupation", with: @student.mother_occupation
    fill_in "Mother qualification", with: @student.mother_qualification
    fill_in "Mother work ph", with: @student.mother_work_ph
    fill_in "Parent work city", with: @student.parent_work_city
    fill_in "Parent work location", with: @student.parent_work_location
    fill_in "Parent work pincode", with: @student.parent_work_pincode
    fill_in "Parent work street1", with: @student.parent_work_street1
    fill_in "Parent work street2", with: @student.parent_work_street2
    fill_in "Pincode", with: @student.pincode
    fill_in "Section", with: @student.section_id
    fill_in "Sibling1", with: @student.sibling1
    fill_in "Sibling2", with: @student.sibling2
    fill_in "Street1", with: @student.street1
    fill_in "Street2", with: @student.street2
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "destroying a Student" do
    visit students_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student was successfully destroyed"
  end
end
