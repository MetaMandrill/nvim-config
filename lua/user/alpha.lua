local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local startify = require'alpha.themes.startify'
startify.section.header.val = {
[[                                            ]],
[[                                            ]],
[[ __   _ _______  _____  _    _ _____ _______]],
[[ | \  | |______ |     |  \  /    |   |  |  |]],
[[ |  \_| |______ |_____|   \/   __|__ |  |  |]],
[[                                Ian's config]],
[[                                            ]],
[[                                            ]],
[[                                            ]],
[[                                            ]],
  }
startify.section.top_buttons.val = {
    startify.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
}
-- disable MRU
-- startify.section.mru.val = { { type = "padding", val = 0 } }

-- disable MRU cwd
-- startify.section.mru_cwd.val = { { type = "padding", val = 0 } }

-- disable nvim_web_devicons
-- startify.nvim_web_devicons.enabled = false
-- startify.nvim_web_devicons.highlight = false
-- startify.nvim_web_devicons.highlight = 'Keyword'
--
startify.section.bottom_buttons.val = {
    startify.button( "q", "  Quit NVIM" , ":qa<CR>"),
}
-- startify.section.footer = {
--     { type = "text", val = "footer" },
-- }
-- ignore filetypes in MRU
-- startify.mru_opts.ignore = function(path, ext)
--     return
--             (string.find(path, "COMMIT_EDITMSG"))
--         or  (vim.tbl_contains(default_mru_ignore, ext))
-- end
alpha.setup(startify.opts)

-- local dashboard = require("alpha.themes.dashboard")
-- dashboard.section.header.val = {
-- [[                                            ]],
-- [[                                            ]],
-- [[ __   _ _______  _____  _    _ _____ _______]],
-- [[ | \  | |______ |     |  \  /    |   |  |  |]],
-- [[ |  \_| |______ |_____|   \/   __|__ |  |  |]],
-- [[                                Ian's config]],
-- [[                                            ]],
-- [[                                            ]],
-- [[                                            ]],
-- [[                                            ]],
-- }
-- 
-- dashboard.section.buttons.val = {
-- 	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
-- 	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
-- 	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
-- 	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
-- 	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
-- 	dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
-- 	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
-- }
-- 
-- -- local function footer()
-- -- -- NOTE: requires the fortune-mod package to work
-- -- 	-- local handle = io.popen("fortune")
-- -- 	-- local fortune = handle:read("*a")
-- -- 	-- handle:close()
-- -- 	-- return fortune
-- -- 	return "chrisatmachine.com"
-- -- end
-- -- 
-- -- dashboard.section.footer.val = footer()
-- -- dashboard.section.footer.opts.hl = "Type"
-- 
-- dashboard.section.header.opts.hl = "Include"
-- dashboard.section.buttons.opts.hl = "Keyword"
-- 
-- dashboard.opts.opts.noautocmd = true
-- -- vim.cmd([[autocmd User AlphaReady echo 'ready']])
-- alpha.setup(dashboard.opts)
