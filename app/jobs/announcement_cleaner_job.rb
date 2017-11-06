class AnnouncementCleanerJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    Announcement.all.each do |job|
      job.destroy if Time.now > job.deadline
    end
  end
end
