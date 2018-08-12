class UsersController < ApplicationController

  def new
      @user = User.new
  end

  def create
    if env['omniauth.auth'].present?
      # Facebookログイン
      @user  = User.from_omniauth(env['omniauth.auth'])
      result = @user.save(context: :facebook_login)
      fb = "Facebook"
    else
      # 通常サインアップ
      @user  = User.new(user_params)
      result = @user.save
      fb = ""
    end
    if result
      sign_in @user
      flash[:success] = "#{fb}ログインしました。"
      redirect_to @user
    else
      if fb.present?
        redirect_to auth_failure_path
      else
        render 'new'
      end
    end
  end

  def checkmail
    @mailadress = session[:temp_mail_for_check_mail]
    session[:last_access_path] = session[:last_access_path_tmp]
    session[:last_access_path_tmp] = nil
    flash[:notice] = nil
  end

private
  def user_params
     params.require(:user).permit(:name, :mail, :password, :password_confirmation)
  end

end
