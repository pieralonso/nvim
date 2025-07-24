vim.g.mapleader = ' '
-- Comportamiento de edición
vim.opt.expandtab = true   -- Convierte cada tabulación en espacios.
vim.opt.shiftwidth = 4     -- Establece que cada nivel de indentación tenga 4 espacios.
vim.opt.tabstop = 4        -- Establece que las tabulaciones se muestren como 4 espacios de ancho.
vim.opt.wrap = false       -- Deshabilita el ajuste de texto a la línea.

vim.opt.autoindent = true  -- Reproduce la indentación de la línea anterior automáticamente.
vim.opt.smartindent = true -- Añade una indentación "inteligente" para estructuras de código (if, for, etc.).

-- Búsqueda
vim.opt.number = true         -- Muestra el número de cada línea.
vim.opt.relativenumber = true -- Muestra las líneas relativas al cursor para facilitar saltos con counts.
vim.opt.ignorecase = true     -- Hace que las búsquedas no distingan mayúsculas de minúsculas.
vim.opt.smartcase = true      -- Si la búsqueda contiene mayúsculas, se vuelve sensible a ellas.
vim.opt.incsearch = true      -- Muestra resultados mientras escribes el patrón de búsqueda.
vim.opt.hlsearch = true       -- Resalta todas las coincidencias encontradas tras ejecutar la búsqueda.
vim.opt.matchtime = 2         -- Duración (en decisegundos) del parpadeo al usar `showmatch` para paréntesis coincidentes.

-- Interfaz de usuario y visualización
vim.opt.number = true         -- Muestra el número de cada línea.
vim.opt.relativenumber = true -- Muestra las líneas relativas al cursor para facilitar saltos con counts.
vim.opt.cursorline = true     -- Resalta la línea donde está el cursor para mejorar la visibilidad.
vim.opt.showcmd = true        -- Muestra el comando parcial que estás escribiendo en la línea de estado.
vim.opt.termguicolors = true  -- Habilita colores de 24 bits (TrueColor) en la terminal.

-- Rendimiento
--vim.opt.noswapfile = true       -- Deshabilita archivos de intercambio si no trabajas en entornos compartidos.


-- Completado y wildmenu
vim.opt.wildmenu = true                -- Habilita menú interactivo para autocompletar comandos en `:`.
--vim.opt.wildmode = "longest:list,full"                    -- Controla el comportamiento de `wildmenu` (primero el prefijo más largo, luego lista completa).
--vim.opt.complete = vim.opt.complete - {"i"} -- Excluye archivos incluidos del autocompletado para reducir la búsqueda.

-- Opciones de ventana y panel
vim.opt.splitbelow = true -- Abre nuevas ventanas horizontales debajo de la actual.
vim.opt.splitright = true -- Abre nuevas ventanas verticales a la derecha de la actual.
vim.opt.laststatus = 2    -- Siempre muestra la barra de estado en todas las ventanas.
--vim.opt.showtabline = 2         -- Siempre muestra la barra de pestañas aunque solo haya un tab.
--Elimina las lineas vacías al final de la ventana
vim.opt.fillchars = { eob = " " }
-- Autocomandos y eventos
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    command = "silent! %s/\\s\\+$//e"
}) -- Elimina espacios en blanco finales antes de guardar el archivo.

vim.api.nvim_create_autocmd("TextYankPost", {
    pattern = "*",
    command = "silent! lua vim.highlight.on_yank{timeout=200}"
}) -- Resalta brevemente el texto copiado tras un yank.

vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    command = "setlocal formatoptions-=o"
}) -- Previene que Vim inserte automáticamente comentarios al presionar `o`/`O` en línea de comentario.

-- mapeo de teclas para limpiar el resaltado con <Esc>
vim.api.nvim_set_keymap('n', '<Esc>', ':noh<CR>', { noremap = true, silent = true })
-- mapeo de guardado
vim.keymap.set('n', '<Leader>s', function()
    vim.cmd('Prettier')
    vim.cmd('w') -- Guarda el archivo
end, { noremap = true, silent = true })

vim.keymap.set('n', '<Leader>²', function()
    vim.cmd('Prettier') -- Aplica Prettier
end, { noremap = true, silent = true })

vim.cmd.colorscheme "default"
