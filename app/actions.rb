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

# Post route for signup
post '/signup' do
  username = params[:username]
  email = params[:email]
  password = params[:password]
  user = User.new(username: username, email: email, password: password)
  if user.save 
    redirect '/'
  else
    redirect '/signup'
  end
end

# Post route for profile
post '/profile' do
  redirect '/profile'
end

