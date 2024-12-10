function retval = word_idx (distinct_wds)
    % return the word_idx dictionary HINT: containers.Map
    values = 1 : length(distinct_wds);
    retval = containers.Map(distinct_wds, values);
endfunction
