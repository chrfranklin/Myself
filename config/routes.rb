Self::Application.routes.draw do
  get "send_email/new"

  root to: 'other#home'
  get '/home' => 'other#home'
  get '/histroy' => 'other#history'
  get '/introduce' => 'other#introduce'
  get '/contact' =>'other#contact'
  #session
  resources :sessions,only:[:new,:create,:destroy]
  match "/signout"=>"sessions#destroy"
  
  #Admin
  get 'admin' => 'admins#home'
  #Articles
  get 'articlessault' => 'articles#sault'
  
  resources :users
  resources :articles
  resources :send_emails   
  
  match "/auth/facebook"=>'sessions#create'
  match "/auth/facebook"=>'sessions#create'
end
