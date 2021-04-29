require_relative "../utils/response.rb"
class PatientController < ApplicationController
  skip_before_action :verify_authenticity_token
  include Response

  def getAll
    @patients = Patient.all
    msg = Response.customSuccessResponse("SUCCESS",@patients)
    render :json=>msg
  end

  def createPatient
    @user = Patient.new
    @user.mobile = params[:mobile]
    @user.name = params[:name]

    @apt = Appointment.new
    @apt.physician_id = params[:physician_id]
    @apt.appointment_date = Date.current

    @expense = Expenditure.new
    @expense.active = true
    @expense.start_date = Date.current
    ActiveRecord::Base.transaction do
      @user.save!

      @apt.patient_id = @user.id
      @apt.save!

      @expense.patient_id = @user.id
      @expense.save!

      msg = Response.customSuccessResponse("SUCCESS",@user)
      render :json=>msg
    end

  rescue =>error
      msg = Response.customErrorResponse(error,nil)
      render :json=>msg
    end
end
