class PagesController < ApplicationController
  def home
    @contact = Contact.new
  end

  def legal_notice
  end

  def privacy_policy
  end

  def cgu
  end
end
