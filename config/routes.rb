SeenIT::Application.routes.draw do

  root to: 'posts#index'

  resources :posts, :comments do
    resources :comments, :votes
  end


match "/auth/twitter/callback" => "sessions#create"
match "/signout" => "sessions#destroy", :as => :signout

end
