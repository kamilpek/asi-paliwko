Rails.application.routes.draw do
  resources :vechicle_params
  resources :vechicle_param_types
  resources :vechicle_fuels
  resources :vechicle_costs
  resources :vechicle_notes
  resources :vechicles
  resources :roles
  devise_for :users

  get 'pages/home'
  get 'pages/about'
  get 'admin/main'
  get 'admin/users'
  get 'stats/vechicles'
  get 'stats/costs'
  get 'stats/fuel'
  get 'stats/main'

  root 'pages#home'

  scope "vechicle" do
    resources :vechicles do
      member do
        get 'vechicle_parameters'
        get 'vechicle_fuels'
        get 'vechicle_costs'
      end
    end
  end

  scope "admin" do
    resources :users do
      member do
        delete 'destroy'
        get 'new'
        post 'create'
        get 'edit'
        patch 'update'
        get 'notes'
        patch 'addnotes'
        post 'grantadmin'
        post 'resetpassword'
        get 'holiday'
      end
    end
  end

  scope "vechicle_cost" do
    resources :vechicle_costs do
      member do
        get 'print_resume_month'
        get 'print_resume_year'
      end
    end
  end

end
