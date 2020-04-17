Rails.application.routes.draw do
  resources :users do 
    resources :goals do
      get 'complete' => 'goals#complete'
    end
  end
  match 'users/:id', to: 'users#show', via: :post  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
