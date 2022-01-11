require "application_system_test_case"

class ScoreboardsTest < ApplicationSystemTestCase
  setup do
    @scoreboard = scoreboards(:one)
  end

  test "visiting the index" do
    visit scoreboards_url
    assert_selector "h1", text: "Scoreboards"
  end

  test "should create scoreboard" do
    visit scoreboards_url
    click_on "New scoreboard"

    click_on "Create Scoreboard"

    assert_text "Scoreboard was successfully created"
    click_on "Back"
  end

  test "should update Scoreboard" do
    visit scoreboard_url(@scoreboard)
    click_on "Edit this scoreboard", match: :first

    click_on "Update Scoreboard"

    assert_text "Scoreboard was successfully updated"
    click_on "Back"
  end

  test "should destroy Scoreboard" do
    visit scoreboard_url(@scoreboard)
    click_on "Destroy this scoreboard", match: :first

    assert_text "Scoreboard was successfully destroyed"
  end
end
