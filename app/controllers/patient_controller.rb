require_relative "../utils/response.rb"
class PatientController < ApplicationController
  skip_before_action :verify_authenticity_token
  include Response

  def getAll
    msg = Response.customSuccessResponse("SUCCESS",nil)
    render :json=>msg
  end

end
