Rails.application.routes.draw do
  root "base#index"
  namespace :v1, defaults: { format: :json } do
    get 'probe/position/:id', to: 'probe#position'
  end
end