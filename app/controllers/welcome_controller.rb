class WelcomeController < ApplicationController
  def index
    if user_signed_in?
      @events = Event.where(:user_id => current_user.id)
    end
  end

  def story
  #story page logic goes here
  end

  def about
  #about page logic goes here
  end

end
