local setup, codeium = pcall(require, "codeium")
if not setup then
  return
end

codeium.setup({
  function()
    vim.keymap.set("i", "<C-g>", function()
      return vim.fn["codeium#Accept"]()
    end, { expr = true })
    vim.keymap.set("i", "<c-]>", function()
      return vim.fn["codeium#CycleCompletions"](1)
    end, { expr = true })
    vim.keymap.set("i", "<c-[>", function()
      return vim.fn["codeium#CycleCompletions"](-1)
    end, { expr = true })
    vim.keymap.set("i", "<c-|>", function()
      return vim.fn["codeium#Clear"]()
    end, { expr = true })
  end,
})
