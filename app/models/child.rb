# == Schema Information
#
# Table name: children
#
#  id         :integer          not null, primary key
#  idChild    :integer
#  name       :string
#  age        :integer
#  censo_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Child < ApplicationRecord
    belongs_to :censo
end
