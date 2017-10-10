class StatisticsController < ApplicationController
  def total
      @num_person_censo = Censo.all
  end

  def noCenso
  end

  def average
      @birthDate= Person.birth_date
  end

  def health
      @health_service = HealthService.count_name

  end

  def children
      @num_child = Censo.num_children
  end
end
