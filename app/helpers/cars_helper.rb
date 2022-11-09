module CarsHelper
  def calculate_months entry_date, current_date
    diff_in_days = current_date -  entry_date
    return 0 if diff_in_days < 30
    ((diff_in_days).to_f / 365 * 12).round
  end

  def get_price_deprecate price, entry_date, today = Date.today
    months = calculate_months entry_date, today
    # The price depreciates 2% every mont
    
    if months >= 1 
      # price => 100%
      # ? => percentage
      percentage = 2 * months
      deprecated_price = ((percentage * price ) / 100 ).to_f
      (price - deprecated_price).to_f
    else
      return price
    end
  end
end

