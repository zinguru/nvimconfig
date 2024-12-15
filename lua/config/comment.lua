return {
  'terrortylor/nvim-comment',
  config = function()
    require('nvim_comment').setup {
      comment_empty = false,
      line_mapping = '<C-_>',
      operator_mapping = '<C-_>',
    }
  end,
}
