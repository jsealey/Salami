class AdminController < ApplicationController
  before_filter :authenticate_user!, :only => :token
  before_filter :is_admin
  def index
  	if params.has_key?(:search)
  	  if params.has_key?(:page)
  	    @users = User.where("email like ?", "%#{params[:search]}%").page(params[:page]).per(10)
  	    @count = User.where("email like ?", "%#{params[:search]}%").count
  	  else
  	    @users = User.where("email like ?", "%#{params[:search]}%").page(1).per(10)
  	    @count = User.where("email like ?", "%#{params[:search]}%").count
  	  end
  	else
  	  @users = User.page(params[:page]).per(10)
  	  @count = User.count
  	end
  end
  def is_admin
	if not current_user.try(:admin?)
		flash[:alert] = 'Your account does not have administrative privileges.'
		redirect_to :controller => "home", :action => "index"
	end
	return true
  end
  def become
    sign_in(:user, User.find(params[:id]))
    redirect_to root_url # or user_root_url
  end
end
