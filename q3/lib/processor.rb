class Processor
  def self.process_data(data)
    logger = Logger.instance
    logger.level = Logger::INFO

    stock_tickers = []
    data.each do |item|
      msg = ""
      if ( item["ticker"] == nil || item["price"] == nil || item["id"] == nil)
        msg = "INFO: ticker: " + item["ticker"].to_s + ", price: " + item["price"].to_s + ", id: " + item["id"],to_s
        logger.info( msg )
      end
      stock_ticker = StockTicker.new(ticker = item["ticker"], price = item["price"], isin = item["id"] )
      stock_tickers << stock_ticker.to_json
    end
    stock_tickers
  end
end