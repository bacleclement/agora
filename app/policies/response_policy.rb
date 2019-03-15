class ResponsePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def update?
    record.profile.user == user
  end

  def destroy?
    record.profile.user == user
  end

  def upvote?
    true
  end
end
