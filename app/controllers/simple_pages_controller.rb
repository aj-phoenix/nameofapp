class SimplePagesController < ApplicationController
  def landing_page
    @products = Product.limit(3)
  end
  ActionMailer::Base.mail(from: @email,
    to: 'your-email@example.com',
    subject: "A new contact form message from #{@name}",
    body: @message).deliver_now
  end
end
