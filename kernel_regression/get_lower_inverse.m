function [P] = get_lower_inverse (L)
  # TO DO: Determinati printr-o metoda matriceala neiterativa inversa
  # unei matrici de tipul lower
    [n] = size(L);
    P = zeros(n, n);
    for i = 1:n 
        P(i, i) = 1 / L(i, i);
    endfor;
      for i = 2:n
        for j = 1:(i-1)
            P(i, j) = -(( L(i, :) * P(:, j) ) / L(i, i));
            % Am pus matricile pe hartie si am dedus aceasta formula
        endfor
      endfor;
endfunction