def validate(n)
  arr = n.to_s.split('').map { |el| el.to_i }
  
  sum = (
      arr.length.odd? ?
        arr.map.with_index { |el, i| i.odd? ? el * 2 : el } :
        arr.map.with_index { |el, i| i.even? ? el * 2 : el }
    )
    .map { |el| el > 9 ? el - 9 : el }
    .reduce(:+)
    
  sum % 10 == 0
end
