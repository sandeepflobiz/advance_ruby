class ExpenditureController < ApplicationController
  def getAll
    @expenses = Expenditure.all
    msg = Response.customSuccessResponse("SUCCESS",@expenses)
    render :json=>msg
  end
end
