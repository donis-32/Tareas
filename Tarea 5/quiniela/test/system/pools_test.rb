require "application_system_test_case"

class PoolsTest < ApplicationSystemTestCase
  setup do
    @pool = pools(:one)
  end

  test "visiting the index" do
    visit pools_url
    assert_selector "h1", text: "Pools"
  end

  test "should create pool" do
    visit pools_url
    click_on "New pool"

    fill_in "Game date", with: @pool.game_date
    fill_in "Game hour", with: @pool.game_hour
    fill_in "Game result team 1", with: @pool.game_result_team_1_id
    fill_in "Game result team 2", with: @pool.game_result_team_2
    fill_in "Team id 1", with: @pool.team_id_1
    fill_in "Team id 2", with: @pool.team_id_2
    click_on "Create Pool"

    assert_text "Pool was successfully created"
    click_on "Back"
  end

  test "should update Pool" do
    visit pool_url(@pool)
    click_on "Edit this pool", match: :first

    fill_in "Game date", with: @pool.game_date
    fill_in "Game hour", with: @pool.game_hour
    fill_in "Game result team 1", with: @pool.game_result_team_1_id
    fill_in "Game result team 2", with: @pool.game_result_team_2
    fill_in "Team id 1", with: @pool.team_id_1
    fill_in "Team id 2", with: @pool.team_id_2
    click_on "Update Pool"

    assert_text "Pool was successfully updated"
    click_on "Back"
  end

  test "should destroy Pool" do
    visit pool_url(@pool)
    click_on "Destroy this pool", match: :first

    assert_text "Pool was successfully destroyed"
  end
end
