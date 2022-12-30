Rails.application.routes.draw do
  get 'lists/new'
  get 'top' => 'homes#top'
  post 'lists' => 'lists#create'
  get 'lists' => 'lists#index'
  get 'lists/:id' => 'lists#show', as: 'list'
  get 'lists/:id' => 'lists#edit'
  delete 'lists/:id' => 'lists#destroy', as: 'destroy_list'
end
