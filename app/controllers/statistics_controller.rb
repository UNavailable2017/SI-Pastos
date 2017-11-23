# statistic_controller
class StatisticsController < ApplicationController


  def total
    @data = Statistic.importante_statistics
  end

  def children
    @data = Statistic.censo_group_number_of_children_count
  end

  def average
    @data = Statistic.person_joins_residence_group_locality_count
  end

  def health
    @health_service = HealthService.count_name
  end

  def gender
    @data = Statistic.person_group_count
  end

  def censo_date
    @data = Statistic.censo_group_by_year_date_count_sort
  end
end
