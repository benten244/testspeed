Rails.application.routes.draw do
  devise_for :users
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'tweets/soccer' => 'tweets#soccer'
  get 'tweets/baseball' => 'tweets#baseball'
  get 'tweets/basketball' => 'tweets#basketball'

  resources :tweets do
    resources :comments
  end

  root 'tweets#index'
  

  #twweets#helloをしたい場合は、resourcesの前から書こう！ 
  # get    'hello'          => 'hello#index'

end
