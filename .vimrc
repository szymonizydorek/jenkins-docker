" --- WYGLĄD ---
set number              " Pokaż numery linii
set relativenumber      " (Opcjonalnie) Relatywne numery - genialne do skakania (np. 5j)
set showmatch           " Podświetlaj pasujące nawiasy () {} []

" --- EDYCJA I TABULACJA ---
set expandtab           " Zamień taby na spacje (standard w Python/Docker/YAML)
set tabstop=4           " 1 tab = 4 spacje
set shiftwidth=4        " Szerokość wcięcia dla komend >> i <<
set autoindent          " Automatyczne wcięcia w nowej linii

" --- WYSZUKIWANIE ---
set hlsearch            " Podświetlaj wyszukiwane frazy
set incsearch           " Szukaj w trakcie wpisywania
set ignorecase          " Ignoruj wielkość liter przy szukaniu...
set smartcase           " ...chyba że użyjesz dużej litery

" --- CIEKAWE FEATURY (SMACZKI) ---
set list                " Pokazuj znaki specjalne (np. taby, końce linii)
set listchars=tab:▸\ ,trail:·,extends:»,precedes:« " Wizualizacja spacji na końcach linii
set undofile            " Zapamiętuj historię zmian po zamknięciu pliku (magia!)
set mouse=a             " Pozwala używać myszki do przewijania i zaznaczania
