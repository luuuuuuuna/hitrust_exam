class UsersController < ApplicationController
    def new
        @user = User.new
    end
    def create
        data = params['user']
        email = data['email']
        password = data['password']
        @user = User.new email: email, password: password
        @user.save
         redirect_to '/utilities/index', notice: '註冊成功'
    end
    def login
        email = params['email']
        password = params['password']
        user = User.find_by(email: email)
        if user.password == password
            session[:user_id] = user.id
            redirect_to '/utilities/index', notice: '登入成功'
        else
            redirect_to '/', notice: '登入失敗'
        end
    end
    def login_page
    end
end
