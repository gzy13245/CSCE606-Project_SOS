require "rails_helper"

RSpec.describe UserMailer, :type => :mailer do
  describe "confirm" do
    let(:mail) { UserMailer.confirm("from@example.com", "Hi") }

    it "renders the headers" do
      expect(mail.subject).to eq("Confirm")
      expect(mail.to).to eq(["fuhaoshi@gmail.com"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Your message has been sent!")
    end
  end

end
