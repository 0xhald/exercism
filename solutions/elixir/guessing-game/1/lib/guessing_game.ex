defmodule GuessingGame do
def compare(secret_number, guess) when is_atom(guess) do
    "Make a guess"
  end
  
  def compare(secret_number, guess) when secret_number == guess do
    "Correct"
  end

  def compare(secret_number, guess) when guess == secret_number+1 do
    "So close"
  end
  
  def compare(secret_number, guess) when guess == secret_number-1 do
    "So close"
  end

  def compare(secret_number, guess) when guess < secret_number do
    "Too low"
  end

  def compare(secret_number, guess) when guess > secret_number do
    "Too high"
  end

  def compare(secret_number, _) do
    "Make a guess"
  end
  
  def compare(secret_number) do
    "Make a guess"
  end
end
