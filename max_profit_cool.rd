def max_profit(prices)
    # declare max_profit
    max_profit = 0
    # declare min_price
    min_price = prices[0]
    # loop through prices
    prices.each do |i|
        if i >= min_price
            max_profit += i - min_price
            next
        end
    end
    max_profit
end