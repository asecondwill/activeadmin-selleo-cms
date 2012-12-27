ActiveadminSelleoCms::Engine.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  scope ":locale", :locale => /\w{2}/ do
    scope "search" do
      resources :searches, path: '', only: [:show]
    end
    resources :pages, path: '', only: [:show]
  end

  match ':locale' => 'pages#show'

  root to: 'pages#show'
end
