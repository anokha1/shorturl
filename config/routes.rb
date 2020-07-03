Rails.application.routes.draw do
  get '/s/:slug', to: 'links#show', as: :short
  resources :links,  except: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
