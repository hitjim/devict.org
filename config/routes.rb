UpfrontwichitaCom::Application.routes.draw do
  get 'posts/index'

  match 'videos' => 'video#index'

  root :to => 'welcome#index'
  match 'conduct' => 'welcome#conduct'
  match 'about' => 'welcome#about'
  match 'request-invite' => 'welcome#request_invite'
  match 'binary' => 'welcome#binary'
  match 'gamejam' => 'welcome#game_jam'

  resources :events, :only => [:index, :show, :edit, :update] do
  end

end
