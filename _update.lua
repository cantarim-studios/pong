function love.keypressed(key)
  if key == "escape" then
    love.event.quit()
  elseif key == "enter" or key == "return" then
    if gameState == "start" then
      gameState = "play"
    else
      gameState = "start"

      ball.pos = {
        x = VIRTUAL_WIDTH / 2 - ball.width / 2,
        y = VIRTUAL_HEIGHT / 2 - ball.height / 2
      }

      ball.velocity = {
        x = math.random(2) == 1 and 100 or -100,
        y = math.random(-50, 50)
      }
    end
  end
end

function love.update(dt)
  function playerControls(player)
    if love.keyboard.isDown(player.controls.up) then
      player.pos.y = math.max(0, player.pos.y + -PADDLE_SPEED * dt)
    elseif love.keyboard.isDown(player.controls.down) then
      player.pos.y = math.min(VIRTUAL_HEIGHT - player1.height, player.pos.y + PADDLE_SPEED * dt)
    end
  end

  playerControls(player1)
  playerControls(player2)

  if gameState == "play" then
    ball.pos.x = ball.pos.x + ball.velocity.x * dt
    ball.pos.y = ball.pos.y + ball.velocity.y * dt
  end
end
