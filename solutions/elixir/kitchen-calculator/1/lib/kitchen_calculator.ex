defmodule KitchenCalculator do
  def get_volume({_, volume}) do
    volume
  end

  def to_milliliter({:cup, volume}) do
    {:milliliter, 240.0 * volume}
  end

  def to_milliliter({:fluid_ounce, volume}) do
    {:milliliter, 30.0 * volume}
  end

  def to_milliliter({:teaspoon, volume}) do
    {:milliliter, 5.0 * volume}
  end

  def to_milliliter({:tablespoon, volume}) do
    {:milliliter, 15.0 * volume}
  end

  def to_milliliter({:milliliter, volume}) do
    {:milliliter, volume}
  end

  def from_milliliter({_from_unit, volume}, :cup) do
    {:cup, volume / 240.0}
  end

  def from_milliliter({_from_unit, volume}, :fluid_ounce) do
    {:fluid_ounce, volume / 30.0}
  end

  def from_milliliter({_from_unit, volume}, :teaspoon) do
    {:teaspoon, volume / 5.0}
  end

  def from_milliliter({_from_unit, volume}, :tablespoon) do
    {:tablespoon, volume / 15.0}
  end

  def from_milliliter({_from_unit, volume}, :milliliter) do
    {:milliliter, volume}
  end

  def convert({from_unit, volume}, to_unit) do
    old_volume = to_milliliter({from_unit, volume}) |> get_volume()
    from_milliliter({from_unit, old_volume}, to_unit)
  end
end
