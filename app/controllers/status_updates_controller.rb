class StatusUpdatesController < ApplicationController
  before_action :set_status_update, only: [:show, :edit, :update, :destroy]

  def index
    @status_updates = StatusUpdate.recent.all
  end

  def show
  end

  def new
    @status_update = StatusUpdate.new
  end

  def edit
  end

  def create
    @status_update = StatusUpdate.new(status_update_params)
    @status_update.user_id =current_user.id

    respond_to do |format|
      if @status_update.save
        format.html { redirect_to root_path, notice: 'Status update was successfully created.' }
        format.json { render :show, status: :created, location: @status_update }
      else
        format.html { render :new }
        format.json { render json: @status_update.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @status_update.update(status_update_params)
        format.html { redirect_to root_path, notice: 'Status update was successfully updated.' }
        format.json { render :show, status: :ok, location: @status_update }
      else
        format.html { render :edit }
        format.json { render json: @status_update.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @status_update.destroy
    respond_to do |format|
      format.html { redirect_to status_updates_url, notice: 'Status update was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    def set_status_update
      @status_update = StatusUpdate.find(params[:id])
    end

    def status_update_params
      params.require(:status_update).permit(
        :status_post,
         :user_id,
         )
    end
end
