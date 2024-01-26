-- haskell.plugin.rename.config.crossModule": true
local opts = {
    settings = {
        haskell = {
            plugin = {
                rename = {
                    config = {
                        crossModule = true,
                    }
                }
            }
        }
    },
    root_dir = function(filepath)
        return (
            require'lspconfig'.util.root_pattern('hie.yaml', 'stack.yaml', 'cabal.project')(filepath)
            or require'lspconfig'.util.root_pattern('*.cabal', 'package.yaml')(filepath)
            or '.'
        )
    end,
}

return opts
