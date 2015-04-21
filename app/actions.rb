#helpers

helpers do
  def current_user
  @current_user = User.find_by(id: session[:user_id]) if session[:user_id]
  end
end

# show a particular team
get '/movies/:id' do
  @movie = Movie.find(params[:id])
  erb :movie
end

# Homepage (Root path)
get '/' do
  erb :index
end

# Login Path
get '/login' do
  erb :login
end

# Profile Path
get '/profile' do
  erb :profile
end

# Sign Up Path
get '/signup' do
  erb :signup
end

# Post route for login
post '/login' do
  username = params[:username]
  password = params[:password]

  user = User.find_by(username: username)
  if user.password == password
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/login'
  end
end

# Post route for signup
post '/signup' do
  username = params[:username]
  email = params[:email]
  password = params[:password]

  user = User.find_by(username: username)
  if user
    redirect '/login'
  else
    user = User.create(username: username, email: email, password: password)
    session[:user_id] = user.id
    redirect '/'
  end

end

# Post route for profile
post '/profile' do
  redirect '/profile'
end

# Movie Object
get '/movies/new' do
  erb :new_movie
end

post '/movies/create' do
  @title = params[:title]
  @genre = params[:genre]
  @duration = params[:duration]
  @director = params[:director]
  @movie = Movie.find_by(title: @title)
    if @movie
  redirect '/movies/new'
  else
  new_movie = current_user.movies.create(title: @title, genre: @genre, duration: @duration, director: @director)
  redirect '/movies/'
  end
end


get '/movies' do
  @movies = Movie.all
  erb :movies
end

# post '/movies/create' do
#   title = params[:title]
#   if Movie.find_by(title)
#   redirect '/movies/new'
#   else
#   title = Movie.create(title: title)
#   end
# end
