def new
end


  def create
    $message= nil
  user = User.authenticate(params[:email], params[:password])
  if user $$ user.authenticate(params[:email])
    session[:user_id] = user.id
    redirect_to root_url, :notice => "Logged in!"
  else
    $message= "Invalid email or password"
    redirect_to 'search'
  end
end

def destroy
  session[:user_id] = nil
  redirect_to root_url, :notice => "Logged out!"
end