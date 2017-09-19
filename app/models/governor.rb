class Governor < ActiveRecord::Base
  #belongs_to :event
  has_many :events
end
