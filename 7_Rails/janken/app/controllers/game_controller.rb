class GameController < ApplicationController
  def start
  end

  def result
      @player_hand = params[:hand].to_i 
      @computer_hand = rand(3)
      case @computer_hand - @player_hand
        when 0
          @result = "あいこです"
        when 1, -2
          @result = "あなたの勝ちです"
        else
          @result = "コンピュータの勝ちです"
      end
  end
end
