local client = {}

-- local found_curl, curl = pcall(require, "cURL.safe")

local function finished(stuff)
	-- vim.notify("all done calling curl")
	-- print(vim.inspect(stuff))
	print(stuff.stderr)
	print(stuff.stdout)
end

function client.go()
	-- print(found_curl)
	local curl_cmd = { "curl", "https://cat-fact.herokuapp.com/facts" }
	local opts = {
		text = true,
	}
	-- local ok, e = pcall(vim.system, curl_cmd, opts, finished)
	local ob = vim.system(curl_cmd, opts, finished)
	-- print(ok)
	-- vim.notify(vim.inspect(e))
end

return client
