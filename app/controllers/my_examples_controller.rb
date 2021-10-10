class MyExamplesController < ApplicationController

def random_fortune
  fortune = ["You will quit your job today", "You will win the lottery today.", "You're about to die, don't look behind you."]

  lotto_pick = []
  6.times do
    lotto_pick << rand(61)
  end

  visits = 0


  render json: {message: fortune.sample, lottery_numbers: lotto_pick}
end

def p_lyrics
  lyrics = []
  number = 99
  while number > 0
    if number > 1
      lyrics << "#{number} bottles of beer on the wall, #{number} bottles of beer. Take one down and pass it around, #{(number - 1)} bottles of beer on the wall."
    else
      lyrics << "1 bottle of beer on the wall, 1 bottle of beer.
      Take one down and pass it around, no more bottles of beer on the wall."
    end
    number = number - 1
  end
  render json: {lyrics: lyrics}
end

end
