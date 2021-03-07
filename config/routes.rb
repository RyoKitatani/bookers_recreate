Rails.application.routes.draw do
  root to: "books#index"
  resources :books, only:[:show, :edit, :create, :update, :destory]
end
