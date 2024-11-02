class Color:

    def __init__(self, r: int, g: int, b: int):
        super().__init__()  # Call the parent class constructor
        self.r = r
        self.g = g
        self.b = b

class Foo:
    hello: str


foo = Foo()

hello = 'hello'
print(hello[0:50])
