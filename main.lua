SCALE_FACTOR = 1

function love.load()
    key = ""
    love.window.setMode(love.graphics.getWidth() * SCALE_FACTOR, love.graphics.getHeight() * SCALE_FACTOR)
end

function love.update()
end

function love.keypressed(k)
    if k == "escape" then
        os.exit()
    else
        key = tostring(k)
    end
end

function love.draw()
    love.graphics.scale(SCALE_FACTOR)
    local major, minor, revision, codename = love.getVersion()
    local str = string.format("Version %d.%d.%d - %s", major, minor, revision, codename)
    love.graphics.print(str, 20, 20)
    love.graphics.print(key, 20, 60)
end