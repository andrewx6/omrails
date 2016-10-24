Rails.application.routes.draw do
  devise_for :users
  as :user do
  	get 'login' => 'devise/sessions#new'
  	delete 'logout' => 'devise/sessions#destroy'
  	get 'signup' => 'devise/registrations#new'
  end
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contactus'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
