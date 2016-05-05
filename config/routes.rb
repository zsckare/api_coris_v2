Rails.application.routes.draw do
  resources :contestants
  resources :workshops
  

  namespace :api,defaults: {format: :json} do
    namespace :v1 do
        resources :contestants
        get 'workshops/validate'
    end
  end

end
