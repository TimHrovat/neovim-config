vim.keymap.set("n", "<leader>pv", ':NvimTreeFindFile<CR>')

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")

function containsFileExtension(str)
    return string.match(str, "%.vue$") or string.match(str, "%.ts$") or string.match(str, "%.js$")
end


-- format function modified to support blade templates
vim.keymap.set("n", "<leader>f", function()
    local filename = vim.fn.expand('%:t')
    local filepath = vim.fn.expand('%:p')

    if string.find(filename, '.blade.php') then
        local cmd = string.format("silent!! %s -w %s", vim.fn.shellescape("blade-formatter"), vim.fn.shellescape("%"))
        vim.cmd(cmd)
    elseif containsFileExtension(filename) then
        vim.cmd(string.format("silent!! prettier %s --write", filepath))
    else
        vim.lsp.buf.format()
    end
end)

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set("n", "<leader>t", ':split | term<CR>i')

-- auto close brackets
vim.keymap.set("i", "(", "()<left>")
vim.keymap.set("i", "[", "[]<left>")
vim.keymap.set("i", "{", "{}<left>")
vim.keymap.set("i", "\"", "\"\"<left>")
vim.keymap.set("i", "'", "''<left>")

vim.keymap.set("n", "<leader>wq", "<C-w><S-w>")
vim.keymap.set("n", "<leader>we", "<C-w><C-w>")
vim.keymap.set("n", "<leader>ww", "<C-w><C-v><C-w><C-w>")

vim.keymap.set("n", "<C-l>", "20zl", { silent = true })
vim.keymap.set("n", "<C-h>", "20zh", { silent = true })

