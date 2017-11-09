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
  # CREATE
  # we have the next valitations in our model
  # validates :name, :date, :eventType, :eventInfo, presence: true

  test 'should save an event with all fields' do
    event = events(:all_fields)
    assert event.save
  end

  test 'should save an event without image' do
    event = events(:without_image)
    assert event.save, 'saved the event without image'
  end

  test 'should not save an event without name' do
    event = events(:without_name)
    assert_not event.save, 'saved the event without name'
  end

  test 'should not save an event without date' do
    event = events(:without_date)
    assert !event.save, 'saved the event without date'
  end

  test 'should not save an event without eventType' do
    event = events(:without_event_type)
    assert !event.save, 'saved the event without eventType'
  end

  # READ
  test 'should get all register' do
    event = Event.all
    assert_equal event, Event.all
  end

  # UPDATE
  test 'should update an event' do
    old_event = events(:one)
    new_event = events(:two).attributes.except('id')
    assert old_event.update(new_event)
  end

  # DELETE
  test 'should delete an event' do
    event = events(:one)
    assert event.destroy
  end
end
