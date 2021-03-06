Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tasks#index'

  get '/tasks', to: 'tasks#index', as: "tasks"
  post '/tasks', to: 'tasks#create'
  get'/tasks/new', to: 'tasks#new', as: "new_task"

  get 'tasks/:id', to: 'tasks#show', as: "task"
  get 'tasks/:id/edit', to: 'tasks#edit', as: "edit_task"
  patch 'tasks/:id', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#destroy'
  patch 'tasks/:id/completed', to: 'tasks#completed', as: "completed_task"
end
