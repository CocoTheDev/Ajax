class EmailsController < ApplicationController

  def index
    @emails = Email.all
    respond_to do |format|
      format.html 
      format.js do 
        @email = Email.find(params[:id])
      end
    end
  end

  def destroy
    @destro = Email.find(params[:id])
    @destro.destroy

    respond_to do |format|
      format.html {respond_to emails_path}
      format.js
    end
  end
end




