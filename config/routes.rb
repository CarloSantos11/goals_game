Rails.application.routes.draw do
  resources :goals
  resources :users do 
    resources :goals do
      get 'complete', to: 'goals#complete'
      get 'reverse', to: 'goals#reverse_completion'
    end
  end
  match 'users/:id', to: 'users#show', via: :post  # what is this for?
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
