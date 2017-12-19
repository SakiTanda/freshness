class ContactsController < ApplicationController

  def new 
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    #::MailSenderMailer.inquiry(@contact).deliver
    respond_to do |format|
      if @contact.save
        ::MailSenderMailer.inquiry(@contact).deliver
        format.html { redirect_to root_path, notice: 'Thanks for emailing us.' }
      else
        format.html { render 'new' }
      end
    end
  end

  private
    def contact_params
      params.require(:contact).permit(:name, :email, :subject, :message)
    end

end
