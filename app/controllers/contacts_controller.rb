class ContactsController < ApplicationController
  def create
    contact = Contact.new(params[:contact].permit(:name, :email, :user_id))
    if contact.save
      render json: contact
    else
      render(
        json: contact.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def destroy
    contact = Contact.find(params[:id])

    contact.destroy

    render json: contact
  end

  def index
    contacts = Contact.all
    render json: contacts
  end

  def show
    contact = Contact.find(params[:id])

    render json: contact
  end

  def update
    contact = Contact.find(params[:id])
    contact.update(params[:contact].permit(:name, :email, :user_id))

    render json: contact
  end
end
