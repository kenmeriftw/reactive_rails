Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :contacts, only: %i[create index]
    end
  end

  root 'index#index'
end
