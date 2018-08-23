class EmailsController < ApplicationController
  def index
  end

  def select
    @email = Email.find(params[:id])
    @email.read = true
    @email.save
    respond_to do |format|
      format.js
    end
  end

  def read_all
    Email.all.each do |email|
      email.read = true
      email.save
    end
    respond_to do |format|
      format.js
    end
  end

  def read_none
    Email.all.each do |email|
      email.read = false
      email.save
    end
    respond_to do |format|
      format.js
    end
  end
end
