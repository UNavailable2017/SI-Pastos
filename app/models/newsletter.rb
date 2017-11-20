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

class Newsletter < ApplicationRecord
  belongs_to :user

  validates_presence_of :subject, :content
end
