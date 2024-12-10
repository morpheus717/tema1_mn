function retval = stochastic_matrix(k_secv_corpus, corpus_words, words_set, k_secv_set, k)
    % build the stochastic matrix. Bonus if it is sparse
    % The 'stochastic' matrix SHOULD NOT be scaled (divided by sum of all)
    % It should just be entry-wise
    % This is how the checker tests it, to not have to deal with floating point errors
    word_dic = word_idx(words_set);
    secv_dic = k_secv_idx(k_secv_set);
    n = length(k_secv_set);
    m = length(words_set);
    ind_row = cell2mat(values(secv_dic, k_secv_corpus));
    ind_col = cell2mat(values(word_dic, corpus_words));
    retval = sparse(n, m);
    for i = (k + 1) : (length(corpus_words))
      retval(ind_row(i - k), ind_col(i))++;
    endfor
    % Cu ajutorul dictionarelor am reusit sa fac matricea stochastica ca pe mai
    % multi vectori de frecventa
end
