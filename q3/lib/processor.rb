def process_data(data)
  stock_tickers = []
  data.each do |item|
    # 
    stock_ticker = StockTicker.new(ticker = item["ticker"], price = item["price"], isin = item["id"] )
    stock_tickers << stock_ticker.to_json
  end
  stock_tickers
end