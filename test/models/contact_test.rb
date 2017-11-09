# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  message    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  include ActionMailer::TestHelper

  test 'should send email to the governor' do
    # Create the email and store it for further assertions
    @contact = contacts(:all_fields)
    email = UserMailer.contact_email(@contact)

    # Send the email, then test that it got queued
    assert_emails 1 do
      email.deliver_now
    end

    # # Test the body of the sent email contains what we expect it to
    assert_equal [ENV['email_platform']], email.from
    assert_equal [ENV['email_platform']], email.to
    assert_equal 'Correo de Contáctanos SI-Pastos', email.subject
  end

  # CREATE
  # it is used for serialize instance variable for send email
  # validates :name, :email, :message, presence: true

  test 'should save an event with all fields' do
    contact = contacts(:all_fields)
    assert contact.save, 'saved the event with all fields'
  end

  test 'should save an event without name' do
    contact = contacts(:without_name)
    assert_not contact.save, 'saved the event without name'
  end

  test 'should save an event without email' do
    contact = contacts(:without_email)
    assert_not contact.save, 'saved the event without email'
  end

  test 'should save an event without message' do
    contact = contacts(:without_message)
    assert_not contact.save, 'saved the event without message'
  end

end
