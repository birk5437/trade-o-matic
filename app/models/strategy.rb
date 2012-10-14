class Strategy < ActiveRecord::Base
  has_and_belongs_to_many :stock_symbols

  def stock_symbol_letters=(options)
    options.each do |opt|
      s = StockSymbol.new(:letters => opt.strip)
      self.stock_symbols << s
    end
  end
  def stock_symbol_letters
    return self.stock_symbols.map(&:letters)
  end

end
