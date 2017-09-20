class MemberPolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    true
  end

  def create?
    user.present?
  end

  def update?
    return true if user.present? && user == member.user
  end

  def destroy?
    return true if user.present? && user == member.user
  end

  private

    def member
      record
    end
end
