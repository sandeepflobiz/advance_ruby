require_relative "../utils/response.rb"
class PictureController < ApplicationController
  skip_before_action :verify_authenticity_token
  include Response

  def getAll
    @pictures = Picture.all
    msg = Response.customSuccessResponse("SUCCESS",@pictures)
    render :json=>msg
  end

  def createPicture
    begin
      @picture = Picture.new(picture_params)
      @picture.save!
      msg = Response.customSuccessResponse("Picture created successfully",@picture)
      render :json=>msg
    rescue =>error
      msg = Response.customErrorResponse(error,nil)
      render :json=>msg
    end
  end

  private
    def picture_params
      params.require(:picture).permit(:imageable_type,:url,:imageable_id)
      # params.require(:patient).permit(:name, :mobile)
    end
end
