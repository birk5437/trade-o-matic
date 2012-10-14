class StockSymbol < ActiveRecord::Base
  has_and_belongs_to_many :strategies

  def to_s
    letters
  end
end
