class StatisticsController < ApplicationController
  def total
      @num_person_censo = Censo.all
  end

  def noCenso
  end

  def average
  end

  def health
      @health_service = HealthService.joins(:censos).group(:name).count

  end

  def children
      @num_children = Censo.group(:numberOfChildren).count
  end
end
