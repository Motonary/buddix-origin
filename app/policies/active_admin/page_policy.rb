module ActiveAdmin
  class PagePolicy < ApplicationPolicy
    class Scope < Struct.new(:user, :scope)
      def resolve
        scope
      end
    end

    def show?
      return true if user.has_part?(:su)

      case record.namespace.name
      when :buddix_admin
        case record.name
        when "Dashboard"
          true
        else
          false
        end
      when :user_admin
        case record.name
        when "Dashboard"
          user.has_authority?(:read, User)
        else
          false
        end
      when :gift_admin
        case record.name
        when "Dashboard"
          user.has_authority?(:read, Gift)
        else
          false
        end
      end
    end

    def index?
      show?
    end

  end
