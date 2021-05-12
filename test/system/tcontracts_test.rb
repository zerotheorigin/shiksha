require "application_system_test_case"

class TcontractsTest < ApplicationSystemTestCase
  setup do
    @tcontract = tcontracts(:one)
  end

  test "visiting the index" do
    visit tcontracts_url
    assert_selector "h1", text: "Tcontracts"
  end

  test "creating a Tcontract" do
    visit tcontracts_url
    click_on "New Tcontract"

    fill_in "Subject", with: @tcontract.subject_id
    fill_in "Teacher", with: @tcontract.teacher_id
    click_on "Create Tcontract"

    assert_text "Tcontract was successfully created"
    click_on "Back"
  end

  test "updating a Tcontract" do
    visit tcontracts_url
    click_on "Edit", match: :first

    fill_in "Subject", with: @tcontract.subject_id
    fill_in "Teacher", with: @tcontract.teacher_id
    click_on "Update Tcontract"

    assert_text "Tcontract was successfully updated"
    click_on "Back"
  end

  test "destroying a Tcontract" do
    visit tcontracts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tcontract was successfully destroyed"
  end
end
