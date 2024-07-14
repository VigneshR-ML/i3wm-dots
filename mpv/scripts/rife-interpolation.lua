mp.add_key_binding("i", "toggle_interpolation", function()
    local vf = mp.get_property_native("vf")
    local has_rife = false
    for _, f in ipairs(vf) do
        if f.name == "lavfi" and f.params[1] == "rife=model=rife-v2.0" then
            has_rife = true
            break
        end
    end
    if has_rife then
        mp.set_property_native("vf", {})
        mp.osd_message("RIFE Interpolation: Off")
    else
        table.insert(vf, {name = "lavfi", params = {"rife=model=rife-v2.0"}})
        mp.set_property_native("vf", vf)
        mp.osd_message("RIFE Interpolation: On")
    end
end)
