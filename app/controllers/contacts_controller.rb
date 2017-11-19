# contact_controller
class ContactsController < ApplicationController
  skip_before_action :authenticate_user!

  def index; end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      UserMailer.contact_email(@contact).deliver_later
      flash[:notice] = 'El correo se ha enviardo exitosamente'
      redirect_to new_contact_path
    else
      render :new
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :message)
  end
end
