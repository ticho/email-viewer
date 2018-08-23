Rails.application.routes.draw do
  post '/emails/select', to: 'emails#select', as: 'select'
  root 'emails#index'
end
