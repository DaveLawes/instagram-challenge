Rails.application.routes.draw do

  get 'pages/home'

  devise_for :users
  resources :posts do
    resources :likes
  end

  root "pages#home"

  get 'user_posts/:user_id' => 'posts#user', as: :user_posts
end
