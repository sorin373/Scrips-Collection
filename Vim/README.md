# Commonly Used Vim Commands

## Navigation and Editing

- **h, j, k, l**: Move the cursor left, down, up, and right respectively.
- **i**: Enter insert mode to start editing at the cursor position.
- **a**: Enter insert mode to start editing after the cursor.
- **yy**: Copy the current line.
- **dd**: Delete the current line.
- **p**: Paste the copied or deleted text.
- **u**: Undo the previous action.
- **Ctrl + r**: Redo the previously undone action.
- **:w**: Save the changes made to the file.
- **:q**: Quit Vim.
- **:wq**: Save the changes and quit Vim.

## Searching and Replacing

- **/pattern**: Search for a pattern in the file. Press **n** to find the next occurrence.
- **:%s/old/new/g**: Replace all occurrences of 'old' with 'new' in the entire file.

## Modes

- **Esc**: Switch to command mode from insert mode or visual mode.
- **v**: Enter visual mode to select text.
- **V**: Enter visual line mode to select entire lines.
- **Ctrl + v**: Enter visual block mode to select rectangular blocks of text.

## Splitting Windows

- **:sp**: Split the current window horizontally.
- **:vsp**: Split the current window vertically.
- **Ctrl + ww**: Switch between windows.

## Exiting and Saving

- **:q!**: Quit Vim without saving changes.
- **:w**: Save changes without quitting Vim.