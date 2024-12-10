function retval = gaussian_kernel (x, y, sigma)
  z = x - y;
  retval = exp( (-1) * ((z * z') / (2 * sigma * sigma)));
  % Am aflat in urma cercetarilor ca formulei ii lipseste 2ul de la numitor
  % asa ca mi-am luat libertatea de a il adauga
endfunction
