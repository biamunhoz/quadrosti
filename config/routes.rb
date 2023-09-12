Rails.application.routes.draw do
  
  resources :recados
  root 'recados#new'

end
