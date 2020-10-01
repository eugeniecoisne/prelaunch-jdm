class ContactsController < ApplicationController

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to thanks_path
    else
      redirect_back fallback_location: root_path
    end
  end

  def thanks
  end

  def index
    @contacts = Contact.all
  end

  private

  def contact_params
    params.require(:contact).permit(:email)
  end

end
