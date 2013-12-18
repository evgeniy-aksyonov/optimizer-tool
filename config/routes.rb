Tool::Application.routes.draw do

  scope "api" do
    resources :schools
    resources :students
    resources :teachers
  end

  root to: "main#index"
  
end
