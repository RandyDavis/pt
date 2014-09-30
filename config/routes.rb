Rails.application.routes.draw do
  get 'exercises'         => 'exercises#index'
  get 'exercises/:id'     => 'exercises#show'
  get 'plans'             => 'plans#index'
  get 'plans/:id'         => 'plans#show'
  get 'plan_details'      => 'plan_details#index'
  get 'plan_details/:id'  => 'plan_details#show'
  get 'categories'        => 'categories#index'
  get 'categories/:id'    => 'categories#show'  
  get 'videos'            => 'videos#index'
  get 'videos/:id'        => 'videos#show'
end
