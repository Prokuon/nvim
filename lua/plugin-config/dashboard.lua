local status, db = pcall(require, "dashboard")
    if not status then
        vim.notify("没有找到 dashboard")
    return
end

db.setup({
    theme = 'hyper',
    config = {
        header = {
            [[]],
            [[ ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
            [[ ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]],
            [[ ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]],
            [[ ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
            [[ ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
            [[ ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]],
            [[]],
            -- [[]],
            -- [[             ⣀⣶⣶⣶⣶⣶⣶⣶⣶⣀                     ]],
            -- [[             ⣿⣿⣤⣿⣿⣿⣿⣿⣿⣿                     ]],
            -- [[             ⣿⣿⣿⣿⣿⠿⠿⠿⠿⠿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣶      ]],
            -- [[   ⣀⠀⠀⠀⠀⠀⠀⠀⣀⣿⣿⣿⣿⣿⠿⠶⠶⠶⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⢠⣦   ]],
            -- [[   ⣿⣀⠀⠀⠀⠀⣀⣿⣿⣿⣿⣿⣿⣿⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣦⠀⣿⣿⠀⢸⣿   ]],
            -- [[   ⣿⣿⣿⣤⣤⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠀⣿⣿⣀⣸⣿   ]],
            -- [[   ⠉⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣀⣿⣿⠋⠉    ]],
            -- [[     ⠉⠿⣿⣿⣿⣿⣿⣿⣿⠿⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⣿⣿      ]],
            -- [[⠒⠒⠒⠒⠒⠒⠒⠛⣿⣿⠿⠛⠿⣿⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⣿⣿⠒⠒⠒⠒⠒⠒]],
            -- [[        ⣿⣀⠀⠀⠀⣿⣀⠀⠀⠀⠀⠀⠀⣀⣀⠀⠀⠀⠉⠉⠀⠀⠀⠀⣀⣀⠀⠀⣿⣿⠀⠀⣀   ]],
            -- [[]],
        },

        shortcut = {
            {   desc = ' Update',
                group = 'Label',
                action = 'PackerSync',
                key = 'u',
            },
            {
                desc = ' Coc',
                group = 'Label',
                action = 'CocUpdate',
                key = 'c',
            },
            {   desc = ' Projects',
                group = 'Label',
                action = 'Telescope projects',
                key = 'p',
            },
            {
                desc = ' Files',
                group = 'Label',
                action = 'Telescope find_files',
                key = 'f',
            },
            -- {
            --     desc = ' Recent Files',
            --     group = 'Number',
            --     action = 'Telescope oldfiles',
            --     key = 'r',
            -- },
        },

        center = {
            {
                icon = "  ",
                desc = "Projects                            ",
                action = "Telescope projects",
            },
            {
                icon = "  ",
                desc = "Recently files                      ",
                action = "Telescope oldfiles",
            },
            -- {
            --     icon = "  ",
            --     desc = "Edit keybindings                    ",
            --     action = "edit ~/.config/nvim/lua/keybindings.lua",
            -- },
            {
                icon = "  ",
                desc = "Edit Projects                       ",
                action = "edit ~/.local/share/nvim/project_nvim/project_history",
            },
            -- {
            --   icon = "  ",
            --    desc = "Edit .zshrc                        ",
            --    action = "edit ~/.zshrc",
            -- },
            -- {
            --   icon = "  ",
            --   desc = "Change colorscheme                  ",
            --   action = "ChangeColorScheme",
            -- },
            -- {
            --   icon = "  ",
            --   desc = "Edit init.lua                       ",
            --   action = "edit ~/.config/nvim/init.lua",
            -- },
            {
                icon = "  ",
                desc = "Find file                           ",
                action = "Telescope find_files",
            },
            -- {
            --   icon = "  ",
            --   desc = "Find text                           ",
            --   action = "Telescopecope live_grep",
            -- },
        },
        footer = {}
    },
})

-- db.custom_header = {
--     [[]],
--     [[]],
--     [[]],
--     [[ ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
--     [[ ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]],
--     [[ ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]],
--     [[ ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
--     [[ ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
--     [[ ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]],
--     [[]],
--     [[                      version : 0.8.2                   ]],
--     [[]],
--     [[]],
--     [[]],
-- }

-- db.custom_header = {
--     [[]],
--     [[]],
--     [[]],
--     [[██████╗ ██████╗  ██████╗ ██╗  ██╗██╗   ██╗ ██████╗ ███╗   ██╗]],
--     [[██╔══██╗██╔══██╗██╔═══██╗██║ ██╔╝╚██╗ ██╔╝██╔═══██╗████╗  ██║]],
--     [[██████╔╝██████╔╝██║   ██║█████╔╝  ╚████╔╝ ██║   ██║██╔██╗ ██║]],
--     [[██╔═══╝ ██╔══██╗██║   ██║██╔═██╗   ╚██╔╝  ██║   ██║██║╚██╗██║]],
--     [[██║     ██║  ██║╚██████╔╝██║  ██╗   ██║   ╚██████╔╝██║ ╚████║]],
--     [[╚═╝     ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═══╝]],
--     [[]],
--     [[version : 0.8.2]],
--     [[]],
--     [[]],
--     [[]],
-- }
-- db.custom_header = {
--     [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠛⠉⠁⠀⠀⠀⢀⣀⣀⡀⠀⠀⠀⠉⠙⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--     [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠉⠀⠀⣀⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣤⣀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--     [[⣿⣿⣿⣿⣿⣿⠿⠉⠀⣀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣌⠛⣿⣿⣿⣿⣿⣿⣿⣿]],
--     [[⣿⣿⣿⣿⡿⠁⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠈⠻⣿⣿⣿⣿⣿]],
--     [[⣿⣿⣿⠋⠀⣠⣿⣿⣿⣿⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢠⢸⣿⣿⣿⣿⣷⠀⠈⣿⣿⣿⣿]],
--     [[⣿⣿⠃⠀⣴⣿⣿⣿⣿⣿⠀⠘⡿⣿⣿⣿⣿⣿⣿⡟⠁⠈⠻⣿⣿⣿⣿⣿⣿⠁⣿⢸⣿⣿⣿⣿⣿⣿⡀⠀⢻⣿⣿]],
--     [[⣿⠃⠀⣰⣿⣿⣿⣿⣿⣿⢀⣴⠸⡻⣿⣿⣿⣿⡿⠀⣤⡀⠀⠈⢿⣿⣿⣿⠇⣾⣿⢸⣿⣿⣿⣿⣿⣿⣿⠀⠀⢿⣿]],
--     [[⣿⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⢲⠈⢿⣿⣿⢦⣾⣿⣿⣦⠀⠀⠻⣿⣿⣾⣿⡇⢸⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⣿]],
--     [[⡏⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⢉⣄⠟⢪⣿⣿⣿⣿⣿⣿⡀⠀⡝⣿⣿⣿⡇⢸⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⣿]],
--     [[⣇⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⠀⢻⣿⣿⠁⢀⣿⣿⣿⣿⣿⣿⣿⣿⣦⠀⣿⣿⣿⡇⠸⠿⠛⣛⣭⣿⣿⣿⣿⠀⠀⣿]],
--     [[⣿⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⡇⠈⣿⠋⢠⡀⠛⠻⣿⠿⠿⠿⠛⠛⠁⢀⡠⣲⣶⠀⠀⣿⣿⣿⣿⣿⣿⣿⡿⠀⢀⣿]],
--     [[⣿⣆⠀⢻⣿⣿⣿⣿⣿⣿⣿⡇⠀⠁⠀⠉⢀⡀⠀⠀⣶⣶⣿⣿⠁⣴⣿⣿⣿⣿⠀⠀⣿⣿⣿⣿⣿⣿⣿⠀⠀⣿⣿]],
--     [[⣿⣿⣆⠀⠹⣿⣿⣿⣿⣿⣿⣷⣀⣴⣿⣿⣿⣿⡀⠀⠈⣿⣿⡏⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⣾⣿⣿]],
--     [[⣿⣿⣿⣦⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠟⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⢀⣿⣿⣿⣿]],
--     [[⣿⣿⣿⣿⣿⣄⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⢀⣴⣿⣿⣿⣿⣿]],
--     [[⣿⣿⣿⣿⣿⣿⣿⣤⠀⠉⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢁⣄⣴⣿⣿⣿⣿⣿⣿⣿]],
--     [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣄⡀⠈⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣟⣧⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
--     [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣄⣈⣲⠤⣭⣿⣿⣿⠟⢶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
-- }

-- db.custom_header = {
-- [[]],
-- [[             ⣀⣶⣶⣶⣶⣶⣶⣶⣶⣀                     ]],
-- [[             ⣿⣿⣤⣿⣿⣿⣿⣿⣿⣿                     ]],
-- [[             ⣿⣿⣿⣿⣿⠿⠿⠿⠿⠿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣶      ]],
-- [[   ⣀⠀⠀⠀⠀⠀⠀⠀⣀⣿⣿⣿⣿⣿⠿⠶⠶⠶⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⢠⣦   ]],
-- [[   ⣿⣀⠀⠀⠀⠀⣀⣿⣿⣿⣿⣿⣿⣿⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣦⠀⣿⣿⠀⢸⣿   ]],
-- [[   ⣿⣿⣿⣤⣤⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠀⣿⣿⣀⣸⣿   ]],
-- [[   ⠉⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣀⣿⣿⠋⠉    ]],
-- [[     ⠉⠿⣿⣿⣿⣿⣿⣿⣿⠿⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⣿⣿      ]],
-- [[⠒⠒⠒⠒⠒⠒⠒⠛⣿⣿⠿⠛⠿⣿⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⣿⣿⠒⠒⠒⠒⠒⠒]],
-- [[        ⣿⣀⠀⠀⠀⣿⣀⠀⠀⠀⠀⠀⠀⣀⣀⠀⠀⠀⠉⠉⠀⠀⠀⠀⣀⣀⠀⠀⣿⣿⠀⠀⣀   ]],
-- [[]],
-- }
-- db.custom_header = {
-- [[                   ⣀⣀⣀                 ]],
-- [[           ⣀⣤⣶⣿⣿⡿⠿⠿⠛⠛⠻⠿⠿⢿⣿⣶⣦⣄⡀         ]],
-- [[       ⣀⣴⣿⡿⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠻⠷        ]],
-- [[     ⣠⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠁⣶⣄     ]],
-- [[   ⢠⣿⡿⠁⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⡀⠀⠀⠀⠙⣿⣄   ]],
-- [[  ⣴⣿⠋⠀⠀⠀⠀⣿⣆⠀⠀⠀⠀⠀⠀⠀⢀⣤⡀⠀⠀⠀⠀⠀⠀⣰⠁⠆⠀⠀⠀⠀⠀⢿⣷⡀ ]],
-- [[ ⣸⣿⠃⠀⠀⠀⠀⠀⢸⡏⡆⡀⠀⠀⠀⠀⢀⣿⢿⣿⣷⠀⠀⠀⠀⢠⠋⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⡄]],
-- [[⢀⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠈⡘⣦⠀⠀⠀⠛⠁⠀⠙⣿⣿⣄⠀⠀⠋⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿]],
-- [[⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠈⡀⢷⣠⠆⠀⠀⠀⠀⠀⠻⣿⠂⠀⠀⠀⢸⡆⠀⠀⠀⠀⠀⠀⠀⢻⣿]],
-- [[⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⢹⡆⠀⠀⣾⡿⠀⠀⠀⠀⠀⠀⠀⠈⣿⠀⠀⠀⣸⣃⣤⠤⠔⠂⠀⠀⠀⢸⣿]],
-- [[⠈⣿⣇⠀⠀⠀⠀⠀⠀⠀⠈⣿⠀⣾⠋⢿⣾⣄⣀⣤⣤⣤⣶⣾⠿⠛⠋⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⣿⡿]],
-- [[ ⠹⣿⡄⠀⠀⠀⠀⠀⠀⢠⣿⣿⠿⠟⠛⢿⣿⣦⠀⠀⠀⣸⠏⠀⠀⠀⠀⠿⠛⠀⠀⠀⠀⠀⠀⣾⣿ ]],
-- [[  ⠙⣿⣆⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠻⣿⣷⠀⢠⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⡿  ]],
-- [[   ⠈⢿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⠏   ]],
-- [[     ⠈⠿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠤⢬⠛     ]],
-- [[        ⠛⢿⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠠⠞⠈        ]],
-- [[           ⠉⠛⠻⠿⣅⠲⠦⠀⠀⠀⠀⣐⠂⠀⠁             ]],
-- }

