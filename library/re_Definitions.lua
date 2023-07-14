---@meta 
---@class re

---Creates a MessageBox with text. Note that this will pause game execution until the user presses OK.
function re.msg(text)
    
end



---Calls function when scripts are being reset. Useful for cleaning up stuff. Calls on_config_save().
function re.on_script_reset(func)
    
end

---Called when REFramework wants to save its config.
function re.on_config_save(func)
    
end

---Called every frame when the "Script Generated UI" in the menu is open.
---`imgui` functions can be called here, and will be placed in their own dropdown in the REFramework menu.
function re.on_draw_ui(func)
    
end

---Called every frame. draw functions can be used here. 
---Don't use `imgui` functions unless using begin_window etc...
---
---Try to minimize calling game methods when inside `on_frame` and `on_draw_ui`.
function re.on_frame(func)
    
end






function re.on_pre_application_entry(name, func)
    
end

---Triggers function when the application/module entry associated with name is being executed.
---This is very powerful, and can be used to run code at many important points in the engine's logic loop.
---@param name string Function names can be found by viewing `via.ModuleEntry` in the Object Explorer, or at the list [here](https://cursey.github.io/reframework-book/api/re.html#valid-names-for-reon_application_entry).
---@param func function
function re.on_application_entry(name, func)
    
end



function re.on_pre_gui_draw_element(func)
    
end

---Function prototype: function on_*_draw_element(element, context)
---
---Triggers function when a GUI element is being drawn.
---
---Requires that a `bool` is returned in `on_pre_gui_draw_element`. When `false` is returned, the GUI element is not drawn.
---
---example:
---
---```
--re.on_pre_gui_draw_element(function(element, context)
--    local game_object = element:call("get_GameObject")
--    if game_object == nil then return true end
--
--    local name = game_object:call("get_Name")
--
--    log.info("drawing element: " .. name)
--
--    -- Stops the crosshair from being drawn in most RE Engine games.
--    if name == "GUIReticle" or name == "GUI_Reticle" then
--        return false
--    end
---
---    return true
---end)
---```
---@param func fun(element:REComponent,context:void_ptr)
function re.on_gui_draw_element(func)
    
end



