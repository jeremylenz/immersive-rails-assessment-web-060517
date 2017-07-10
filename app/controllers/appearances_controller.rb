class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.create(appearance_params(:rating, :guest_id, :episode_id))
    redirect_to episode_path(@appearance.episode)
  end


  private

  def appearance_params(*args)
    params.require(:appearance).permit(*args)
  end
end
