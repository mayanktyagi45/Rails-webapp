class ContactForm < ApplicationRecord
  validates :first_name, :last_name, :email, :phone, presence: true

  validates :phone, numericality: true,
                    length: {is: 10}

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

end
