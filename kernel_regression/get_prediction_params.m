function [a] = get_prediction_params (K, y, lambda)
  # TO DO: folosind metode neiterative, implementati logica
  # pentru a obtine vectorul coloana a, asa cum este descris in enuntul temei
  [n ~] = size(K);
  mat = lambda * eye(n) + K;
  L = cholesky(mat);
  Linv = get_lower_inverse(L);
  A = Linv' * Linv;
  a = lambda * A * y;
endfunction
