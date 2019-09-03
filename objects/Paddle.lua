Paddle = Class {}

function Paddle:init(x, y, width, height, up, down)
  self.x = x
  self.y = y
  self.width = width
  self.height = height
  self.dy = 0
  self.up = up
  self.down = down
  self.score = 0
end

function Paddle:update(dt)
  if self.dy < 0 then
    self.y = math.max(0, self.y + self.dy * dt)
  else
    self.y = math.min(VIRTUAL_HEIGHT - self.height, self.y + self.dy * dt)
  end

  if love.keyboard.isDown(self.up) then
    self.dy = -PADDLE_SPEED
  elseif love.keyboard.isDown(self.down) then
    self.dy = PADDLE_SPEED
  else
    self.dy = 0
  end
end

function Paddle:render()
  love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end
