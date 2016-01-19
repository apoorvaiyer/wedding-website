class SaveTheDateController < ApplicationController
  def index
  end

  def rsvp
    wedding_response_input = {
      name: params[:name],
      email: params[:email],
      guest_count: params[:guest_count],
      attending: ActiveRecord::Type::Boolean.new.type_cast_from_user(params[:attending])
    }
    w = WeddingResponse.create!(wedding_response_input)
  end
end
