Rails.application.routes.draw do
  root to: "homes#index"
  resources :books, only:[:index, :show, :edit, :create, :update, :destroy]
end
