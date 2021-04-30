Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'patient/getAll'
  # post 'patient/createPatient'
  resources :patient,only: [:index,:create]
  resources :appointment,only: [:index]
  resources :expenditure,only: [:index]
  resources :physician,only: [:index,:create]
  resources :picture,only: [:index,:create]
end
