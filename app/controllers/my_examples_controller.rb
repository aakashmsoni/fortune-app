class MyExamplesController < ApplicationController
  def fortune
    fortunes = [
      "You will find treasure in the near future.",
      "The planets align in your favor, take a risk on something you want.",
      "Someone special will enter your life soon.",
    ]
    render json: { fortune: fortunes.sample }
  end

  def lotto
    numbers = []
    6.times do
      numbers << rand(1..60)
    end
    render json: { lotto_numbers: numbers }
  end

  def bottles
  end
end
