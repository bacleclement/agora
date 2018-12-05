Rails.application.routes.draw do
  # get 'responses/new'

  # get 'responses/create'

  # get 'responses/edit'

  # get 'responses/update'

  # get 'responses/destroy'

  # get 'schools/index'

  # get 'schools/show'

  # get 'schools/new'

  # get 'schools/create'

  # get 'schools/edit'

  # get 'schools/update'

  # get 'schools/destroy'

  resources :questions do
    resources :responses, only: [ :new, :create, :edit, :update, :destroy ]
  end

  resources :schools

  resources :profiles

  devise_for :users,
           :controllers  => {
             :registrations => 'my_devise/registrations',
             # ...
           }

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
