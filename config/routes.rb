Rails.application.routes.draw do

  get 'homes/show'

root :to => "expenses#index"

resources :debts

resources :loans

resources :expenses

end
