Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :appointments, only: [:create, :destroy]
  get '/appointments/:month_num/:day_num', :to => 'appointments#show'
  resources :trainings, only: [:create]
end
