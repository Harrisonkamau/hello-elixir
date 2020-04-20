defmodule Week do
  import Logger, only: [info: 1]

  def day_abbreviation(day) do
    cond do
      day == "Monday" -> info "M"
      day == "Tuesday" -> info "Tu"
      day == "Wednesday" -> info "We"
      day == "Thursday" -> info "Th"
      day == "Friday" -> info "F"
      day == "Saturday" -> info "Sa"
      day == "Sunday" -> info "Su"
      true -> info "Invalid day"
    end
  end
end

Week.day_abbreviation("Tuesday")
