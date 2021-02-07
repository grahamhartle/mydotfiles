hyper = {'cmd', 'alt', 'ctrl', 'shift'}
hs.hotkey.bind(hyper, 'W', function()
    hs.notify.new({title="Hammerspoon", informativeText="Hello World!"}):send()
end)

hs.loadSpoon("SpoonInstall")

spoon.SpoonInstall:andUse("WindowHalfsAndThirds", {
    hotkeys = 'default'
})

spoon.SpoonInstall:andUse("WindowScreenLeftAndRight", {
    hotkeys = 'default'
})

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
