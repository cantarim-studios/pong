function love.load()
  love.graphics.setDefaultFilter("nearest", "nearest")

  love.window.setTitle("Pong")

  math.randomseed(os.time())

  smallFont = love.graphics.newFont("assets/fonts/font.ttf", FONT_SIZE)
  largeFont = love.graphics.newFont("assets/fonts/font.ttf", FONT_SIZE * 2)
  scoreFont = love.graphics.newFont("assets/fonts/font.ttf", FONT_SIZE * 4)
  love.graphics.setFont(smallFont)

  sounds = {
    ["hit"] = love.audio.newSource("assets/sounds/hit.wav", "static"),
    ["score"] = love.audio.newSource("assets/sounds/score.wav", "static"),
    ["goal"] = love.audio.newSource("assets/sounds/goal.wav", "static")
  }

  push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, LOVE_CONFIG)

  player1 = Paddle(5, 30, 5, 20, P1_UP, P1_DOWN)
  player2 = Paddle(VIRTUAL_WIDTH - 10, VIRTUAL_HEIGHT - 30, 5, 20, P2_UP, P2_DOWN)

  ball = Ball(VIRTUAL_WIDTH / 2 - 2, VIRTUAL_HEIGHT / 2 - 2, 4, 4)

  servingPlayer = 1

  gameState = "start"
end

function love.resize(w, h)
  push:resize(w, h)
end
