Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # index
  get 'tasks', to: 'tasks#index'

  # new
  get 'tasks/new', to: 'tasks#new', as: :new_task
  # create
  post 'tasks', to: 'tasks#create'

  # show
  get 'tasks/:id', to: 'tasks#show', as: :task

  # edit
  get 'tasks/:id/edit', to: 'tasks#edit'
  # update
  patch 'tasks/:id/update', to: 'tasks#update'

  # destroy
  delete 'tasks/:id', to: 'tasks#destroy'
end
