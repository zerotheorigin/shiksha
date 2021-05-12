require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get students_url
    assert_response :success
  end

  test "should get new" do
    get new_student_url
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post students_url, params: { student: { DOB: @student.DOB, DOJS: @student.DOJS, admission_no: @student.admission_no, city: @student.city, exam_reg_no: @student.exam_reg_no, father_mobile1: @student.father_mobile1, father_mobile2: @student.father_mobile2, father_name: @student.father_name, father_occupation: @student.father_occupation, father_qualification: @student.father_qualification, father_work_ph: @student.father_work_ph, first_name: @student.first_name, gender: @student.gender, last_name: @student.last_name, location: @student.location, mother_mobile1: @student.mother_mobile1, mother_mobile2: @student.mother_mobile2, mother_name: @student.mother_name, mother_occupation: @student.mother_occupation, mother_qualification: @student.mother_qualification, mother_work_ph: @student.mother_work_ph, parent_work_city: @student.parent_work_city, parent_work_location: @student.parent_work_location, parent_work_pincode: @student.parent_work_pincode, parent_work_street1: @student.parent_work_street1, parent_work_street2: @student.parent_work_street2, pincode: @student.pincode, section_id: @student.section_id, sibling1: @student.sibling1, sibling2: @student.sibling2, street1: @student.street1, street2: @student.street2 } }
    end

    assert_redirected_to student_url(Student.last)
  end

  test "should show student" do
    get student_url(@student)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_url(@student)
    assert_response :success
  end

  test "should update student" do
    patch student_url(@student), params: { student: { DOB: @student.DOB, DOJS: @student.DOJS, admission_no: @student.admission_no, city: @student.city, exam_reg_no: @student.exam_reg_no, father_mobile1: @student.father_mobile1, father_mobile2: @student.father_mobile2, father_name: @student.father_name, father_occupation: @student.father_occupation, father_qualification: @student.father_qualification, father_work_ph: @student.father_work_ph, first_name: @student.first_name, gender: @student.gender, last_name: @student.last_name, location: @student.location, mother_mobile1: @student.mother_mobile1, mother_mobile2: @student.mother_mobile2, mother_name: @student.mother_name, mother_occupation: @student.mother_occupation, mother_qualification: @student.mother_qualification, mother_work_ph: @student.mother_work_ph, parent_work_city: @student.parent_work_city, parent_work_location: @student.parent_work_location, parent_work_pincode: @student.parent_work_pincode, parent_work_street1: @student.parent_work_street1, parent_work_street2: @student.parent_work_street2, pincode: @student.pincode, section_id: @student.section_id, sibling1: @student.sibling1, sibling2: @student.sibling2, street1: @student.street1, street2: @student.street2 } }
    assert_redirected_to student_url(@student)
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete student_url(@student)
    end

    assert_redirected_to students_url
  end
end
