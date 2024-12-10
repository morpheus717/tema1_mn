
# Tema 1

## Task 1
Am determinat valorile cerute folosind formulele date. Cea mai grea parte a acestui task a fost intelegerea a ce se cere. In cadrul estimarii valorii celui mai bun epsilon, cand calculam F1, calcularea valorilor false_pozitives, false_negatives, true_pozitives s-a dovedit
a fi putin mai incurcata, dar am gasit o regula pentru aceasta: Daca suntem pusi in situatia de a evalua un test si realitatea aferenta testului, 'pozitiv' sau 'negativ' este valoarea testului, iar fals sau adevarat este valoarea unui "and" logic intre valoarea testului si realitate, doar ca, intr-o maniera total neintuitiva, in cazul nostru valoarea negativa a "preidctions" inseamna ca valoarea "testului" e pozitiva.

## Task 2
Am implementat kernelurile. Dupa, am impartit datasetul in cel de antrenare si cel de predictie conform instructiunilor. Am construit matricea  kernel si apoi am implementat un Cholesky generic. Pentru a obtine inversa unei matrici lower, am dedus o formula pe care am aplicat-o. In final, am implementat cele doua metode de a obtine vectorul coloana a.

## Task 3
Dupa primele functii, in care practic am facut prelucrari pe siruri de caractere, folosindu-ma de cell blocks, am facut matricea stochastica
ca un vector de vectori de frecventa cu ajutorul dictionarelor din care am luat indicii corespunzatori in timp ce parcurgeam textul propriu-zis.
da am si niste comentarii ok