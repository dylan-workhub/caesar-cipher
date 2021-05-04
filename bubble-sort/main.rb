#numbers must be an array
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
bubble_sort([5, 7, 9, 1, 3, 5])