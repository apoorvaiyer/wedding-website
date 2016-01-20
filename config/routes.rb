Rails.application.routes.draw do
  get 'save_the_date/index'
  post 'rsvp/create'
  get 'rsvp/index'

  root 'save_the_date#index'
end
