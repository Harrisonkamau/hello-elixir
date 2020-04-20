defmodule Dates do
  import Logger

  def describe_date(date) do
    case date do
      { 1, 1, _ } -> info "Happy New Years Day!"
      { 1, _, _ } -> info "It's a brand new month"
      { 12, 12, _}  -> info "Happy Jamhuri Day!"
      { 25, 12, _ } -> info "Merry christmas!"
      { 20, 10, _ } -> info "Happy Madaraka Day!"
      { _, month, _ } when month <= 12 -> info "Just an average day!"
      { _, _, _ } -> error "Invalid date!"
    end
  end
end

Dates.describe_date({ 1, 1, 2020 }) # Happy New Years Day!
Dates.describe_date({ 1, 4, 2019 }) # It's a brand new month
Dates.describe_date({ 12, 12, 1967 }) # Happy Jamhuri Day!
Dates.describe_date({ 25, 12, 2017 }) # Merry christmas!
Dates.describe_date({ 20, 10, 2019 }) # Happy Madaraka Day!
Dates.describe_date({ 20, 09, 2019 }) # It's a brand new month
Dates.describe_date({ 20, 14, 2019 }) # Invalid date - since month > 12
