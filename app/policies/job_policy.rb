class JobPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end    
  end

  def index?
    # user.id == record.user_id
  end

end
