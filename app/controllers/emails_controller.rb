class EmailsController < ApplicationController
  def index
  end

  def select
    p "PARAMS"
    p params[:id]
    @email = Email.find_by(object: params[:commit])
    respond_to do |format|
      # format.html {redirect_to root_path}
      format.js
    end
  end
end
