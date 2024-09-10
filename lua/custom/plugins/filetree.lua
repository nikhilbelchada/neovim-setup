vim.keymap.set('n', '<leader>q', '<Esc>:Neotree toggle<CR>', { noremap = true, silent = true })

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function ()
	require('nvim-web-devicons').setup {
	 -- your personnal icons can go here (to override)
	 -- you can specify color or cterm_color instead of specifying both of them
	 -- DevIcon will be appended to `name`
	 override = {
	  zsh = {
	    icon = "",
	    color = "#428850",
	    cterm_color = "65",
	    name = "Zsh"
	  }
	 };
	 -- globally enable different highlight colors per icon (default to true)
	 -- if set to false all icons will have the default icon's color
	 color_icons = true;
	 -- globally enable default icons (default to false)
	 -- will get overriden by `get_icons` option
	 default = true;
	 -- globally enable "strict" selection of icons - icon will be looked up in
	 -- different tables, first by filename, and if not found by extension; this
	 -- prevents cases when file doesn't have any extension but still gets some icon
	 -- because its name happened to match some extension (default to false)
	 strict = true;
	 -- same as `override` but specifically for overrides by filename
	 -- takes effect when `strict` is true
	 override_by_filename = {
	  [".gitignore"] = {
	    icon = "",
	    color = "#f1502f",
	    name = "Gitignore"
	  }
	 };
	 -- same as `override` but specifically for overrides by extension
	 -- takes effect when `strict` is true
	 override_by_extension = {
	  ["ex"] = {
	    icon = "",
	    color = "#81e043",
	    name = "Elixir"
	  }
	 };
	}
require('nvim-web-devicons').get_icons()
    require('neo-tree').setup {
      git_status = {
            symbols = {
              -- Change type
              added     = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
              modified  = "", -- or "", but this is redundant info if you use git_status_colors on the name
              deleted   = "✖",-- this can only be used in the git_status source
              renamed   = "󰁕",-- this can only be used in the git_status source
              -- Status type
              untracked = "",
              ignored   = "",
              unstaged  = "󰄱",
              staged    = "",
              conflict  = "",
            }
          },
window = {
          position = "left",
          width = 40,
          mapping_options = {
            noremap = true,
            nowait = true,
          },
          mappings = {
            ["<space>"] = { 
                "toggle_node", 
                nowait = false, -- disable `nowait` if you have existing combos starting with this char that you want to use 
            },
            ["<2-LeftMouse>"] = "open",
            ["o"] = "open",
            ["<esc>"] = "cancel", -- close preview or floating neo-tree window
            ["P"] = { "toggle_preview", config = { use_float = true, use_image_nvim = true } },
            -- Read `# Preview Mode` for more information
            ["l"] = "focus_preview",
            ["S"] = "open_split",
            ["s"] = "open_vsplit",
            -- ["S"] = "split_with_window_picker",
            -- ["s"] = "vsplit_with_window_picker",
            ["<cr>"] = "open_tabnew",
            -- ["<cr>"] = "open_drop",
            -- ["t"] = "open_tab_drop",
            ["w"] = "open_with_window_picker",
            --["P"] = "toggle_preview", -- enter preview mode, which shows the current node without focusing
            ["C"] = "close_node",
            -- ['C'] = 'close_all_subnodes',
            ["z"] = "close_all_nodes",
            --["Z"] = "expand_all_nodes",
            ["a"] = { 
              "add",
              -- this command supports BASH style brace expansion ("x{a,b,c}" -> xa,xb,xc). see `:h neo-tree-file-actions` for details
              -- some commands may take optional config options, see `:h neo-tree-mappings` for details
              config = {
                show_path = "none" -- "none", "relative", "absolute"
              }
            },
            ["A"] = "add_directory", -- also accepts the optional config.show_path option like "add". this also supports BASH style brace expansion.
            ["d"] = "delete",
            ["r"] = "rename",
            ["y"] = "copy_to_clipboard",
            ["x"] = "cut_to_clipboard",
            ["p"] = "paste_from_clipboard",
            ["c"] = "copy", -- takes text input for destination, also accepts the optional config.show_path option like "add":
            -- ["c"] = {
            --  "copy",
            --  config = {
            --    show_path = "none" -- "none", "relative", "absolute"
            --  }
            --}
            ["m"] = "move", -- takes text input for destination, also accepts the optional config.show_path option like "add".
            ["q"] = "close_window",
            ["R"] = "refresh",
            ["?"] = "show_help",
            ["<"] = "prev_source",
            [">"] = "next_source",
            ["i"] = "show_file_details",
          }
        }
      }
    
  end,
}
