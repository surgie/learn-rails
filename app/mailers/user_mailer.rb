class UserMailer < ApplicationMailer
    default from: "taslearnrails+support@gmail.com"

    def contact_email(contact)
        @contact = contact
        mail(to: Figaro.env.owner_email, from: @contact.email, :subject => "Website Contact")
    end
end
