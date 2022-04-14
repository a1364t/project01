class PagesController < ApplicationController
  def home
    @random1 = Rent.order('RANDOM()').limit(3)
    @random2 = Sell.order('RANDOM()').limit(3)
    end
end
