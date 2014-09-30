Rails.application.routes.draw do
  get 'exercises'     => 'exercises#index'
  get 'plans'         => 'plans#index'
  get 'plan_details'  => 'plan_details#index'
  get 'categories'    => 'categories#index'
  get 'videos'        => 'videos#index'
end
