function recoms = recommendations(path, liked_theme, num_recoms, min_reviews, num_features)
    % 1. Load the matrix from the .csv file
    mat = read_mat(path);

    % 2. Preprocess the matrix
    mat = preprocess(mat, min_reviews);

    % 3. Compute the reduced SVD of the matrix
    [U, S, V] = svds(mat, num_features);

    % 4. Compute the cosine similarity between the liked theme and all themes
    similarities = zeros(size(V, 2), 1);
    for i = 1:size(V, 2)
        similarities(i) = cosine_similarity(V(:, liked_theme), V(:, i));
    end

    [~, sorted_indices] = sort(similarities, 'descend');

    recoms = sorted_indices(1:num_recoms);
end

