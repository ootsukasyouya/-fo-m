class ContactsController < ApplicationController
  def index
  end
  def new
    @contact = Contact.new
  end
  def create
    #Contact.create(contact_params)
    @contact = Contact.new(contact_params)
    if @contact.save
    redirect_to new_contact_path
    else
      render :new
    end
  end
  private
  def contact_params
    params.require(:contact).permit(:name, :email,:content)
end
end
