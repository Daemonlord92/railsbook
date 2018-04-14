class PagesController < ApplicationController
  def home
  	@status_updates = StatusUpdate.all
  	@status_update = StatusUpdate.new
  end

  def friends
  end

  def group
  end

  def images
  end
end
