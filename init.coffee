# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"

# init.coffee
atom.packages.onDidActivatePackage (pack) ->
  if pack.name == 'ex-mode'
    Ex = pack.mainModule.provideEx()
    Ex.registerCommand 'tabs', ->
      atomWorkspace = atom.views.getView(atom.workspace)
      setTimeout ->
        atom.commands.dispatch(atomWorkspace, 'atom-vim-like-tab:list')
      , 0
    Ex.registerCommand 'tab', ->
      atomWorkspace = atom.views.getView(atom.workspace)
      setTimeout ->
        atom.commands.dispatch(atomWorkspace, 'atom-vim-like-tab:new')
      , 0
    Ex.registerCommand 'tabn', ->
      atomWorkspace = atom.views.getView(atom.workspace)
      setTimeout ->
        atom.commands.dispatch(atomWorkspace, 'atom-vim-like-tab:next')
      , 0
    Ex.registerCommand 'tabp', ->
      atomWorkspace = atom.views.getView(atom.workspace)
      setTimeout ->
        atom.commands.dispatch(atomWorkspace, 'atom-vim-like-tab:previous')
      , 0
    Ex.registerCommand 'tabclose', ->
      atomWorkspace = atom.views.getView(atom.workspace)
      setTimeout ->
        atom.commands.dispatch(atomWorkspace, 'atom-vim-like-tab:close')
      , 0
