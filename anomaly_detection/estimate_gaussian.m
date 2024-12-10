% This function estimates the parameters of a Gaussian distribution using the data in X.
function [mean_values variances] = estimate_gaussian(X)
  X = X';
   [n, m] = size(X);
  mean_values = zeros(n, 1);
  variances = zeros(n, n);
  for i = 1 : n;
    for j = 1 : m;
      mean_values(i) += X(i, j);
    endfor
    mean_values(i) /= m;
  endfor
  for i = 1 : m;
    variances += (X(:, i) - mean_values) * transpose((X(:, i) - mean_values));
  endfor
    variances /= m;
    mean_values = mean_values';
endfunction
