# == Schema Information
#
# Table name: newsletters
#
#  id         :integer          not null, primary key
#  subject    :string
#  content    :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class NewsletterTest < ActiveSupport::TestCase
  include ActionMailer::TestHelper

  test 'should send email to all users in the database' do
    # Create the email and store it for further assertions
    @newsletter = Newsletter.new(subject: 'Invitation', content: 'Congratulations!!!', user_id: 1)
    email = UserMailer.newsletter(@newsletter)

    assert_equal 100, User.count.to_i
    # Send the email, then test that it got queued
    # assert_emails User.count do
    #   email.deliver_now
    # end

    # # Test the body of the sent email contains what we expect it to
    # assert_equal [ENV['email_platform']], email.from
    # assert_equal [ENV['email_platform']], email.to
    # assert_equal newsletter.subject, email.subject
  end
end
