VARIANT = 12
LETTERS_LENGTH = 6
NUM_PART1_LENGTH = 6
NUM_PART2_LENGTH = 2

def random_num_str(str_length)
  arr = Array.new
  str_length.times { arr << rand(0...10) }
  arr.join
end

def generate
  # pattern: "ABCDEF-123456-98"
  letters = ''
  LETTERS_LENGTH.times { letters += ('A'..'Z').to_a.sample }
  num_part1 = random_num_str(NUM_PART1_LENGTH)
  num_part2 = random_num_str(NUM_PART2_LENGTH)
  "#{letters}-#{num_part1}-#{num_part2}"
end
