require 'minitest/autorun'
require 'minitest/pride'
require './team.rb'

class TestTeam < MiniTest::Test
  def setup
    @team = Team.new('Team Howl', 10, ['Ari', 'Horacio', 'Michelle'])
  end

  def test_to_hash_passes
    result = @team
    expected = {:team_name=>"Team Howl", :level=>10, :points=>0}
    assert_equal(expected, result.to_hash)
  end

  def test_to_hash_fails
    result = @team
    expected = {:team_name=>"Team Howl", :team_member_names=>['Ari', 'Horacio', 'Michelle'], :level=>10, :points=>0}
    refute_equal(expected, result.to_hash)
  end

  def test_hash_can_be_modified
    setup = @team.to_hash
    setup[:team_name] = 'Coin Calm'
    result = setup[:team_name]
    expected = 'Coin Calm'
    assert_equal(expected, result)
  end

end
