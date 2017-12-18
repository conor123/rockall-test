class StockTicker
  attr_accessor :ticker, :price, :isin

  def initialize(ticker, price, id)
    @ticker = ticker
    @price = price
    @isin = id
  end
  
  def as_json(options={})
    {
      ticker: @ticker,
      price: @price,
      isin: @isin
    }
  end

  def to_json(*options)
    as_json(*options).to_json(*options)
  end
end