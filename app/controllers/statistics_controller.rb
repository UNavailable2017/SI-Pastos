# statistic_controller
class StatisticsController < ApplicationController
  def total
    @num_person_censo = Censo.all.count
  end

  def average
    @average_age = Statistic.average_age
  end

  def health
    @health_service = HealthService.count_name
  end

  def children
    @num_child = Censo.num_children
  end
end
