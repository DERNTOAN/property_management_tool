require "application_system_test_case"

class PropertiesTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit properties_url

    assert_selector "h1", text: "properties"
  end

  test "visiting the create-page" do
    visit root_url
    click_link('Create a new property')

    assert_selector "h1", text: "New"
  end

  test "lets a user add a new property" do
    visit "/properties/new"
    select 'House', from: 'property_property_type'
    fill_in "property_street", with: "Spanische Alle"
    fill_in "property_house_number", with: 79
    fill_in "property_zip_code", with: 14429
    fill_in "property_city", with: "Berlin"
    fill_in "property_living_space", with: 42
    fill_in "property_number_of_rooms", with: 2
    fill_in "property_number_of_rooms", with: 2

    click_on 'Submit'

    assert_equal properties_path, page.current_path
    assert_selector "h1", text: "properties"
  end

  test "does not create property if required value is missing" do
    visit "/properties/new"
    select 'House', from: 'property_property_type'
    fill_in "property_street", with: "Spanische Alle"
    fill_in "property_house_number", with: 79
    click_on 'Submit'

    assert_equal properties_path, page.current_path
    assert_selector "h1", text: "New Property"
  end

  test "advances a property to the next stage" do
    visit '/properties'
    first('.btn').click
    # check if stage has changed
  end
  # write another test for checking if stage can be reversed
  # write another test for checking if sold is last stage
end
