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
end




