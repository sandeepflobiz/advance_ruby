class ExpenditureController < ApplicationController
  def index
    @expenses = Expenditure.all
    msg = Response.customSuccessResponse("SUCCESS",@expenses)
    render :json=>msg
  end
end
