class RsvpsController < ApplicationController
  def index
    @events = current_user.events
  end

  def new
    @event = Event.find(params[:event_id])
    @rsvp = Rsvp.new
  end

  def show
    @rsvp = Rsvp.find(params[:id])
  end

  def create
    rsvp = current_user.rsvps.new(rsvp_params)
    rsvp.event_id = params[:event_id]
    rsvp.save
    # figure out whats wrong with the next line
    redirect_to rsvps_url, notice: 'You have RSVPed.'
  end

  private

  def rsvp_params
    params.require(:rsvp).permit(:extras, :message)
  end
end
