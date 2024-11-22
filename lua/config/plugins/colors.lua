function SetColors(color)
	color = color or 'rose-pine-moon'
	vim.cmd.colorscheme(color)

--	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	{
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                disable_background = false,
                variant = "auto",
                dark_variant = "moon",
                styles = {
                    italic = false,
                },
            })

            SetColors();
        end
    },
}