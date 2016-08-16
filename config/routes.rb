Rails.application.routes.draw do
  get 'restaurants' => 'restaurants#index'
  get 'restaurants/:id' => 'restaurants#show'
  get 'restaurants/:id/edit' => 'restaurants#edit'
  patch 'restaurants/:id/edit' => 'restaurants#modif'
  delete 'restaurants/:id/edit' => 'restaurants#suppr'
  root 'restaurants#index'
  post 'restaurants' => 'restaurants#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
