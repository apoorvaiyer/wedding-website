class RsvpController < ApplicationController
  respond_to :html

  def index
  end

  def create
    rsvp_input = {
      name: params[:name],
      email: params[:email],
      guest_count: params[:guest_count],
      attending: ActiveRecord::Type::Boolean.new.type_cast_from_user(params[:attending])
    }
    rsvp = Rsvp.create!(rsvp_input)
    respond_with rsvp
  end

  def show
    @rsvp = Rsvp.find(params[:id])

    redirect_to root_path if @rsvp.blank?
  end
end
