defmodule BirdCount do
  def today(list) do
    list |> List.first(nil)
  end

  def increment_day_count([]) do
    [1]
  end

  def increment_day_count([head | tail]) do
    [head + 1 | tail]
  end

  def has_day_without_birds?([]) do
    false
  end

  def has_day_without_birds?([head | tail]) do
    case head do
      0 -> true
      _ -> has_day_without_birds?(tail)
    end
  end

  def total(list) do
    total_birds(list, 0)
  end

  defp total_birds([head | tail], accumulator) do
    total_birds(tail, accumulator + head)
  end

  defp total_birds([], accumulator) do
    accumulator
  end

  def busy_days(list) do
    busy_daysp(list, 0)
  end

  defp busy_daysp([], count) do
    count
  end

  defp busy_daysp([head | tail], count) when head >= 5 do
    busy_daysp(tail, count + 1)
  end

  defp busy_daysp([_ | tail], count) do
    busy_daysp(tail, count)
  end
end
