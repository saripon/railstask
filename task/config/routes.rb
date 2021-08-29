Rails.application.routes.draw do
  get 'todotask/index'
  get 'todotask/new'
  get 'todotask/edit'
  get 'todotask/update'
  get 'todotask/delete'
  get 'todotask/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
