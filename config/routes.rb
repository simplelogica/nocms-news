NoCms::News::Engine.routes.draw do
  resources :items, only: [:index, :show]
end
