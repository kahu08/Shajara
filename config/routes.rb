Rails.application.routes.draw do
  get 'loans/index'

  get 'loans/show'

  get 'loans/edit'

  get 'loans/new'

  get 'expenses/index'

  get 'expenses/show'

  get 'expenses/edit'

  get 'expenses/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
