require 'test_helper'

class TeachersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teacher = teachers(:one)
  end

  test "should get index" do
    get teachers_url
    assert_response :success
  end

  test "should get new" do
    get new_teacher_url
    assert_response :success
  end

  test "should create teacher" do
    assert_difference('Teacher.count') do
      post teachers_url, params: { teacher: { DOB: @teacher.DOB, DOJS: @teacher.DOJS, city: @teacher.city, family_mobile1: @teacher.family_mobile1, family_mobile2: @teacher.family_mobile2, family_work_city: @teacher.family_work_city, family_work_location: @teacher.family_work_location, family_work_ph: @teacher.family_work_ph, family_work_pincode: @teacher.family_work_pincode, family_work_street1: @teacher.family_work_street1, family_work_street2: @teacher.family_work_street2, first_name: @teacher.first_name, gender: @teacher.gender, last_name: @teacher.last_name, location: @teacher.location, pincode: @teacher.pincode, qualification: @teacher.qualification, staff_no: @teacher.staff_no, street1: @teacher.street1, street2: @teacher.street2, subject_id: @teacher.subject_id } }
    end

    assert_redirected_to teacher_url(Teacher.last)
  end

  test "should show teacher" do
    get teacher_url(@teacher)
    assert_response :success
  end

  test "should get edit" do
    get edit_teacher_url(@teacher)
    assert_response :success
  end

  test "should update teacher" do
    patch teacher_url(@teacher), params: { teacher: { DOB: @teacher.DOB, DOJS: @teacher.DOJS, city: @teacher.city, family_mobile1: @teacher.family_mobile1, family_mobile2: @teacher.family_mobile2, family_work_city: @teacher.family_work_city, family_work_location: @teacher.family_work_location, family_work_ph: @teacher.family_work_ph, family_work_pincode: @teacher.family_work_pincode, family_work_street1: @teacher.family_work_street1, family_work_street2: @teacher.family_work_street2, first_name: @teacher.first_name, gender: @teacher.gender, last_name: @teacher.last_name, location: @teacher.location, pincode: @teacher.pincode, qualification: @teacher.qualification, staff_no: @teacher.staff_no, street1: @teacher.street1, street2: @teacher.street2, subject_id: @teacher.subject_id } }
    assert_redirected_to teacher_url(@teacher)
  end

  test "should destroy teacher" do
    assert_difference('Teacher.count', -1) do
      delete teacher_url(@teacher)
    end

    assert_redirected_to teachers_url
  end
end
