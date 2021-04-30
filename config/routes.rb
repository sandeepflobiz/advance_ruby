Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'patient/getAll'
  post 'patient/createPatient'
  get 'physician/getAll'
  post 'physician/createPhysician'
  get 'expenditure/getAll'
  get 'appointment/getAll'
  get 'picture/getAll'
  post 'picture/createPicture'
end
