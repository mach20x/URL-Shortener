Rails.application.routes.draw do
  root 'links#new'
  # get 'links#index'
  # get 'params[:id]' => 'links#show'
  get ':id' => 'links#show'
  resources :links
  # get 'alt/:shortURL' => 'link#show_alt'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
