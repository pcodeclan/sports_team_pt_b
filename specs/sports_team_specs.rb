require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestSportsTeam < MiniTest::Test

  def setup()
    @team = SportsTeam.new("The Sharks",["Ben", "Bill", "Hank", "Hattie"], "Bon Jovi", 0, false)
  end

  # Test team_name
  def test_team_name()
    assert_equal("The Sharks", @team.team_name())
  end

  #def number of num_of_players
  def test_players_array()
    assert_equal(["Ben", "Bill", "Hank", "Hattie"], @team.players_array())
  end

  #Test coach_name
  def test_coach_name()
    assert_equal("Bon Jovi", @team.coach_name())
  end

  #Set Coach Name
  def test_set_coach_name()
    @team.coach_name = "Bryan Adams" #= sign used when using accessors - Also remove set_coach_name
    @team.coach_name = "Bryan Adams"
    assert_equal("Bryan Adams", @team.coach_name())
  end

  #Test if new player is added
  def test_if_new_player_added()
   @team.add_new_player()
   @team.players_array.include?("Greggor")
  end

# Test if points is zero
  def test_points()
    assert_equal(0, @team.points())
  end

  #Test if team won and add 1 point if so
  def test_if_points_1()
    @team.won_game()
    assert_equal(1, @team.points())
  end
end
