#numbers must be an array
#kind of a 'brute force' method, will write an alternative later
def bubble_sort(numbers)
  numbers.length.times do
    numbers.each_with_index do |number, index|
      if numbers[index + 1] == nil
        next
      elsif number > numbers[index + 1]
        placeholder = number
        numbers[index] = numbers[index + 1]
        numbers[index + 1] = placeholder
      else
        next
      end
    end
  end
  p numbers
end

bubble_sort([5, 4, 3, 2, 1])
# => [1, 2, 3, 4, 5]

bubble_sort([5, 7, 9, 1, 3, 5])
# => [1, 3, 5, 5, 7, 9]