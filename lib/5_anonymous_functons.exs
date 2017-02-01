 handle_open = fn
   {:ok,  file}   -> "First line: #{IO.read(file, :line)}"
   {_,    error}  -> "Error: #{:file.format_error(error)}"
 end

 IO.puts handle_open.(File.open("not here"))
 
@doc """
  Exercise : Functions-2
  Write a function that takes three arguments.
  If the first two are zero, return "FizzBuzz".
  If there first is zero, return "Fizz".
  If the second is Zero, return "Buzz".
  Otherwise return the third argument.
"""
fizz_buzz = fn
   (0, 0, _)  -> "FizzBuzz"
   (0, _, _)  -> "Fizz"
   (_, 0, _)  -> "Buzz"
   (_, _, c)  -> c
 end

IO.puts fizz_buzz.(0, 0, "str")
IO.puts fizz_buzz.(0, "str", "str")
IO.puts fizz_buzz.("str", 0, "str")
IO.puts fizz_buzz.("str", "str", "str")
