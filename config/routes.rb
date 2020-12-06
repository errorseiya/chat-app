Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # ↑↑上の記述は削除しましょう↑↑
  root to: "messages#index"#ルートパスへのアクセスがあったら、messages_controllerのindexアクションが呼び出される
  resources :users, only: [:edit, :update]
end
