class StatisticsController < ApplicationController
  def show
      @num_person_censo = Censo.all
  end

  def count

  end

  def get_data
      @num_children = Censo.group(:numberOfChildren).count
  end
end
