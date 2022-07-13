local db = require('dashboard')

--db.custom_header = {
--    [[                               ]],
--    [[                               ]],
--    [[                               ]],
--    [[                               ]],
--    [[                               ]],
--    [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
--    [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡖⠁⠀⠀⠀⠀⠀⠀⠈⢲⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
--    [[⠀⠀⠀⠀⠀⠀⠀⠀⣼⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣧⠀⠀⠀⠀⠀⠀⠀⠀ ]],
--    [[⠀⠀⠀⠀⠀⠀⠀⣸⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣇⠀⠀⠀⠀⠀⠀⠀ ]],
--    [[⠀⠀⠀⠀⠀⠀⠀⣿⣿⡇⠀⢀⣀⣤⣤⣤⣤⣀⡀⠀⢸⣿⣿⠀⠀⠀⠀⠀⠀⠀ ]],
--    [[⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣔⢿⡿⠟⠛⠛⠻⢿⡿⣢⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀ ]],
--    [[⠀⠀⠀⠀⣀⣤⣶⣾⣿⣿⣿⣷⣤⣀⡀⢀⣀⣤⣾⣿⣿⣿⣷⣶⣤⡀⠀⠀⠀⠀ ]],
--    [[⠀⠀⢠⣾⣿⡿⠿⠿⠿⣿⣿⣿⣿⡿⠏⠻⢿⣿⣿⣿⣿⠿⠿⠿⢿⣿⣷⡀⠀⠀ ]],
--    [[⠀⢠⡿⠋⠁⠀⠀⢸⣿⡇⠉⠻⣿⠇⠀⠀⠸⣿⡿⠋⢰⣿⡇⠀⠀⠈⠙⢿⡄⠀ ]],
--    [[⠀⡿⠁⠀⠀⠀⠀⠘⣿⣷⡀⠀⠰⣿⣶⣶⣿⡎⠀⢀⣾⣿⠇⠀⠀⠀⠀⠈⢿⠀ ]],
--    [[⠀⡇⠀⠀⠀⠀⠀⠀⠹⣿⣷⣄⠀⣿⣿⣿⣿⠀⣠⣾⣿⠏⠀⠀⠀⠀⠀⠀⢸⠀ ]],
--    [[ ⠁⠀⠀⠀⠀⠀⠀⠀⠈⠻⢿⢇⣿⣿⣿⣿⡸⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠈⠀ ]],
--    [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
--    [[⠀⠀⠀⠐⢤⣀⣀⢀⣀⣠⣴⣿⣿⠿⠋⠙⠿⣿⣿⣦⣄⣀⠀⠀⣀⡠⠂⠀⠀⠀ ]],
--    [[⠀⠀⠀⠀⠀⠈⠉⠛⠛⠛⠛⠉⠀⠀⠀⠀⠀⠈⠉⠛⠛⠛⠛⠋⠁⠀⠀⠀⠀⠀ ]],
--    [[                               ]],
--    [[                               ]],
--    [[                               ]],
--    [[                               ]],
--    [[                               ]],
--}

db.custom_header = {
[[                                      ]],
[[                                      ]],
[[                                      ]],
[[                                      ]],
[[                           _          ]],
[[    ____  ___  ____ _   __(_)___ ___  ]],
[[   / __ \/ _ \/ __ \ | / / / __ `__ \ ]],
[[  / / / /  __/ /_/ / |/ / / / / / / / ]],
[[ /_/ /_/\___/\____/|___/_/_/ /_/ /_/  ]],
[[                                      ]],
[[                                      ]],
[[                                      ]],
[[                                      ]],
}
--

db.custom_center = {
      {icon = '﬒  ', desc = 'New File                                ', action='enew', shortcut = 'SPC n  '},
      {icon = '  ', desc = 'Find  File                              ', action='Telescope find_files', shortcut = 'SPC f f'},
      {icon = '  ', desc = 'Find word                               ', action='Telescope live_grep', shortcut = 'SPC f b'},
      {icon = '  ', desc = 'Projects                                ', action='edit /home/andres/Documentos', shortcut = 'SPC f w'},
      {icon = '  ', desc = 'Packer config                           ', action='edit ~/.config/nvim/lua/packer-config/init.lua', shortcut = 'SPC f h'},
      {icon = '  ', desc = 'Config                                  ', action='edit ~/.config/nvim', shortcut = 'SPC f d'},
    }                                            



db.custom_footer = {
    '',
    '',
    '',
    'neovim 0.7.0 - Andres Sanabria'
}

