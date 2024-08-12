require "application_system_test_case"

class GamesTest < ApplicationSystemTestCase
  test "visiting /new renders a new game" do
    visit new_url
    assert_selector "h1", text: "New Game"
    assert_selector "li", count: 10
  end

  test "submitting an invalid word gives an error message" do
    visit new_url
    fill_in "word", with: "ZZZ"
    click_on "Play"
    assert_text "can't be built"
  end
end
