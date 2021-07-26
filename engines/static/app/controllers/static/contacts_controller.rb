require_dependency "static/application_controller"

module Static
  class ContactsController < ApplicationController
    before_action :set_contact, only: [:show, :edit, :update, :destroy]

    # GET /contacts
    def index
      @contact = Contact.first
    end

    # GET /contacts/1
    def show
    end

    # GET /contacts/new
    def new
      @contact = Contact.new
    end

    # GET /contacts/1/edit
    def edit
    end

    # POST /contacts
    def create
      @contact = Contact.new(contact_params)

      if @contact.save
        redirect_to @contact, notice: 'Contact was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /contacts/1
    def update
      if @contact.update(contact_params)
        redirect_to @contact, notice: 'Contact was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /contacts/1
    def destroy
      @contact.destroy
      redirect_to contacts_url, notice: 'Contact was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_contact
        @contact = Contact.first
      end

      # Only allow a list of trusted parameters through.
      def contact_params
        params.require(:contact).permit(:title, :description, :phonenumber, :email, :address)
      end
  end
end
