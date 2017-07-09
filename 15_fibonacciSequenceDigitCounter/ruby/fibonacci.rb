def fib_digit_counter
  n, prog_term1, prog_term2 = -1, 0, 1

  while prog_term2.to_s.length < 1000
    n += 1
    prog_term2, prog_term1 = prog_term1, prog_term1 + prog_term2
  end

  n
end

p fib_digit_counter
