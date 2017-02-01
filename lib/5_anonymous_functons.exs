 handle_open = fn
   {:ok,  file}   -> "First line: #{IO.read(file, :line)}"
   {_,    error}  -> "Error: #{:file.format_error(error)}"
 end

IO.puts handle_open.(File.open("not here"))

# Exercise: Functions-2
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

# Exercise: Functions-3
invoke_fizz_buzz = fn n -> fizz_buzz.(rem(n, 3), rem(n, 5), n) end

IO.puts invoke_fizz_buzz.(10)
IO.puts invoke_fizz_buzz.(11)
IO.puts invoke_fizz_buzz.(12)
IO.puts invoke_fizz_buzz.(13)
IO.puts invoke_fizz_buzz.(14)
IO.puts invoke_fizz_buzz.(15)
IO.puts invoke_fizz_buzz.(16)
IO.puts invoke_fizz_buzz.(17)

