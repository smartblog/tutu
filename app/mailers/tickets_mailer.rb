class TicketsMailer < ApplicationMailer
  def buy_ticket(user,ticket)
    @user = user
    @ticket = ticket
    mail(to: user.email, subject: 'You buy a ticket')
  end

  def cancel_ticket(user,ticket)
    @user = user
    @ticket = ticket
    mail(to: user.email, subject: 'Your ticket is cancel')
  end
end
