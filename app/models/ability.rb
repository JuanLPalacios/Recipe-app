class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    can :destroy, Recipe, 'user' => user
  end
end
