Rails.application.routes.draw do
  get 'emails/:id', to: 'emails#select'
  root 'emails#index'
end
