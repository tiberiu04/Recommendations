function reduced_mat = preprocess(mat, min_reviews)
    % Calculează numărul de recenzii pentru fiecare client
    num_reviews = sum(mat ~= 0, 2);

    % Filtrează rândurile care au un număr de recenzii mai mic decât min_reviews
    reduced_mat = mat(num_reviews >= min_reviews, :);
end

