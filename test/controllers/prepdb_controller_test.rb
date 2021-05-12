require 'test_helper'

class PrepdbControllerTest < ActionDispatch::IntegrationTest
  test "should get school" do
    get prepdb_school_url
    assert_response :success
  end

  test "should get section" do
    get prepdb_section_url
    assert_response :success
  end

  test "should get subject" do
    get prepdb_subject_url
    assert_response :success
  end

  test "should get teacher" do
    get prepdb_teacher_url
    assert_response :success
  end

  test "should get student" do
    get prepdb_student_url
    assert_response :success
  end

end
