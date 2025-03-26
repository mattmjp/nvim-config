function ColorMyPencils(color)
	color = color or "nordic"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
        "rebelot/kanagawa.nvim",
    },

    {
        "shaunsingh/nord.nvim",
    },

    {
        'AlexvZyl/nordic.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('nordic').load({
                transparent = {
                    bg = true,
                    float = true,
                },
                telexcope = {
                    style = 'classic',
                },
            })
        end
    },

    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup()
        end
    },


}
