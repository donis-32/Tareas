require "test_helper"

class PoolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pool = pools(:one)
  end

  test "should get index" do
    get pools_url
    assert_response :success
  end

  test "should get new" do
    get new_pool_url
    assert_response :success
  end

  test "should create pool" do
    assert_difference("Pool.count") do
      post pools_url, params: { pool: { game_date: @pool.game_date, game_hour: @pool.game_hour, game_result_team_1_id: @pool.game_result_team_1_id, game_result_team_2: @pool.game_result_team_2, team_id_1: @pool.team_id_1, team_id_2: @pool.team_id_2 } }
    end

    assert_redirected_to pool_url(Pool.last)
  end

  test "should show pool" do
    get pool_url(@pool)
    assert_response :success
  end

  test "should get edit" do
    get edit_pool_url(@pool)
    assert_response :success
  end

  test "should update pool" do
    patch pool_url(@pool), params: { pool: { game_date: @pool.game_date, game_hour: @pool.game_hour, game_result_team_1_id: @pool.game_result_team_1_id, game_result_team_2: @pool.game_result_team_2, team_id_1: @pool.team_id_1, team_id_2: @pool.team_id_2 } }
    assert_redirected_to pool_url(@pool)
  end

  test "should destroy pool" do
    assert_difference("Pool.count", -1) do
      delete pool_url(@pool)
    end

    assert_redirected_to pools_url
  end
end
