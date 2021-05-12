require 'test_helper'

class TcontractsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tcontract = tcontracts(:one)
  end

  test "should get index" do
    get tcontracts_url
    assert_response :success
  end

  test "should get new" do
    get new_tcontract_url
    assert_response :success
  end

  test "should create tcontract" do
    assert_difference('Tcontract.count') do
      post tcontracts_url, params: { tcontract: { subject_id: @tcontract.subject_id, teacher_id: @tcontract.teacher_id } }
    end

    assert_redirected_to tcontract_url(Tcontract.last)
  end

  test "should show tcontract" do
    get tcontract_url(@tcontract)
    assert_response :success
  end

  test "should get edit" do
    get edit_tcontract_url(@tcontract)
    assert_response :success
  end

  test "should update tcontract" do
    patch tcontract_url(@tcontract), params: { tcontract: { subject_id: @tcontract.subject_id, teacher_id: @tcontract.teacher_id } }
    assert_redirected_to tcontract_url(@tcontract)
  end

  test "should destroy tcontract" do
    assert_difference('Tcontract.count', -1) do
      delete tcontract_url(@tcontract)
    end

    assert_redirected_to tcontracts_url
  end
end
