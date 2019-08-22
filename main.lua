require "config"

push = require "lib.push"

function love.load()
  love.graphics.setDefaultFilter("nearest", "nearest")
  push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, LOVE_CONFIG)
end

function love.keypressed(key)
  if key == "escape" then
    love.event.quit()
  end
end

function love.draw()
  push:apply("start")
  love.graphics.printf(MESSAGE, 0, VIRTUAL_HEIGHT / 2 - 6, VIRTUAL_WIDTH, "center")
  push:apply("end")
end
