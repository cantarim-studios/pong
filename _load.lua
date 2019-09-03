function love.load()
  love.graphics.setDefaultFilter("nearest", "nearest")

  love.window.setTitle("Pong")

  math.randomseed(os.time())

  smallFont = love.graphics.newFont("assets/fonts/font.ttf", FONT_SIZE)
  scoreFont = love.graphics.newFont("assets/fonts/font.ttf", FONT_SIZE * 2)
  love.graphics.setFont(smallFont)

  push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, LOVE_CONFIG)

  player1 = Paddle(5, 30, 5, 40, P1_UP, P1_DOWN)
  player2 = Paddle(VIRTUAL_WIDTH - 10, VIRTUAL_HEIGHT - 30, 5, 40, P2_UP, P2_DOWN)

  ball = Ball(VIRTUAL_WIDTH / 2 - 2, VIRTUAL_HEIGHT / 2 - 2, 4, 4)

  gameState = "start"
end
