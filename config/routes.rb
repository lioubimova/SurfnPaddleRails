Rails.application.routes.draw do
  root 'post#index'
  get '/:recent_post/:id' => 'post#show'
end
