Rails.application.routes.draw do
  devise_for :users
  get 'travels/index'
  root to: "travels#index"
end
