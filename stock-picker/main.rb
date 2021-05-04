#stocks must be an array
def stock_picker(stocks)
  if stocks == []
    return "Please enter a valid array."
  end
  stock_total_array = []
  stocks.each_with_index do |stock, index|
    stocks[index + 1..-1].each_with_index do |add_stock, inner_index|
      current_total = add_stock - stock
      index_array = [index, inner_index + index + 1]
      current_hash = {
        total: current_total,
        dates: index_array 
      }
      stock_total_array << current_hash
    end
  end
  sorted_totals = stock_total_array.sort_by {|hash| hash[:total]}
  return sorted_totals[-1][:total]
end

stock_picker([1, 3, 6, 7, 29])