defmodule FreelancerRates do
  def daily_rate(hourly_rate), do: 8.0 * hourly_rate

  def apply_discount(before_discount, discount), do: (1.0 - discount / 100) * before_discount

  def monthly_rate(hourly_rate, discount) do
    daily_rate(hourly_rate) * 22
      |> apply_discount(discount)
        |> ceil
  end

  def days_in_budget(budget, hourly_rate, discount) do
    budget / (daily_rate(hourly_rate)
      |> apply_discount(discount))
        |> Float.floor(1)
  end
end
