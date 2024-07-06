local M = {}

M._gui_url = nil


local _sizes = {
	{
		name="project",
		size=vmath.vector3(sys.get_config("display.width"), sys.get_config("display.height"), 1)
	},
	{
		name="16:9",
		size=vmath.vector3(1280, 720, 1)
	},
	{
		name="square",
		size=vmath.vector3(800, 800, 1)
	},
	{
		name="9:16",
		size=vmath.vector3(720, 1280, 1)
	},
	{
		name="ultra-wide",
		size=vmath.vector3(3440, 1440, 0.5)
	},
}


function M.add(name, screen_size)
	table.insert(_sizes, {name=name, size=screen_size})
	if M._gui_url ~= nil then
		msg.post(M._gui_url, "resize-rebuild")
	end
end


function M.remove(name)
	for i, data in pairs(_sizes) do
		if name == data.name then
			table.remove(_sizes, i)
			return
		end
	end
end

function M.sizes()
	table.sort(_sizes, function(a,b) return a.name > b.name end)
	return _sizes
end

return M
