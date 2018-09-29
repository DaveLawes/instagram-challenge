Rails.application.routes.draw do

  get 'pages/home'

  devise_for :users
  resources :posts

  root "pages#home"
  
  get 'user_posts/:user_id' => 'posts#user', as: :user_posts
end
