class DatesCleanerJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    Event.all.each do |event|
      event.destroy if Time.now > event.date
    end
  end
end
