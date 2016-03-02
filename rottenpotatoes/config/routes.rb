Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  get 'movies/:id/edit', to: 'movies#edit'
  get 'movies/:id/director', to: 'movies#director', as: 'director_movie'
end
