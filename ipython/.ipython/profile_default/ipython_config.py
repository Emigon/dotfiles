# Configuration file for ipython.

c = get_config()

c.TerminalIPythonApp.display_banner = False

# import matplotlib/numpy etc on startup
c.InteractiveShellApp.pylab = 'qt5'

# vi mode
c.TerminalInteractiveShell.editing_mode = 'vim'
c.TerminalInteractiveShell.editor = 'vim'
c.TerminalInteractiveShell.enable_history_search = True
c.TerminalInteractiveShell.extra_open_editor_shortcuts = True
c.TerminalInteractiveShell.prompt_includes_vi_mode = True

c.TerminalInteractiveShell.true_color = False

c.TerminalInteractiveShell.confirm_exit = False

c.TerminalInteractiveShell.display_completions = 'multicolumn'
