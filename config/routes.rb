Rails.application.routes.draw do
  resources :open_answers
  resources :closed_questions
  resources :open_questions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
