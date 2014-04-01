Tool::Application.routes.draw do

  scope "api" do
    resources :schools
    resources :students
    resources :teachers
    resources :schoolinfos
    resources :students_by_grades
  end

  root to: "main#index"
  
end
