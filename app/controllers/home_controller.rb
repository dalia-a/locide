class HomeController < ApplicationController
  
  def index
    begin
      @first_name = current_user.first_name
      @last_name = current_user.last_name
      @fullname = @first_name + " " + @last_name
      @role = current_user.role
    rescue NoMethodError => e
      redirect_to home_indexguest_path
    end
  end
  def searchguest
    @results = User.where(city: params[:q], role:'guide')
  end
  def edit
    @user = current_user
  end
  def update
    user = User.find(params[:id])
    user.update(guides_params)

    redirect_to edit_user_registration_path
  end
  def searchuser
    @result = Trip.where(city: params[:query])
  end
  private
  def guides_params
      params.require(:user).permit(:about_me, :why_me)
  end
  def guideprofile 
    @trips = current_user.trips
  end
end
