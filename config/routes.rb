BestNycSchools::Application.routes.draw do
  devise_for :users

  # devise_for :dophines

  root :to => "home#index"
  # get '/hope' => "home#index"

end