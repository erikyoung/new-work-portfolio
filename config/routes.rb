Rails.application.routes.draw do
	root 'works#static' 
 	resources :works

 get 'static', to: 'works#static'
 get 'about', to: 'works#about'
 get 'portfolio', to: 'works#index'
 get 'contact', to: 'works#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
