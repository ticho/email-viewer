class EmailsController < ApplicationController
  def index
  end

  def select
    @email = Email.find(params[:id])
    respond_to do |format|
      format.js
    end
  end
end
