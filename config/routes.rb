Tool::Application.routes.draw do

  scope "api" do
    resources :schools
    resources :students
    resources :teachers
    resources :schoolinfos
  end

  root to: "main#index"
  
end
