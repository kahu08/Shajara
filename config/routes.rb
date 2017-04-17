Rails.application.routes.draw do
  devise_for :users
root :to => "expenses#index"

resources :debts

resources :loans

resources :expenses
end
