class UserPolicy < ApplicationPolicy
  def create?
    user.has_part?(:su) || user.has_authority?(:create, User)
  end

  def show?
    user.has_part?(:su) || user.has_authority?(:read, record)
  end

  def update?
    user.has_part?(:su) || user.has_authority?(:update, record)
  end

  def destroy?
    user.has_part?(:su) || user.has_authority?(:delete, record)
  end

  def index?
    show?
  end
end
