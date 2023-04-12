class ApplicationController < ActionController::Base
  layout("wrapper.html.erb")

  # Add your actions below this line
  # ================================

  def play_rock

    render({:template => "game_templates/user_rock.html.erb" })

  end

  def homepage

    render({:template => "game_templates/rules.html.erb" })

  end

  def play_paper
    
    @comp_move = ["rock", "paper", "scissors"].sample 

    if @comp_move == "rock" 
      @outcome = "won"
    elsif @comp_move == "scissors"
      @outcome = "lost"
     else 
      @outcome = "tied"
    end 
    
    render({:template => "game_templates/user_paper.html.erb" })

  end

  def play_scissors
    
    @comp_move = ["rock", "paper", "scissors"].sample 

    if @comp_move == "rock" 
      @outcome = "lost"
    elsif @comp_move == "scissors"
      @outcome = "tied"
     else 
      @outcome = "won"
    end 
    
    render({:template => "game_templates/user_scissors.html.erb" })

  end

end
