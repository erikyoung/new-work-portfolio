Rails.application.routes.draw do
  devise_for :users
	root 'works#static' 
 	resources :works

 get 'static', to: 'works#static'
 get 'about', to: 'works#about'
 get 'portfolio', to: 'works#index'
 get 'contact', to: 'works#contact'
 get 'resume', to: 'works#resume'
 get 'contact-me', to: 'messages#new', as: 'new_message'
 post 'contact-me', to: 'messages#create', as: 'create_message'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
