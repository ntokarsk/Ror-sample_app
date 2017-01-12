Rails.application.routes.draw do
	get 'sessions/new'
	get    '/login',   to: 'sessions#new'
	post   '/login',   to: 'sessions#create'
	delete '/logout',  to: 'sessions#destroy'
  #get  'users/new'
  scope module: :default_scope do
  	get  '/signup',      to:'users#new'
  	root 'static_pages#home'
  	get  '/help',        to: 'static_pages#help'
  	get  '/about',       to: 'static_pages#about'
  	get  '/contact',     to: 'static_pages#contact'
    get  '/cloud',       to: 'static_pages#cloud'
  	resources :users
  end
end