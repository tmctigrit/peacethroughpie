class WelcomeController < ApplicationController
  def index
    if user_signed_in?
      @events = current_user.managed_events
      myrsvps = current_user.rsvps
      @rsvps = myrsvps.map { |x| x.event }
      # myrsvps.each do |rsvp|
      #   @userattending = Event.where(:id => rsvp.event_id)
      # end

      @recipes = Recipe.where(:user_id => current_user.id)

    end
  end

  def story
  #story page logic goes here
  end

  def about
  #about page logic goes here
  end

end
