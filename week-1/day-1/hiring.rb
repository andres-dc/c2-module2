def hiring (years_of_experience, github_points, languages_worked_with, applied_recently, age)
  if (
    languages_worked_with.include?('Ruby') &&
    (years_of_experience >= 2 || github_points >= 500) &&
    !(applied_recently  || age < 15)
  )
    "Hired!"
  else
    "Not hired."
  end
end
