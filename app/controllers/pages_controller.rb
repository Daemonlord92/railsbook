class PagesController < ApplicationController
  def home
  	@status_updates = StatusUpdate.page(params[:page]).per(5)
  	@status_update = StatusUpdate.new

  end

  def friends
  end

  def group
  end

  def images
  end

  def loginregistar
    @user = User.new
  end

end
