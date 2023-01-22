def stock_picker(prices)
  pair = Hash.new([])
  prices.each_with_index do |ele1, idx1|
    prices[idx1 + 1..].each_with_index do |ele2, idx2|
      profit = ele2 - ele1
      ele2_orignl_indx = idx2 + idx1 + 1 # for mentioning correct day below
      pair[profit] += [[idx1, ele2_orignl_indx]] unless profit.negative?
    end
  end
  pair[pair.keys.max].each { |arr| p arr } # catering multiple pairs too
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
# [1, 4]
