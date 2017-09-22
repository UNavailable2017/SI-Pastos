# == Schema Information
#
# Table name: health_services
#
#  id         :integer          not null, primary key
#  name       :string
#  censo_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class HealthService < ApplicationRecord
    has_many :censos
end
