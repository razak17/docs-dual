# defmodule Hello
defmodule HelloWorld do
  def greet do
    IO.puts("Hello, World!")
  end
end

defmodule HelloMom do
  def greet do
    IO.puts("Hello, Mom!")
  end
end

HelloWorld.greet()
HelloMom.greet()
