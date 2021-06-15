class ContactsController < ApplicationController
  before_action :set_contact
  # GET /contacts or /contacts.json
  def index
    @contacts = @client.contacts
  end

  # GET /contacts/1 or /contacts/1.json
  def show
  end

  # GET /contacts/new
  def new
    @contact = @client.contacts.new
  end

  def create
    @contact = @client.contacts.new(contact_params)
      if @contact.save
        redirect_to client_contacts_path(@client), notice: 'Contato gravado com sucesso'
      else
        render :new
      end
  end

  private

  def contact_params
    params.require(:contact).permit(:full_name, :email, :telephone)
  end

  def set_contact
    @client = Client.find(params[:client_id])
  end
end
