require_relative "../utils/response.rb"
class AppointmentController < ApplicationController
  skip_before_action :verify_authenticity_token
  include Response

  def getAll
    @apts = Appointment.all
    msg = Response.customSuccessResponse("SUCCESS",@apts)
    render :json=>msg
  end

end
