# double quotes are binary, single quotes are lists

:io.format("~.2f~n", [5.382]) #convert a float to a string with 2 decimal digits (Erlang)
IO.puts System.get_env("PATH") #get the value of an operating system environment variable (Elixir)
IO.puts Path.extname("output.txt") #Return extension of a file name (Elixir)
IO.puts System.cwd() #Return the current working dir (Elixir)

# http://expm.co/json (library to convert a string containing JSON)

IO.puts System.cmd('ps') # Execute a command in your operating system's shell
