function love.keypressed(key)
  if key == "escape" then
    love.event.quit()
  end
end

function love.update(dt)
  -- Player 1 controls
  if love.keyboard.isDown(P1_UP) then
    if player1.y > 10 then
      player1.y = player1.y + -PADDLE_SPEED * dt
    end
  elseif love.keyboard.isDown(P1_DOWN) then
    if player1.y < (VIRTUAL_HEIGHT - player1.height - 10) then
      player1.y = player1.y + PADDLE_SPEED * dt
    end
  end

  -- Player 2 controls
  if love.keyboard.isDown(P2_UP) then
    if player2.y > 10 then
      player2.y = player2.y + -PADDLE_SPEED * dt
    end
  elseif love.keyboard.isDown(P2_DOWN) then
    if player2.y < (VIRTUAL_HEIGHT - player2.height - 10) then
      player2.y = player2.y + PADDLE_SPEED * dt
    end
  end
end
