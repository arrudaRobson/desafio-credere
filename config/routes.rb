Rails.application.routes.draw do
  root "base#index"
  namespace :v1, defaults: { format: :json } do
    
  end
end