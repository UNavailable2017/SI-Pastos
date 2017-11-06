class DatesCleanerJob < ApplicationJob
  self.queue_adapter = :sidekiq
  queue_as :default

  def perform(*args)

    # Do something later
    Events.all.each do |event|
      event.destroy if Time.now > event.date
    end
    Announcement.all.each do |job|
      job.destroy if Time.now > job.deadline
    end
  end
end
