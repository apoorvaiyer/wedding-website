Rails.application.routes.draw do
  get 'save_the_date/index'
  post 'save_the_date/rsvp'

  root 'save_the_date#index'
end
