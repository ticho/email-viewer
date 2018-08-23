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

  def delete
    @email_id = params[:id]
    p session[:saved_object] = Email.find(params[:id]).object
    p session[:saved_body] = Email.find(params[:id]).body
    Email.destroy(params[:id])
    respond_to do |format|
      format.js
    end
  end

  def undo
    @email = Email.create(
      object: session[:saved_object],
      body: session[:saved_body],
      read: true
    )
    session[:saved_object] = nil
    session[:saved_body] = nil
    respond_to do |format|
      format.js
    end
  end
end
