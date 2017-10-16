# statistic_controller
class StatisticsController < ApplicationController
  def total
    @data = Statistic.importante_statistics
  end

  def children
    @data = Censo.group(:numberOfChildren).count
  end

  def average
    @data = Person.joins(:residence).group(:locality).count
  end

  def health
    @health_service = HealthService.count_name
  end

  def gender
    @data = Person.group(:gender).count
  end

  def censo_date
    @data = Censo.group_by_year(:date).count.sort
  end


end
