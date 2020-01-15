class ContactController < ApplicationController

  before_action :authenticate_user!, only: [:index]


  def index

    @messages = Contact.all

  end

  def new


  end

  def create

    @contact = Contact.create(name: params[:name] , email: params[:email], subject: params[:subject], message: params[:message])

   if @contact.save
      redirect_to root_path
      flash[:success] = "Votre message a bien été envoyé !"
    else
      redirect_to root_path
      flash[:danger] = "Oooops. Votre message n'a pas pu être envoyé..."
    end

  end




end
