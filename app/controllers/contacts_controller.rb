class ContactsController < ApplicationController

  def new 
    @contact = Contact.new

    
    #@hash = gmaps4rails('[{"lng":"30.252442359924316", "lat":"59.92999013067258"}]')

  end

  def create
    @contact = Contact.new(contact_params)
    ::MailSenderMailer.inquiry(@contact).deliver
    respond_to do |format|
      if @contact.save
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
