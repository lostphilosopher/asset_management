class AssetsController < ApplicationController
  def new
    @asset = Asset.new
  end

  def create
    @asset = Asset.new(
      asset_params
    )
    @asset.update(organization_id: current_user.organization.id)
    @asset.save
    redirect_to root_path
  end

  private

  def asset_params
    params.require(:asset).permit(
      :name
    )
  end
end
