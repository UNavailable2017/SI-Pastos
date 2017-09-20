class Person < ApplicationRecord
    has_one :residence
    belongs_to :user
end
