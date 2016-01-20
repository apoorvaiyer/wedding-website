Rails.application.routes.draw do
  resources :rsvp

  root 'rsvp#index'
end
