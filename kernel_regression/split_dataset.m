function [X_train, y_train, X_pred, y_pred] = split_dataset (X, y, percentage)
  # TO DO: împarte setul de date în 2 seturi: 
  # un set de training si un set de test,
  # ambele reprezentate printr-o matrice de features un vector de clase
  # percentage este un parametru considerat intre 0 si 1
  
  # Fiecare linie a matricii X reprezinta x^{(i)} si fiecare element de pe
  # linia coloanei y reprezinta y^{(i)}
  [n m] = size(X);
  first_percent = round(n * percentage);
  last_percent = n - first_percent;
  X_train = zeros(first_percent, m);
  y_train = zeros(first_percent, 1);
  X_pred = zeros(last_percent, m);
  y_pred = zeros(last_percent, 1);
  X_train = X(1:first_percent, :);
  y_train = y(1:first_percent);
  X_pred = X((first_percent + 1):n, :);
  y_pred = y((first_percent + 1):n); 
endfunction
