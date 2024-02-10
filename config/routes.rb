Rails.application.routes.draw do
  get 'travels/index'
  root to: "travels#index"
end
