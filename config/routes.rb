Rails.application.routes.draw do
  get 'posts/index'

  get 'post/index'

resources :posts
  #get"/", as: "posts#index"
  root "posts#index"
end
