def stock_picker(stocks)
  prices = []

  (stocks.length-1).times do |j|
    stocks.length.times do |i|
      break if i+j == stocks.length
	    prices << [j, i+j, (stocks[i+j]) - stocks[j]]
	  end
    end

  maxPrice = 0
  maxPriceArray = []

  for price in prices
	if price[2] > maxPrice
	  maxPrice = price[2]
	  maxPriceArray = price
	end
  end

  maxPriceArray[0..1]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
