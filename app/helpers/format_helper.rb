module FormatHelper
  def format_price(price)
    if price.zero?
      "-"
    else
      number_to_currency(price, unit: "₸", precision: 0)  
    end
  end
end
