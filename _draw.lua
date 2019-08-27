function love.draw()
  push:apply("start")

  love.graphics.clear(1, 0, 0, 1)
  love.graphics.printf(MESSAGE, 0, VIRTUAL_HEIGHT / 2 - FONT_SIZE / 2, VIRTUAL_WIDTH, "center")

  love.graphics.setFont(scoreFont)
  love.graphics.print(tostring(player1.score), VIRTUAL_WIDTH / 2 - 50, 10)
  love.graphics.print(tostring(player2.score), VIRTUAL_WIDTH / 2 + 30, 10)

  love.graphics.rectangle("fill", 10, player1.y, player1.width, player1.height)
  love.graphics.rectangle("fill", VIRTUAL_WIDTH - 10, player2.y, player2.width, player2.height)
  love.graphics.rectangle("fill", VIRTUAL_WIDTH / 2, VIRTUAL_HEIGHT / 2 + 50, 4, 4)

  push:apply("end")
end
