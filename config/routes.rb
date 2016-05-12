# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
resources :projects do
  resources :task_board, only: [:index]
  get 'task_board/:action', controller: :task_board
  post 'task_board/:action', controller: :task_board
end