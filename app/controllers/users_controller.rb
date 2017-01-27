class UsersController < ApplicationController
  def login
  end

  def edit
    @edit_user = User.find(params[:id])
  end

  def update
    user = User.find(session[:user_id])
    user.update(f_name: params[:f_name], l_name: params[:l_name], city: params[:city], state: params[:state], email: params[:email])
    redirect_to '/events'
  end

  def login_user
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id]= user.id
      redirect_to '/events'
    else
      flash[:errors] = {:login=> ['Invalid email/password']}
      redirect_to '/'
    end
  end

  def create
    user = User.create(f_name: params[:f_name], l_name: params[:l_name], city: params[:city], state: params[:state], email: params[:email], password: params[:password], password_confirmation: params[:password_confirm])
    flash[:errors] = user.errors.messages
    redirect_to '/'
  end

  def logout
    session[:user_id] = nil
    redirect_to '/'
  end
end
