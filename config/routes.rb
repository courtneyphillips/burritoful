Rails.application.routes.draw do
devise_for :users

root to: "logs#index"

resources :logs do
  resources :events
end

resources :events


end
