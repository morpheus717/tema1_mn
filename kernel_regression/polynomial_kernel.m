function retval = polynomial_kernel (x, y, d)
  # TO DO: implement polynomial kernel function
  retval = power(1 + y * x', d);
endfunction
