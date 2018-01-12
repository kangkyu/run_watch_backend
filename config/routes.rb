Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    scope module: :v1 do
      resources :episodes, only: [:index, :update, :show, :create]
    end
  end
end
