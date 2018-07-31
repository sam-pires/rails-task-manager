Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # List taks
  get 'tasks' => 'tasks#index'

  # View details of a task
  get 'tasks/:id' => 'tasks#show', as: 'task'

  # add a task ( new & create )
  get 'tasks/new' => 'tasks#new'
  post 'tasks' => 'tasks#create'

  # update a task (edit & update)
  get 'tasks/:id/edit' => 'tasks#edit'
  patch 'tasks/:id' => 'tasks#update'

  #delete a task
  delete 'tasks/:id' => 'tasks#destroy'

end
