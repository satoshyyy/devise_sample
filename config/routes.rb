Rails.application.routes.draw do
  # ***** 以下を修正 *****
  root to: "items#index"
  devise_for :users
  resources :items
  # ***** 以上を修正 *****
end
