Rails.application.routes.draw do
  root 'application#route_not_found'
  namespace :v1, defaults: { format: :json } do
    get 'probe/:id/position', to: 'probe#position'
    patch 'probe/:id/movement', to: 'probe#move'
    post 'probe', to: 'probe#create'
    put 'probe/:id/position/initial', to: 'probe#reset'
  end
  match '*unmatched', to: 'application#route_not_found', via: :all
end