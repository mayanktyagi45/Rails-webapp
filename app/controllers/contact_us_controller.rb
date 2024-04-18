class ContactUsController < ApplicationController
  def index
  end

  def submit
    contact_form = ContactForm.new(
      first_name: form_params[:first_name],
      last_name: form_params[:last_name],
      email: form_params[:email],
      phone: form_params[:phone],
      message: form_params[:message]
    )

    if contact_form.save
      flash[:notice] = 'Your message has been successfully submitted!'
      redirect_to '/contact_us'
    else
      flash[:alert] = 'There was an error submitting your message.'
      redirect_to '/contact_us'
    end
  end

  private

  def form_params
    params.permit(:first_name, :last_name, :email, :phone, :message)
  end
end