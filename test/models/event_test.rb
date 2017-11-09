# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  name       :string
#  date       :date
#  image      :string
#  eventType  :string
#  eventInfo  :string
#  person_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # we have the next valitations in our model
  # validates :name, :date, :eventType, :eventInfo, presence: true
  # test 'should save an event with all fields' do
  #   @event = events(:all_fields)
  #   assert @event.save
  # end

  #
  # test 'should save an event without image' do
  #   @event = events(:without_image)
  #   assert !@event.save, 'saved the event  without image'
  # end
  #
  # test 'should save an event without name' do
  #   @event = events(:without_name)
  #   assert !@event.save, 'saved the event  without name'
  # end
  #
  # test 'should save an event without date' do
  #   @event = events(:without_date)
  #   assert !@event.save, 'saved the event  without date'
  # end
  #
  # test 'should save an event without eventType' do
  #   @event = events(:without_event_type)
  #   assert !@event.save, 'saved the event  without eventType'
  # end

end
