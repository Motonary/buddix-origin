class UsersInfoController < ApplicationController

  def new
    @pre_title = "ギフト申請"
    @users_info = UsersInfo.new
  end

  def create
    users_info = UsersInfo.new(users_info_params)
    if users_info.save
      redirect_to my_page_path, notice: "ユーザ情報登録しました。"
    else
      render users_info_path
    end
  end

  private
    def users_info_params
      params.require(:users_info).permit(:first_name, :last_name, :hundle_name)
    end
end
