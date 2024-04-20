--8888888888 Y88b   d88P     888b     d888        d8888 888b    888 8888888 8888888888 8888888888  .d8888b.  88888888888
--888         Y88b d88P      8888b   d8888       d88888 8888b   888   888   888        888        d88P  Y88b     888
--888          Y88o88P       88888b.d88888      d88P888 88888b  888   888   888        888        Y88b.          888
--8888888       Y888P        888Y88888P888     d88P 888 888Y88b 888   888   8888888    8888888     "Y888b.       888
--888           d888b        888 Y888P 888    d88P  888 888 Y88b888   888   888        888            "Y88b.     888
--888          d88888b       888  Y8P  888   d88P   888 888  Y88888   888   888        888              "888     888
--888         d88P Y88b      888   "   888  d8888888888 888   Y8888   888   888        888        Y88b  d88P     888
--888        d88P   Y88b     888       888 d88P     888 888    Y888 8888888 888        8888888888  "Y8888P"      888
fx_version 'cerulean'
games { 'gta5' }
author 'Barni'
description 'Notify script :D'
lua54 'yes'

ui_page 'html/index.html'
client_scripts {
    'table/client.lua'  
}
server_scripts {
    'table/server.lua'  
}
shared_scripts {
    "config.lua"
}
files {
    'html/style.css',
    'html/app.js',
    'html/index.html'
}
escrow_ignore {
    'config.lua'
}