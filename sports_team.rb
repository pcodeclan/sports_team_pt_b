class SportsTeam

  #refactoring to use attritbutes
  attr_accessor :team_name, :players_array, :coach_name, :points, :won_lost

  #Constructor method
  def initialize(team_name, players_array, coach_name,points,won_lost)
    @team_name = team_name
    @players_array = players_array
    @coach_name = coach_name
    @points = points
    @won_lost = won_lost
  end

  # Adds new player to players_array
  def add_new_player()
    @players_array.push("Greggor")
  end

  # Makes win condition true for team and adds 1
  def won_game()
    @won_lost = true
    if @won_lost = true
      @points += 1
    end
  end

  #Get methods
    # def team_name()
    #   return @team_name
    # end
    #
    # def num_of_players()
    #   return @num_of_players
    # end
    #
    # def coach_name()
    #   return @coach_name
    # end
    #
    # # Setter method
    # def set_coach_name(name)
    #   @coach_name = name
    # end
end
