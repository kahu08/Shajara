Rails.application.routes.draw do

root :to => "expenses#index"

resources :debts

resources :loans

resources :expenses
end
