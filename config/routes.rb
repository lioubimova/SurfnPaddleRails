Rails.application.routes.draw do
  root 'post#index'
  get 'posts/:id' => 'post#show', :as => :post
end
