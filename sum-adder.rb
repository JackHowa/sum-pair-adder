target_list = ""
target_num = ""

STDIN.read.split("\n").each do |nums_list|
  if nums_list.length > 2
    target_list = nums_list.split(" ")
  elsif nums_list.length == 1
    target_num = nums_list.to_i
  end
end

working_nums = []

target_list.each_with_index do |value, index|
  target_list.each.with_index(index + 1) do |second_value, i|
    if value.to_i + second_value.to_i == target_num
      working_nums << [value, second_value].sort()
    end
  end
end

working_nums.sort().uniq.each do |pair|
  puts pair.join(" ")
end 
