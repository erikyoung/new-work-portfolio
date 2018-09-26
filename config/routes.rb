Rails.application.routes.draw do
  root 'works#static' 
  
  devise_for :users
	
  resources :works
  resources :designs

  resources :posts do
    resources :comments
  end

  get 'static', to: 'works#static'
  get 'about', to: 'works#about'
  get 'cases', to: 'designs#cases'
  get 'hw', to: 'designs#hw'
  get 'teacher', to: 'designs#teacher'
  get 'zeit', to: 'designs#zeit'
  get 'mirror', to: 'designs#mirror'
  get 'portfolio', to: 'works#index'
  get 'resume', to: 'works#resume'

  get 'contact', to: 'messages#new', as: 'new_message'
  post 'contact', to: 'messages#create', as: 'create_message'
end
