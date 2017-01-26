class OrganizationsController < ApplicationController
  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.create!(
      organization_params
    )

    @organization.update(users: [current_user])

    redirect_to root_path
  end

  private

  def organization_params
    params.require(:organization).permit(
      :name
    )
  end
end
