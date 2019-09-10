function love.draw()
  push:apply("start")

  love.graphics.clear(1, 0, 0, 1)

  if gameState == "play" then
    love.graphics.setFont(scoreFont)
    love.graphics.print(tostring(player1.score), VIRTUAL_WIDTH / 2 - 50, 10)
    love.graphics.print(tostring(player2.score), VIRTUAL_WIDTH / 2 + 30, 10)
    ball:render()
  elseif gameState == "serve" then
    love.graphics.setFont(smallFont)
    love.graphics.printf("Player " .. tostring(servingPlayer) .. "'s serve!", 0, 10, VIRTUAL_WIDTH, "center")
    love.graphics.printf("Press Enter to serve!", 0, 20, VIRTUAL_WIDTH, "center")
    ball:render()
  elseif gameState == "done" then
    love.graphics.setFont(largeFont)
    love.graphics.prinf("Player " .. tostring(winningPlayer) .. " wins!", 0, 10, VIRTUAL_WIDTH, "center")
    love.graphics.setFont(smallFont)
    love.graphics.printf("Press Enter to restart!", 0, 30, VIRTUAL_WIDTH, "center")
  else
    love.graphics.setFont(smallFont)
    love.graphics.printf(MESSAGE, 0, VIRTUAL_HEIGHT / 2 - FONT_SIZE / 2, VIRTUAL_WIDTH, "center")
  end

  player1:render()
  player2:render()

  --displayFPS()

  push:apply("end")
end

function displayFPS()
  love.graphics.setFont(smallFont)
  love.graphics.setColor(0, 1, 0, 1)
  love.graphics.print("FPS: " .. tostring(love.timer.getFPS()), 10, 10)
end
