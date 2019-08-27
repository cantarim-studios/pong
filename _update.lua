function love.keypressed(key)
  if key == "escape" then
    love.event.quit()
  end
end

function love.update(dt)
  function playerControls(player)
    if love.keyboard.isDown(player.controls.up) then
      if player.y > 10 then
        player.y = player.y + -PADDLE_SPEED * dt
      end
    elseif love.keyboard.isDown(player.controls.down) then
      if player.y < (VIRTUAL_HEIGHT - player1.height - 10) then
        player.y = player.y + PADDLE_SPEED * dt
      end
    end
  end

  playerControls(player1)
  playerControls(player2)
end
