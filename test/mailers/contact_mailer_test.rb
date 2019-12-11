require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  
  test "should return contact email" do
    mail = ContactMailer.contact_email("grace@fakemail.com","Grace","07854416777",@message = "This is a test!")

    assert_equal ['info@aworkday.com'], mail.to
    assert_equal ['me@example.com'], mail.from
  end

end
