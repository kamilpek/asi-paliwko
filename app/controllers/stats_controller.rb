class StatsController < ApplicationController
  before_filter :authenticate_user!

  def main
  end

  def vechicles
    @vechicles = Vechicle.all
  end

  def costs
    @vechicle_costs = VechicleCost.all
  end

  def fuel
    @vechicle_fuels = VechicleFuel.all
  end

end
