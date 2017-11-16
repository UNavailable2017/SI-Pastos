# contact_controller
class ContactsController < ApplicationController
  skip_before_action :authenticate_user!

  def index; end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact
      UserMailer.contact_email(@contact).deliver_now
      redirect_to contacts_path
    else
      render :new
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
