Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }
  root                             'static_pages#home'
  # get   'exercises'             => 'exercises#index'
  # get   'exercises/:id'         => 'exercises#show', as: "exercise"
  # get   'exercises/:id/edit'    => 'exercises#edit', as: "edit_exercise"
  # patch 'exercises/:id'         => 'exercises#update'
  # get   'plans'                 => 'plans#index'
  # get   'plans/:id'             => 'plans#show', as: "plan"
  # get   'plans/:id/edit'        => 'plans#edit', as: "edit_plan"
  # patch 'plans/:id'             => 'plans#update'
  # get   'plan_details'          => 'plan_details#index'
  # get   'plan_details/:id'      => 'plan_details#show', as: "plan_detail"
  # get   'plan_details/:id/edit' => 'plan_details#edit', as: "edit_plan_detail"
  # patch 'plan_details/:id'      => 'plan_details#update'
  # get   'categories'            => 'categories#index'
  # get   'categories/:id'        => 'categories#show', as: "category"
  # get   'categories/:id/edit'   => 'categories#edit', as: "edit_category"
  # patch 'categories/:id'        => 'categories#update'
  # get   'videos'                => 'videos#index'
  # get   'videos/:id'            => 'videos#show', as: "video"
  # get   'videos/:id/edit'       => 'videos#edit', as: "edit_video"
  # patch 'videos/:id'            => 'videos#update'

  resources :exercises
  get '/exercises_by_category' => 'exercises#in_category'
  resources :plans
  resources :plan_details
  resources :categories
  resources :videos

  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'
end
