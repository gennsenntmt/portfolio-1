Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'reports#index'
  get 'users/:id' => 'users#show'
  
  resources :users do 
    resources :reports
  end

  resources :students 
  resources :reports
end
