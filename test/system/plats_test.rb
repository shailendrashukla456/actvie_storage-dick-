require "application_system_test_case"

class PlatsTest < ApplicationSystemTestCase
  setup do
    @plat = plats(:one)
  end

  test "visiting the index" do
    visit plats_url
    assert_selector "h1", text: "Plats"
  end

  test "creating a Plat" do
    visit plats_url
    click_on "New Plat"

    fill_in "Age", with: @plat.age
    fill_in "Image", with: @plat.image
    fill_in "Name", with: @plat.name
    click_on "Create Plat"

    assert_text "Plat was successfully created"
    click_on "Back"
  end

  test "updating a Plat" do
    visit plats_url
    click_on "Edit", match: :first

    fill_in "Age", with: @plat.age
    fill_in "Image", with: @plat.image
    fill_in "Name", with: @plat.name
    click_on "Update Plat"

    assert_text "Plat was successfully updated"
    click_on "Back"
  end

  test "destroying a Plat" do
    visit plats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Plat was successfully destroyed"
  end
end
