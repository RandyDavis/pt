Rails.application.routes.draw do
  root                       'exercises#index'
  get 'exercises'             => 'exercises#index'
  get 'exercises/:id'         => 'exercises#show', as: "exercise"
  get 'exercises/:id/edit'    => 'exercises#edit', as: "edit_exercise"
  get 'plans'                 => 'plans#index'
  get 'plans/:id'             => 'plans#show', as: "plan"
  get 'plans/:id/edit'        => 'plans#edit', as: "edit_plan"
  get 'plan_details'          => 'plan_details#index'
  get 'plan_details/:id'      => 'plan_details#show', as: "plan_detail"
  get 'plan_details/:id/edit' => 'plan_details#edit', as: "edit_plan_detail"
  get 'categories'            => 'categories#index'
  get 'categories/:id'        => 'categories#show', as: "category"
  get 'categories/:id/edit'   => 'categories#edit', as: "edit_category"
  get 'videos'                => 'videos#index'
  get 'videos/:id'            => 'videos#show', as: "video"
  get 'videos/:id/edit'       => 'videos#edit', as: "edit_video"
end
