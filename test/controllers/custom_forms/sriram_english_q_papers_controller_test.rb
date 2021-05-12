require 'test_helper'

class CustomForms::SriramEnglishQPapersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom_forms_sriram_english_q_paper = custom_forms_sriram_english_q_papers(:one)
  end

  test "should get index" do
    get custom_forms_sriram_english_q_papers_url
    assert_response :success
  end

  test "should get new" do
    get new_custom_forms_sriram_english_q_paper_url
    assert_response :success
  end

  test "should create custom_forms_sriram_english_q_paper" do
    assert_difference('CustomForms::SriramEnglishQPaper.count') do
      post custom_forms_sriram_english_q_papers_url, params: { custom_forms_sriram_english_q_paper: { Q1: @custom_forms_sriram_english_q_paper.Q1, Q2: @custom_forms_sriram_english_q_paper.Q2, Q3: @custom_forms_sriram_english_q_paper.Q3 } }
    end

    assert_redirected_to custom_forms_sriram_english_q_paper_url(CustomForms::SriramEnglishQPaper.last)
  end

  test "should show custom_forms_sriram_english_q_paper" do
    get custom_forms_sriram_english_q_paper_url(@custom_forms_sriram_english_q_paper)
    assert_response :success
  end

  test "should get edit" do
    get edit_custom_forms_sriram_english_q_paper_url(@custom_forms_sriram_english_q_paper)
    assert_response :success
  end

  test "should update custom_forms_sriram_english_q_paper" do
    patch custom_forms_sriram_english_q_paper_url(@custom_forms_sriram_english_q_paper), params: { custom_forms_sriram_english_q_paper: { Q1: @custom_forms_sriram_english_q_paper.Q1, Q2: @custom_forms_sriram_english_q_paper.Q2, Q3: @custom_forms_sriram_english_q_paper.Q3 } }
    assert_redirected_to custom_forms_sriram_english_q_paper_url(@custom_forms_sriram_english_q_paper)
  end

  test "should destroy custom_forms_sriram_english_q_paper" do
    assert_difference('CustomForms::SriramEnglishQPaper.count', -1) do
      delete custom_forms_sriram_english_q_paper_url(@custom_forms_sriram_english_q_paper)
    end

    assert_redirected_to custom_forms_sriram_english_q_papers_url
  end
end
