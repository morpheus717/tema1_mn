function B = k_secv (A, k)
  % given an array [a b a b c] and k=2
  % should return [ab ba ab bc]
  % HINT: use strjoin 
  n = length(A);
  B = {};
  for i = 1 : (n - k);
    aux = A(i : i + k - 1);
    B(i) = strjoin(aux);
  endfor
  B = B';
endfunction
