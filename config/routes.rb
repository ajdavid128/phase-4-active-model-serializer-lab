Rails.application.routes.draw do
  resources :tags, only: [:index, :show]


  resources :posts, only: [:index, :show]
  get 'posts_short_content', to: 'posts#short_content' # this will be a .all action
  get 'authors/:id/posts_short_content', to: 'posts#posts_short_content' #.find action

  resources :authors, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
