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

end
