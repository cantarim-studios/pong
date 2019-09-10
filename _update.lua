function love.keypressed(key)
  if key == "escape" then
    love.event.quit()
  elseif key == "enter" or key == "return" then
    if gameState == "start" then
      gameState = "serve"
    elseif gameState == "serve" then
      gameState = "play"
    elseif gameState == "done" then
      gameState = "serve"
      ball:reset()
      player1.score = 0
      player2.score = 0

      if winningPlayer == 1 then
        servingPlayer = 2
      else
        servingPlayer = 1
      end
    end
  end
end

function love.update(dt)
  if gameState == "serve" then
    ball.dy = math.random(-50, 50)
    if servingPlayer == 1 then
      ball.dx = math.random(140, 200)
    else
      ball.dx = -math.random(140, 200)
    end
  elseif gameState == "play" then
    if ball:collides(player1) then
      ball.dx = -ball.dx * SPEED_MULTIPLIER
      ball.x = player1.x + 5

      if ball.dy < 0 then
        ball.dy = -math.random(10, 150)
      else
        ball.dy = math.random(10, 150)
      end

      sounds.hit:play()
    end

    if ball:collides(player2) then
      ball.dx = -ball.dx * SPEED_MULTIPLIER
      ball.x = player2.x - 5

      if ball.dy < 0 then
        ball.dy = -math.random(10, 150)
      else
        ball.dy = math.random(10, 150)
      end
      sounds.hit:play()
    end

    if ball.y <= 0 then
      ball.y = 0
      ball.dy = -ball.dy
      sounds.hit:play()
    end

    if ball.y >= VIRTUAL_HEIGHT - ball.height then
      ball.y = VIRTUAL_HEIGHT - ball.height
      ball.dy = -ball.dy
      sounds.hit:play()
    end

    if ball.x < 0 then
      servingPlayer = 1
      sounds.goal:play()
      player2.score = player2.score + 1
      if player2.score == 10 then
        winningPlayer = 2
        gameState = "done"
      else
        ball:reset()
        gameState = "serve"
        sounds.score:play()
      end
    end

    if ball.x > VIRTUAL_WIDTH then
      servingPlayer = 2
      sounds.goal:play()
      player1.score = player1.score + 1
      if player1.score == 10 then
        winningPlayer = 1
        gameState = "done"
      else
        ball:reset()
        gameState = "serve"
        sounds.score:play()
      end
    end

    ball:update(dt)
  end

  player1:update(dt)
  player2:update(dt)
end
