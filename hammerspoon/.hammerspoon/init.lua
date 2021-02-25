--- Command key combos
hyper = {'cmd', 'alt', 'ctrl', 'shift'}
launcher = {'alt', 'shift'}

hs.loadSpoon("SpoonInstall")

spoon.SpoonInstall:andUse("WindowHalfsAndThirds", {
    hotkeys = 'default'
})

spoon.SpoonInstall:andUse("WindowScreenLeftAndRight", {
    hotkeys = 'default'
})

--- move cursor between screens
function move_cursor(direction)
    return function()
        local screen = hs.mouse.getCurrentScreen()
        local nextScreen
        if direction == "right" then
            nextScreen = screen:next()
        else
            nextScreen = screen:previous()
        end

        local rect = nextScreen:fullFrame()
        local center = hs.geometry.rect(rect).center
        hs.mouse.setAbsolutePosition(center)
    end
end

hs.hotkey.bind(launcher, "Right", move_cursor('right'))
hs.hotkey.bind(launcher, "Left", move_cursor('left'))

function open_app(name)
    return function()
        hs.application.launchOrFocus(name)
        if name == 'Finder' then
            hs.appfinder.appFromName(name):activate()
        end
    end
end

--- quick open applications
hs.hotkey.bind(launcher, 'V', open_app("Visual Studio Code"))
hs.hotkey.bind(launcher, 'S', open_app("Safari"))
hs.hotkey.bind(launcher, 'T', open_app("kitty"))
hs.hotkey.bind(launcher, 'E', open_app("Spark"))

--- reload config
function reloadConfig(files)
    doReload = false
    for _,file in pairs(files) do
        if file:sub(-4) == ".lua" then
            doReload = true
        end
    end
    if doReload then
        hs.reload()
    end
end

myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig)
:start()
hs.alert.show("Config loaded")
