# Quine, written in Ruby.

def main
  c = 39
  quine_array = [
  '# Quine, written in Ruby.',
  '',
  'def main',
  '  c = 39',
  '  quine_array = [',
  '  ]',
  '  (0..4).each do |i|',
  '    puts quine_array[i]',
  '  end',
  '  quine_array.each do |i|',
  '    puts "  " + c.chr + i + c.chr + ","',
  '  end',
  '  (5..19).each do |i|',
  '    puts quine_array[i]',
  '  end',
  'end',
  '',
  'if __FILE__ == $0',
  '  main',
  'end',
  ]
  (0..4).each do |i|
    puts quine_array[i]
  end
  quine_array.each do |i|
    puts "  " + c.chr + i + c.chr + ","
  end
  (5..19).each do |i|
    puts quine_array[i]
  end
end

if __FILE__ == $0
  main
end