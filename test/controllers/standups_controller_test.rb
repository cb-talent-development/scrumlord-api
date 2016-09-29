require 'test_helper'

class StandupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @standup = standups(:one)
  end

  test "should get index" do
    get standups_url, as: :json
    assert_response :success
  end

  test "should create standup" do
    assert_difference('Standup.count') do
      post standups_url, params: { standup: { comments: @standup.comments, date: @standup.date, meetings: @standup.meetings, team_id: @standup.team_id } }, as: :json
    end

    assert_response 201
  end

  test "should show standup" do
    get standup_url(@standup), as: :json
    assert_response :success
  end

  test "should update standup" do
    patch standup_url(@standup), params: { standup: { comments: @standup.comments, date: @standup.date, meetings: @standup.meetings, team_id: @standup.team_id } }, as: :json
    assert_response 200
  end

  test "should destroy standup" do
    assert_difference('Standup.count', -1) do
      delete standup_url(@standup), as: :json
    end

    assert_response 204
  end
end
