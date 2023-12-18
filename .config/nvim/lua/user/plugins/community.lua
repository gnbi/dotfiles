return {
  -- Add the community repository of plugin specifications
  'AstroNvim/astrocommunity',
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = 'astrocommunity.colorscheme.rose-pine' },
  { import = 'astrocommunity.pack.rust' },
  { import = 'astrocommunity.pack.lua' },
  { import = 'astrocommunity.pack.java' },
  { import = 'astrocommunity.pack.cpp' },
  { import = 'astrocommunity.markdown-and-latex.vimtex' },
  { import = 'astrocommunity.project.project-nvim' }
}
