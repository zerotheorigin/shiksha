require "application_system_test_case"

class Uma849Form5sTest < ApplicationSystemTestCase
  setup do
    @uma849_form5 = uma849_form5s(:one)
  end

  test "visiting the index" do
    visit uma849_form5s_url
    assert_selector "h1", text: "Uma849 Form5s"
  end

  test "creating a Uma849 form5" do
    visit uma849_form5s_url
    click_on "New Uma849 Form5"

    fill_in "Age", with: @uma849_form5.age
    fill_in "Name", with: @uma849_form5.name
    fill_in "Sex", with: @uma849_form5.sex
    click_on "Create Uma849 form5"

    assert_text "Uma849 form5 was successfully created"
    click_on "Back"
  end

  test "updating a Uma849 form5" do
    visit uma849_form5s_url
    click_on "Edit", match: :first

    fill_in "Age", with: @uma849_form5.age
    fill_in "Name", with: @uma849_form5.name
    fill_in "Sex", with: @uma849_form5.sex
    click_on "Update Uma849 form5"

    assert_text "Uma849 form5 was successfully updated"
    click_on "Back"
  end

  test "destroying a Uma849 form5" do
    visit uma849_form5s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Uma849 form5 was successfully destroyed"
  end
end
