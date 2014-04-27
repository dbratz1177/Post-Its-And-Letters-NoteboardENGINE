Noteboard::Engine.routes.draw do
  resources :notes
  root to: "notes#index"
end
