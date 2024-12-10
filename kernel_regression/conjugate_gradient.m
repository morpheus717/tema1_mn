function [x] = conjugate_gradient (A, b, x0, tol, max_iter) 
  # Implementati algoritmul pentru metoda gradientului conjugat
  rprev = b - A * x0;
  v = rprev;
  x = x0;
  tolsq = tol * tol;
  k = 1;
  while (k <= max_iter && rprev' * rprev > tolsq)
    t = rprev' * rprev / (v' * A * v);
    x = x + t * v;
    r = rprev - t * A * v;
    s = r' * r / (rprev' * rprev);
    v = r + s * v;
    rprev = r;
    k++;
  endwhile
endfunction
% Am realizat ca avem nevoie, in plus, doar de o variabila rprev