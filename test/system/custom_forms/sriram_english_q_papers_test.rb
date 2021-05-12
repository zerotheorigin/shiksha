require "application_system_test_case"

class CustomForms::SriramEnglishQPapersTest < ApplicationSystemTestCase
  setup do
    @custom_forms_sriram_english_q_paper = custom_forms_sriram_english_q_papers(:one)
  end

  test "visiting the index" do
    visit custom_forms_sriram_english_q_papers_url
    assert_selector "h1", text: "Custom Forms/Sriram English Q Papers"
  end

  test "creating a Sriram english q paper" do
    visit custom_forms_sriram_english_q_papers_url
    click_on "New Custom Forms/Sriram English Q Paper"

    fill_in "Q1", with: @custom_forms_sriram_english_q_paper.Q1
    fill_in "Q2", with: @custom_forms_sriram_english_q_paper.Q2
    fill_in "Q3", with: @custom_forms_sriram_english_q_paper.Q3
    click_on "Create Sriram english q paper"

    assert_text "Sriram english q paper was successfully created"
    click_on "Back"
  end

  test "updating a Sriram english q paper" do
    visit custom_forms_sriram_english_q_papers_url
    click_on "Edit", match: :first

    fill_in "Q1", with: @custom_forms_sriram_english_q_paper.Q1
    fill_in "Q2", with: @custom_forms_sriram_english_q_paper.Q2
    fill_in "Q3", with: @custom_forms_sriram_english_q_paper.Q3
    click_on "Update Sriram english q paper"

    assert_text "Sriram english q paper was successfully updated"
    click_on "Back"
  end

  test "destroying a Sriram english q paper" do
    visit custom_forms_sriram_english_q_papers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sriram english q paper was successfully destroyed"
  end
end
