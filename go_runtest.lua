local function get_package_name()
	local test_dir = vim.fn.fnamemodify(vim.fn.expand("%:.:h"), ":r")
	return "./" .. test_dir
end

local function getBufferLines()
	local row, _ = unpack(vim.api.nvim_win_get_cursor(0))
	local lines = vim.api.nvim_buf_get_lines(0, 0, row, false)
	return lines
end

local function startsWith(str, prefix)
	return string.sub(str, 1, string.len(prefix)) == prefix
end

local function iterateLines()
	local lines = getBufferLines()
	for i = #lines, 1, -1 do
		if startsWith(lines[i], "func") then
			local functionName = string.match(lines[i], "func%s+([%w_]+)")
			return functionName
		end
	end
end

vim.keymap.set("n", "<leader>rt", function()
	local pkg_name = get_package_name()
	local ft = vim.api.nvim_buf_get_option(0, "filetype")

	assert(ft == "go", "can only run test in a .go file, not " .. ft)

	local test_name = iterateLines()
	vim.cmd(":split term:// go clean -testcache && go test -v " .. pkg_name .. " -run " .. test_name)
end, { desc = "run go test under the cursor" })
