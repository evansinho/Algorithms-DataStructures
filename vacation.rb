def solution(y, a, b, w)
  leap = true if y % 4 == 0

  months = {
   'January' =>  31,
   'February' => leap == true ? 29 : 28 ,
   'March' => 31,
   'April' => 30,
   'May' => 31,
   'June' => 30,
   'July' => 31,
   'August' => 31,
   'September' => 30,
   'October' => 31,
   'November' => 30,
   'December' => 31
  }
  first_month = months[a]
  last_month = months[b]

  total_days = first_month + last_month

  if w != 'Monday'
    return ((total_days - 7) / 7).floor
  else
    return (total_days / 7).floor
  end
end
