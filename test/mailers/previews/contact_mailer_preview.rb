# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

    def contact_email
        ContactMailer.contact_email("grace@fakemail.com","Grace","07854416777",@message="This is a test!")
    end

end
