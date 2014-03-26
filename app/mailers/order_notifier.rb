class OrderNotifier < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject

  # method mail() accepts a number of parameters including :to (as
  # shown), :cc, :from, and :subject, each of which does pretty much what you would
  # expect them to do. / p.180
  #
  def received(order)
    @order = order
    mail to: order.email, subject: 'Pragmatic Store Order Confirmation'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped (order)
    @order = order
    mail to: order.email, subject: 'Pragmatic Store Order Shipped'
  end
end