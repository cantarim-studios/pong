function love.keypressed(key)
  if key == "escape" then
    love.event.quit()
  elseif key == "enter" or key == "return" then
    if gameState == "start" then
      gameState = "play"
    else
      gameState = "start"
      ball:reset()
    end
  end
end

function love.update(dt)
  if gameState == "play" then
    ball:update(dt)
  end

  player1:update(dt)
  player2:update(dt)
end
