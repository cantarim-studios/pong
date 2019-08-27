function love.load()
  love.graphics.setDefaultFilter("nearest", "nearest")

  smallFont = love.graphics.newFont("assets/fonts/font.ttf", FONT_SIZE)
  love.graphics.setFont(smallFont)

  push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, LOVE_CONFIG)
end
