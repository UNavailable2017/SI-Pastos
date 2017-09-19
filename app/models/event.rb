class Event < ActiveRecord::Base
  #has_many :governors
  belongs_to :governor
end
