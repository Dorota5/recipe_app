Rails.application.routes.draw do
 resources :recipe

 root "recipes#index"
end
