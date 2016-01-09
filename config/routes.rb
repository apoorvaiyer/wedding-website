Rails.application.routes.draw do
  get 'save_the_date/index'

  root 'save_the_date#index'
end
