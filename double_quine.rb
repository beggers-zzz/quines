# Double quine. Ruby => Python => Ruby ...

def main

  #################################################
  #                PYTHON DATA                    #
  #################################################

  pq = [
    '# Double quine. Python => Ruby => Python ...',
    '',
    'def main():',
    '',
    '  #################################################',
    '  #                PYTHON DATA                    #',
    '  #################################################',
    '',
    '  pq = [',
    '  ]',
    '',
    '  #################################################',
    '  #                RUBY DATA                      #',
    '  #################################################',
    '',
    '  rq = [',
    '  ]',
    '',
    '  #################################################',
    '  #           WHERE THE MAGIC HAPPENS             #',
    '  #################################################',
    '',
    '  c = 39',
    '  for x in range(0,9):',
    '    print rq[x]',
    '  for x in range(0, len(pq)):',
    '    s = ""',
    '    if x != len(pq) - 1:',
    '      s = ","',
    '    print "    " + chr(c) + pq[x] + chr(c) + s',
    '  for x in range(9,16):',
    '    print rq[x]',
    '  for x in range(0, len(rq)):',
    '    s = ""',
    '    if x != len(rq) - 1:',
    '      s = ","',
    '    print "    " + chr(c) + rq[x] + chr(c) + s',
    '  for x in range(16,49):',
    '    print rq[x]',
    '',
    'if __name__ == "__main__":',
    '  main()'
  ]

  #################################################
  #                RUBY DATA                      #
  #################################################

  rq = [
    '# Double quine. Ruby => Python => Ruby ...',
    '',
    'def main',
    '',
    '  #################################################',
    '  #                PYTHON DATA                    #',
    '  #################################################',
    '',
    '  pq = [',
    '  ]',
    '',
    '  #################################################',
    '  #                RUBY DATA                      #',
    '  #################################################',
    '',
    '  rq = [',
    '  ]',
    '',
    '  #################################################',
    '  #           WHERE THE MAGIC HAPPENS             #',
    '  #################################################',
    '',
    '  c = 39',
    '  (0..8).each do |i|',
    '    puts pq[i]',
    '  end',
    '  (0..pq.length - 1).each do |i|',
    '    print "    " + c.chr + pq[i] + c.chr',
    '    s = ""',
    '    s = "," unless i == pq.length',
    '    puts s',
    '  end',
    '  (9..15).each do |i|',
    '    puts pq[i]',
    '  end',
    '  (0..rq.length - 1).each do |i|',
    '    print "    " + c.chr + rq[i] + c.chr',
    '    s = ""',
    '    s = "," unless i == rq.length',
    '    puts s',
    '  end',
    '  (16..42).each do |i|',
    '    puts pq[i]',
    '  end',
    'end',
    '',
    'if __FILE__ == $0',
    '  main',
    'end'
  ]

  #################################################
  #           WHERE THE MAGIC HAPPENS             #
  #################################################

  c = 39
  (0..8).each do |i|
    puts pq[i]
  end
  (0..pq.length - 1).each do |i|
    print "    " + c.chr + pq[i] + c.chr
    s = ""
    s = "," unless i == pq.length
    puts s
  end
  (9..15).each do |i|
    puts pq[i]
  end
  (0..rq.length - 1).each do |i|
    print "    " + c.chr + rq[i] + c.chr
    s = ""
    s = "," unless i == rq.length
    puts s
  end
  (16..42).each do |i|
    puts pq[i]
  end
end

if __FILE__ == $0
  main
end
