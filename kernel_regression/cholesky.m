function [L] = cholesky (A)
	[n, ~] = size(A);
	L = zeros(n, n);

  for i = 1:n
    L(i, i) = sqrt(A(i, i) - sum(L(i, 1 : (i - 1)) .^ 2));
    for j = (i + 1) : n
      L(j, i) = (A(i, j) - L(i, 1 : (i - 1)) * L(j, 1 : (i - 1))') / L(i, i);
    endfor
  endfor
endfunction
