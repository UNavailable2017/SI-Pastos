# == Schema Information
#
# Table name: children
#
#  id                :integer          not null, primary key
#  name              :string
#  birthdate         :date
#  completed_studies :string
#  censo_id          :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Child < ApplicationRecord
  belongs_to :censo

  validates_presence_of :name, :birthdate, :completed_studies

  def self.paginate_all(page, user)
    Child.paginate(page: page).where(censo_id: Censo.find_by(person_id: Person.find_by(user_id: user.id).id).id )
  end

  def self.create_current_user(child_params, user)
    child = Child.new(child_params)
    child[:censo_id] = Censo.find_by(person_id: Person.find_by(user_id: user.id).id).id
    return child
  end
end
