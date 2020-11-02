class ContactsController < ApplicationController

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_back fallback_location: root_path
      flash[:notice] = "Merci pour votre enthousiasme ! Rendez-vous au lancement et d'ici là n'hésitez pas à suivre notre actu sur instagram !"
    else
      redirect_back fallback_location: root_path
      flash[:alert] = "Votre adresse e-mail ne semble pas correcte. Réessayez ou contactez-nous ;)"
    end
  end

  def thanks
  end

  private

  def contact_params
    params.require(:contact).permit(:email)
  end

end
