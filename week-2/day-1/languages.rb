def my_languages(results)
  results
    .sort_by { |_k, v| v }
    .reverse
    .map { |k, v| k if v >= 60 }
    .compact
end
