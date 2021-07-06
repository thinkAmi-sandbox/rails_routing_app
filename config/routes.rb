Rails.application.routes.draw do
  get 'home/index'
  get 'home/no_query'
  get 'home/move_with_field'
  get 'home/move_with_unpermitted_params'
  get 'home/move_with_permitted_params'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
