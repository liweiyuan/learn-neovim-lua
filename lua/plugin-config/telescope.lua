local status, telescope = pcall(require, 'telescope')
if not status then
    vim.notify('没有找到 telescope')
    return
end

-- local actions = require("telescope.actions")
telescope.setup({
    defaults = {
        -- 打开弹窗后进入的初始模式，默认为 insert，也可以是 normal
        initial_mode = 'insert',
        -- vertical , center , cursor
        layout_strategy = 'horizontal',
        -- 窗口内快捷键
        mappings = require('keybindings').telescopeList,
    },
    pickers = {
        find_files = {
            -- theme = "dropdown", -- 可选参数： dropdown, cursor, ivy
        },
    },
    extensions = {},
})

pcall(telescope.load_extension, 'env')
