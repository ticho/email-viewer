Rails.application.routes.draw do
  get 'emails/read-all', to: 'emails#read_all', as: 'read_all'
  get 'emails/read-none', to: 'emails#read_none', as: 'read_none'
  get 'emails/delete/:id', to: 'emails#delete', as: 'delete'
  get 'emails/undo', to: 'emails#undo', as: 'undo'
  get 'emails/:id', to: 'emails#select'
  root 'emails#index'
end
