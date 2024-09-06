function similarity = cosine_similarity(A, B)
    % Calculează produsul scalar între cei doi vectori
    dot_product = dot(A, B);

    % Calculează normele vectorilor
    norm_A = norm(A);
    norm_B = norm(B);

    % Calculează similaritatea cosinusului
    similarity = dot_product / (norm_A * norm_B);
end

