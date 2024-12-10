function probability = gaussian_distribution(X, mean_value, variance)
  X = X';
  [n m] = size(X);
  probability = zeros(m, 1);
  inverse = inv(variance);
  d = det(variance);
  d = sqrt(d);
  phi = 2 * pi;
  phi = power(phi, n / 2);
  for i = 1:m
    probability(i, 1) = exp(-0.5 * transpose(X(:, i) - mean_value) * inverse * (X(:, i) - mean_value));
    probability(i, 1) /= phi * d;
  endfor
endfunction
% determinam un vector de probabilitati conform formulei