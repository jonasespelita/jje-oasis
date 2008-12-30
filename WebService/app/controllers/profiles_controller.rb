class ProfilesController < ApplicationController
   def index
    @profiles = Profile.find(:all)
    render :xml => @profiles # use rail's automatic xml parser to convert object to xml =P
  end


  # http://localhost:3000/profiles/2061009
  def show
    @profile = Profile.find_by_idNo(params[:id])
    render :xml => @profile
  end
end
