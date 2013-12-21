class Notifications < ActionMailer::Base
  default from: "sale@prostodom72.ru",
          charset: "UTF-8",
          content_type: "text/plain"

  def buyer(order)
    @order = order
    mail to: order.buyer_email
  end

  def seller(order)
    @order = order
    #mail to: 'artemaminov@gmail.com'
    mail to: 'sale@prostodom72.ru'
  end


end