class Ability
  include CanCan::Ability

    # Define abilities for the passed in user here. For example:
    #
      #user ||= User.new # guest user (not logged in)
      def initialize(user)
        #can :read, :all 권한 부여하기.
        can [:read, :create, :update, :destroy, :answer], :all
    
        if user.nil? 
          can :read, :all
        elsif user.has_role? 'newbie'
          can [:read, :create], :all 
          can [:update, :destroy], Qna, user_id: user.id
          can [:update, :destroy], Tip, user_id: user.id
          can [:update, :destroy], Lsession, user_id: user.id
          can [:update, :destroy], Quiz, user_id: user.id
        elsif user.has_role? 'manager'
          can [:read, :create, :update], :all 
          can :destroy, Qna, user_id: user.id
          can :destroy, Tip, user_id: user.id
          can :destroy, Lsession, user_id: user.id
          can :destroy, Quiz, user_id: user.id
        elsif user.has_role? 'admin'
          can [:read, :create, :update, :destroy], :all 
        end
    
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end