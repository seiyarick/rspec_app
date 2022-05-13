Rails.application.routes.draw do

  # get 'lists/new'
  # get 'lists/edit'
 get 'top' => 'homes#top'
  # get 'list/:id' => 'lists#show'
  # get 'lists' => 'lists#index'
  # post 'lists' => 'lists#create'

  resources :lists
end
