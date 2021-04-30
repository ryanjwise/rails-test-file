require "application_system_test_case"

class ScaffsTest < ApplicationSystemTestCase
  setup do
    @scaff = scaffs(:one)
  end

  test "visiting the index" do
    visit scaffs_url
    assert_selector "h1", text: "Scaffs"
  end

  test "creating a Scaff" do
    visit scaffs_url
    click_on "New Scaff"

    fill_in "Description", with: @scaff.description
    fill_in "Name", with: @scaff.name
    fill_in "Price", with: @scaff.price
    click_on "Create Scaff"

    assert_text "Scaff was successfully created"
    click_on "Back"
  end

  test "updating a Scaff" do
    visit scaffs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @scaff.description
    fill_in "Name", with: @scaff.name
    fill_in "Price", with: @scaff.price
    click_on "Update Scaff"

    assert_text "Scaff was successfully updated"
    click_on "Back"
  end

  test "destroying a Scaff" do
    visit scaffs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Scaff was successfully destroyed"
  end
end
