function [a] = get_prediction_params_iterative (K, y, lambda)
  # TO DO: folosind metode iterative, implementati logica
  # pentru a obtine vectorul coloana a, asa cum este descris in enuntul temei
  [n ~] = size(K);
  A = lambda * eye(n) + K;
  a = conjugate_gradient(A, lambda * y, zeros(n, 1), 0.0001, 1000);
endfunction
