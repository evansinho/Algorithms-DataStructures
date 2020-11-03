def find_duplicates(array)
  # write your code here
  unique = Set[]
  dups = []

  array.each do |el|
    dups.push(el) if unique.include?(el)
    unique.add(el) unless unique.include?(el)
  end

  dups
end