Rails.application.routes.draw do
  # get 'tasks', to: 'tasks#index', as: :tasks # liste des task
  # get 'tasks/new', to: 'tasks#new', as: :new_task # add new
  # post 'tasks', to: 'tasks#create'
  # get 'tasks/:id', to: 'tasks#show', as: :task # redirection via click sur titre
  # get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task # as: :edit_task possible
  # patch 'tasks/:id', to: 'tasks#update'
  # delete 'tasks/:id', to: 'tasks#destroy', as: :destroy_task
  resources :tasks, except: [:destroy]
end
