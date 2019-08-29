function love.draw()
  push:apply("start")

  love.graphics.clear(1, 0, 0, 1)

  love.graphics.rectangle("fill", player1.pos.x, player1.pos.y, player1.width, player1.height)
  love.graphics.rectangle("fill", player2.pos.x, player2.pos.y, player2.width, player2.height)

  if gameState == "play" then
    love.graphics.setFont(scoreFont)
    love.graphics.print(tostring(player1.score), VIRTUAL_WIDTH / 2 - 50, 10)
    love.graphics.print(tostring(player2.score), VIRTUAL_WIDTH / 2 + 30, 10)

    love.graphics.rectangle("fill", ball.pos.x, ball.pos.y, ball.width, ball.height)
  else
    love.graphics.setFont(smallFont)
    love.graphics.printf(MESSAGE, 0, VIRTUAL_HEIGHT / 2 - FONT_SIZE / 2, VIRTUAL_WIDTH, "center")
  end

  push:apply("end")
end
