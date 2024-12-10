
function [false_pozitives, false_negatives, true_pozitives] = check_predictions(predictions, truths)
    false_pozitives = 0;
    false_negatives = 0;
    true_pozitives = 0;
    [n ~] = size(predictions);
    for i =1:n
      if (truths(i) == 1 && predictions(i) <= 0)
        true_pozitives++;
      elseif (truths(i) == 1 && predictions(i) > 0)
        false_negatives++;
      elseif (truths(i) == 0 && predictions(i) <= 0)
        false_pozitives++;
      endif
    endfor
endfunction
% In urma examinarii atente si foarte indelungate a problemei si a testelor,
% am concluzionat ca logica e in felul urmator:
% Daca suntem pusi in situatia de a evalua un test si realitatea 
% aferenta testului, 'pozitiv' sau 'negativ' este valoarea testului,
% iar fals sau adevarat este un and logic intre valoarea testului si 
% realitate, doar ca, intr-o maniera total neintuitiva,
% in cazul nostru cand testul e negativ e de fapt pozitiv.