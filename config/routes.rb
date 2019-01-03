Rails.application.routes.draw do
  get '/', to: 'base#index'
  namespace :v1, defaults: { format: :json } do
    get '/', to: 'probe#index'
    get 'probe/:id/position', to: 'probe#position'
    patch 'probe/:id/movement', to: 'probe#move'
    post 'probe', to: 'probe#create'
    put 'probe/:id/position/initial', to: 'probe#reset'
  end
end