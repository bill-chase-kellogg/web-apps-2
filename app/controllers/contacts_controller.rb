class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
  end
  
  def show
    @contact = Contact.find(params["id"])
  end

  def new
    @contact = Contact.new
    @contact.company_id = params["company_id"]  
  end

  def create
    @contact = Contact.new(params["contact"])
    @contact.save
    redirect_to "/companies/#{@contact.company_id}"
  end

end
