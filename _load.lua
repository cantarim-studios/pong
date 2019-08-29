function love.load()
  love.graphics.setDefaultFilter("nearest", "nearest")

  math.randomseed(os.time())

  smallFont = love.graphics.newFont("assets/fonts/font.ttf", FONT_SIZE)
  scoreFont = love.graphics.newFont("assets/fonts/font.ttf", FONT_SIZE * 2)
  love.graphics.setFont(smallFont)

  push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, LOVE_CONFIG)

  player1 = {
    width = 5,
    height = 20,
    pos = {
      x = 10,
      y = 30
    },
    controls = {
      up = P1_UP,
      down = P1_DOWN
    },
    score = 0
  }

  player2 = {
    width = 5,
    height = 20,
    pos = {
      x = VIRTUAL_WIDTH - 10,
      y = VIRTUAL_HEIGHT - 50
    },
    controls = {
      up = P2_UP,
      down = P2_DOWN
    },
    score = 0
  }

  ball = {
    width = 4,
    height = 4,
    pos = {
      x = VIRTUAL_WIDTH / 2 - 2,
      y = VIRTUAL_HEIGHT / 2 - 2
    },
    velocity = {
      x = math.random(2) == 1 and 100 or -100,
      y = math.random(-50, 50)
    }
  }

  gameState = "start"
end
