vim.cmd[[
    let g:startify_session_dir = '~/dotfiles/neovim/.config/nvim/sessions'
    let g:startify_session_delete_buffers = 1
    let g:startify_change_to_vcs_root = 1
    let g:startify_fortune_use_unicode = 1
    let g:startify_session_persistence = 0

    let g:startify_bookmarks = [
            \ { 'c': '~/.config/nvim/init.lua' },
            \ { 'b': '~/.bashrc' },
            \ { 'z': '~/.zshrc' },
            \ { 'v': '~/Documents/Backend'},
            \ {'d':'~/Documents/DSA'},
            \ {'s':'~/Documents/Organizations/swoop'},
            \ {'l':'~/Documents/Organizations/lezgo'},
            \ {'r':'~/Documents/Rust'},
            \ {'a': '~/Documents/Acads/3-1'},
            \ {'o': '~/Documents/Java'},
            \ ]

    let g:startify_lists = [
              \ { 'type': 'sessions',  'header': ['   Sessions']                     },
              \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
              \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
              \ { 'type': 'files',     'header': ['   MRU']                        },
              \ ]


    let g:startify_custom_header = [
  \ '                   ,,,, ',
  \ '             ,;) .`;;;;`,',
  \ ' ;;,,_,-.-.,;;`_,|I\;;;/),,_',
  \ '  ``;;/:|:);{ ;;;|| \;/ /;;;\__',
  \ '      L;/-`;/ \;;\`,/;\/;;;.`) \',
  \ '      .:```` - \;;`.__/;;;/  . _`-._ ',
  \ '    .`/   \     \;;;;;;/.`_7:.  `). \_',
  \ '  .``/     | `._ );}{;//.`    `-:  `.,L',
  \ '.`. /       \  ( |;;;/_/         \._./;\   _,',
  \ ' . /        |\ ( /;;/_/             `;;;\,;;_,',
  \ '. /         )__(/;;/_/                (;;`````',
  \ ' /        _;:`:;;;;:`;-._             );',
  \ '/        /   \  ```   --.`-._         \/',
  \ '       .`     `.  ,`         `-,',
  \ '      /    /   r--,..__       `.\',
  \ '    .`    `  .`        `--._     |',
  \ '    (     :.(;>        _ .` `- ;/',
  \ '    |      /:;(    ,_.`;(   __.`',
  \ '     `- -`"|;:/    (;;;;-`--`',
  \ '           |;/      ;;(',
  \ ' snd       ``      /;;|',
  \ '                   \;;|',
  \ '                    \/', ]
]]
