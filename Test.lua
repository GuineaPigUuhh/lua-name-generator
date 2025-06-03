local generator = require("lua-name-generator")

io.write("Write the length: ")
io.flush()
input = io.read("*n")

print(generator.generate(input))
