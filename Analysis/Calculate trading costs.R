Cost = function(amount, commission, slippage, rate){
  commission_open = amount * commission
  slippage_open = (amount - commission_open) * slippage
  invested = amount - commission_open - slippage_open
  rate_usd = invested*rate/365*7
  slippage_close = invested * slippage
  commission_close = invested*commission
  total = commission_open + slippage_open + rate_usd + slippage_close + commission_close
  return(total/amount * 100)
}

Cost(100000, 0.002, 0.001, 0.3)
Cost(100000, 0.001, 0.000, 0.3)

Cost(100000, 0.002, 0.0005, 0.13)
Cost(100000, 0.001, 0.0000, 0.13)

Cost(100000, 0.00075, 0.0003, 0.1)
Cost(100000, 0.00075, 0.0000, 0.1)

Cost(100000, 0.0004, 0.0001, 0.10)
Cost(100000, 0.0002, 0.0000, 0.10)

Cost(100000, 0.00075, 0.0001, 0.15)
Cost(100000, -0.00025, 0.0000, 0.15)
