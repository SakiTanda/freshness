class Contact < ApplicationRecord

  validates :name,
    presence: {message: "Please fill in your name."},
    length: {maximum: 20, message: "Maximum length of the name is 20."}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-,]+\.[a-z]+\z/i
  validates :email,
    presence: {message: "Please fill in your email."},
    uniqueness: {message: "This email address is not unique."},
    format: {with: VALID_EMAIL_REGEX, message: "Please fill in a valid email address."},
    length: {maximum: 30, message: "Maximum length of the email is 30."}

  validates :subject,
    length: {maximum: 30, message: "Maximum length of the subject is 30."}

  validates :message,
    presence: {message: "Please fill in the message."},
    length: {maximum: 300, message: "Maximum length of the message is 300."}

end
