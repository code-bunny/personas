class KinksController < ApplicationController
  before_action :set_profile

  def create
    @profile.kinks.create! kink_params
    redirect_to @profile
  end

  private
   def set_profile
     @profile = Profile.find(params[:profile_id])
   end

   def kink_params
     params.required(:kink).permit(:title, :description)
   end
end
