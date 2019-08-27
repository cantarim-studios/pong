function love.draw()
  push:apply("start")

  love.graphics.clear(1, 0, 0, 1)
  love.graphics.printf(MESSAGE, 0, VIRTUAL_HEIGHT / 2 - FONT_SIZE / 2, VIRTUAL_WIDTH, "center")

  love.graphics.rectangle("fill", 10, 30, 5, 20)
  love.graphics.rectangle("fill", VIRTUAL_WIDTH - 10, VIRTUAL_HEIGHT - 50, 5, 20)
  love.graphics.rectangle("fill", VIRTUAL_WIDTH / 2, VIRTUAL_HEIGHT / 2 + 50, 4, 4)

  push:apply("end")
end
