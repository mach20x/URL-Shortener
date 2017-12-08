Rails.application.routes.draw do
  root 'links#new'
  # get ':id' => 'links#index'
  resources :links
  # get 'links/index'
  # get 'alt/:shortURL' => 'link#show_alt'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
