class PhotographPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def new?
    true if user.photographer == true
  end

  def create?
    true if user.photographer == true
  end
end
