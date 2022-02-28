Rails.application.routes.draw do
  get 'memo/index'
  root to: "memo#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
