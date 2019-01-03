Rails.application.routes.draw do
  root 'application#route_not_found'
  match '*unmatched', to: 'application#route_not_found', via: :all
  namespace :v1, defaults: { format: :json } do
    get 'probe/:id/position', to: 'probe#position'
    patch 'probe/:id/movement', to: 'probe#move'
    post 'probe', to: 'probe#create'
    put 'probe/:id/position/initial', to: 'probe#reset'
  end
end