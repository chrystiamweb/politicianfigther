Rails.application.routes.draw do
  root 'politicians#index'
  get '/ranking', to: 'politicians#ranking'
  get '/update_ranking', to: 'politicians#update_ranking'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
