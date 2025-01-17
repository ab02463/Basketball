class HomeController < ApplicationController
  def home
  end

  def contact
  end

  def request_contact
    email = params[:email]
    name = params[:name]
    message = params[:message]

    if email.blank?
      flash[:alert] =  I18n.t('home.request_contact.no_email')
    else
      #ContactMailer.contact_email(email, name, message).deliver_now
      flash[:notice] = I18n.t('home.request_contact.email_sent')
    end

    redirect_to root_path
  end
end
