% Finds the best threshold to use for selecting outliers.
function [best_epsilon best_F1 associated_precision associated_recall] = optimal_threshold(truths, probabilities)
    best_epsilon = 0;
    best_F1 = 0;
    associated_precision = 0;
    associated_recall = 0;
    minim = min(probabilities);
    maxim = max(probabilities);
    pas = (maxim - minim) / 1000;
    for eps = minim:pas:maxim;
      predictions = probabilities - eps;
      [false_pozitives, false_negatives, true_pozitives] = check_predictions(predictions, truths);
      precision = true_pozitives / (true_pozitives + false_pozitives);
      recall = true_pozitives / (true_pozitives + false_negatives);
      F1 = 2 * precision * recall / (precision + recall);
      if (F1 > best_F1)
        best_F1 = F1;
        best_epsilon = eps;
        associated_precision = precision;
        associated_recall = recall;
      endif
    endfor
endfunction
