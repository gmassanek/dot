" Only load Copilot for supported filetypes
let g:copilot_filetypes = {
  \ '*': v:false,
  \ 'javascript': v:true,
  \ 'typescript': v:true,
  \ 'python': v:true,
  \ 'lua': v:true,
  \ 'ruby': v:true,
  \ 'go': v:true,
  \ 'rust': v:true,
  \ 'c': v:true,
  \ 'cpp': v:true,
  \ 'java': v:true,
  \ 'sh': v:true,
  \ 'zsh': v:true,
  \ 'vim': v:true,
  \ 'markdown': v:true,
  \ 'yaml': v:true,
  \ }

" Disable default <Tab> mapping so you can use your own completion
let g:copilot_no_tab_map = v:true

" Use <leader> key mappings to interact with Copilot
" Accept suggestion with <leader>co
imap <silent><script><expr> <leader>cc copilot#Accept("\<CR>")

" Cycle through suggestions
imap <silent><script><expr> <leader>cn copilot#Next()
imap <silent><script><expr> <leader>cp copilot#Previous()

" Dismiss suggestion
imap <silent><script><expr> <leader>cx copilot#Dismiss()

" Optional: enable Copilot in insert mode only
" (it behaves best when you're typing in insert mode)
autocmd InsertEnter * silent! call copilot#Enable()
autocmd InsertLeave * silent! call copilot#Disable()

" Optional: display status in the statusline
function! CopilotStatus() abort
  return get(g:, 'copilot_status', '')
endfunction
set statusline+=%{CopilotStatus()}

""" Copilot Chat
lua << EOF
require("CopilotChat").setup({
  -- config options (if any) go here
})

vim.keymap.set("n", "<leader>C", function()
  require("CopilotChat").toggle()
end, { desc = "Toggle Copilot Chat" })

vim.api.nvim_create_autocmd("FileType", {
  pattern = "copilot-chat",
  callback = function()
    vim.keymap.set("i", "<C-J>", "<C-W>j", { buffer = true })
    vim.keymap.set("n", "<C-J>", "<C-W>j", { buffer = true })

    vim.keymap.set("i", "<C-K>", "<C-W>k", { buffer = true })
    vim.keymap.set("n", "<C-K>", "<C-W>k", { buffer = true })

    vim.keymap.set("i", "<C-H>", "<C-W>h", { buffer = true })
    vim.keymap.set("n", "<C-H>", "<C-W>h", { buffer = true })

    vim.keymap.set("i", "<C-L>", "<C-W>l", { buffer = true })
    vim.keymap.set("n", "<C-L>", "<C-W>l", { buffer = true })
  end,
})
EOF
