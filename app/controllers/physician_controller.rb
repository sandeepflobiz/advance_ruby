require_relative "../utils/response.rb"
class PhysicianController < ApplicationController
  skip_before_action :verify_authenticity_token
  include Response

  def getAll
    @physicians = Physician.all
    msg = Response.customSuccessResponse("SUCCESS",@physicians)
    render :json=>msg
  end

  def createPhysician
    begin
      @mobile_number = Physician.find_by(mobile:params[:mobile])
      if @mobile_number
        msg = Response.customErrorResponse("mobile number already exists",nil)
        render :json=>msg
      else
        @user = Physician.new
        @user.name = params[:name]
        @user.mobile = params[:mobile]
        @user.save!
        msg = Response.customSuccessResponse("a new record is created for Physician",@user)
        render :json=>msg
      end
    rescue =>error
      msg = Response.customErrorResponse("record could not be created",nil)
      render :json=>msg
    end
  end
end
