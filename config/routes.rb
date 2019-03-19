Rails.application.routes.draw do

  resources :categories

  resources :questions do
    resources :responses, only: [ :new, :show, :create, :edit, :update, :destroy ]
  end

  post 'questions/upvote'

  post 'questions/index_debate'
  post 'questions/index_lifestyle'
  post 'questions/index_trouble'
  post 'questions/index_politic'
  post 'questions/index_ethic'
  post 'questions/index_ecology'

  post 'responses/upvote'

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

