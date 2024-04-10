require "application_system_test_case"

class StockEntriesTest < ApplicationSystemTestCase
  setup do
    @stock_entry = stock_entries(:one)
  end

  test "visiting the index" do
    visit stock_entries_url
    assert_selector "h1", text: "Stock entries"
  end

  test "should create stock entry" do
    visit stock_entries_url
    click_on "New stock entry"

    fill_in "Location", with: @stock_entry.location
    fill_in "Quantity", with: @stock_entry.quantity
    click_on "Create Stock entry"

    assert_text "Stock entry was successfully created"
    click_on "Back"
  end

  test "should update Stock entry" do
    visit stock_entry_url(@stock_entry)
    click_on "Edit this stock entry", match: :first

    fill_in "Location", with: @stock_entry.location
    fill_in "Quantity", with: @stock_entry.quantity
    click_on "Update Stock entry"

    assert_text "Stock entry was successfully updated"
    click_on "Back"
  end

  test "should destroy Stock entry" do
    visit stock_entry_url(@stock_entry)
    click_on "Destroy this stock entry", match: :first

    assert_text "Stock entry was successfully destroyed"
  end
end
