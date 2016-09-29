require 'test_helper'

class StandupTeamMembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @standup_team_member = standup_team_members(:one)
  end

  test "should get index" do
    get standup_team_members_url, as: :json
    assert_response :success
  end

  test "should create standup_team_member" do
    assert_difference('StandupTeamMember.count') do
      post standup_team_members_url, params: { standup_team_member: { standup_id: @standup_team_member.standup_id, team_member_id: @standup_team_member.team_member_id, today: @standup_team_member.today, yesterday: @standup_team_member.yesterday } }, as: :json
    end

    assert_response 201
  end

  test "should show standup_team_member" do
    get standup_team_member_url(@standup_team_member), as: :json
    assert_response :success
  end

  test "should update standup_team_member" do
    patch standup_team_member_url(@standup_team_member), params: { standup_team_member: { standup_id: @standup_team_member.standup_id, team_member_id: @standup_team_member.team_member_id, today: @standup_team_member.today, yesterday: @standup_team_member.yesterday } }, as: :json
    assert_response 200
  end

  test "should destroy standup_team_member" do
    assert_difference('StandupTeamMember.count', -1) do
      delete standup_team_member_url(@standup_team_member), as: :json
    end

    assert_response 204
  end
end
