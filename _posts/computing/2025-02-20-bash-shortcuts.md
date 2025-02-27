---
categories: computing
title: Bash Shortcuts
tags:
  - linux
  - bash
  - cli
date: '2025-02-20'
---
![bash logo](https://miro.medium.com/v2/resize:fit:1400/format:webp/1*v4o2AXLIJaHSZmqYZk26qA.jpeg)

| **Moving the cursor** |  |
| --- | --- |
| Go to the beginning of the line (Home). | `Ctrl+a` |
| Go to the End of the line (End). | `Ctrl+e` |
| Previous command (Up arrow). | `Ctrl+p` |
| Next command (Down arrow). | `Ctrl+n` |
| Back (left) one word. | `Alt+b` |
| Forward (right) one word. | `Alt+f` |
| Forward one character. | Ctrl+f |
| Backward one character. | Ctrl+b |
| Toggle between the start of line and current cursor position. | Ctrl+xx |
| **Editing** |  |
| Clear the Screen, similar to the clear command. | Ctrl+L |
| Delete the Word before the cursor. | Alt+Del |
| Delete the Word after the cursor. | Alt+d |
| Delete character under the cursor. | Ctrl+d |
| Delete character before the cursor (Backspace). | Ctrl+h |
| Cut the Word before the cursor to the clipboard. | Ctrl+w |
| Cut the Line after the cursor to the clipboard. | Ctrl+k |
| Cut/delete the Line before the cursor to the clipboard. | Ctrl+u |
| Swap current word with previous. | Alt+t |
| Swap the last two characters before the cursor (typo). | Ctrl+t |
| Swap the last two words before the cursor. | Esc +t |
| Paste the last thing to be cut (yank). | ctrl+y |
| UPPER capitalize every character from the cursor to the end of the current word. | Alt+u |
| Lower the case of every character from the cursor to the end of the current word. | Alt+l |
| Capitalize the character under the cursor and move to the end of the word. | Alt+c |
| Cancel the changes and put back the line as it was in the history (revert). | Alt+r |
| Undo. | ctrl+\_ |
| Tab completion for file/directory names. Type just enough characters to uniquely identify the item. For example, to move to a directory 'sample1'; Type cd sam Then press TAB and ENTER. | \[TAB\] |
| **Special keys**: Text Terminals send characters (bytes), not key strokes. Special keys such as Tab, Backspace, Enter and Esc are encoded as control characters which are not printable, they display in the terminal as ^ and are intended to have an effect on applications. |  |
| \[TAB\] | Ctrl+I |
| Newline | Ctrl+J |
| Enter | Ctrl+M |
| Escape | Ctrl+\[ |
| ^@ | Ctrl+2 |
| ^\[ → Escape | Ctrl+3 |
| ^\\ | Ctrl+4 |
| ^\] | Ctrl+5 |
| ^^ | Ctrl+6 |
| ^\_ → Undo | Ctrl+7 |
| ^? → Backward-delete-char | Ctrl+8 |
| Ctrl+v tells the terminal to not interpret the following character, so Ctrl+v Ctrl+I will display a tab character, similarly Ctrl+v ENTER will display the escape sequence for the Enter key: ^M |  |
| **History** |  |
| Recall the last command including the specified character(s). Search the command history as you type. Equivalent to : vim ~/.bash\_history. | Ctrl+r |
| Previous command in history (walk back). | Ctrl+p |
| Next command in history (walk forward). | Ctrl+n |
| Go back to the next most recent command. (beware to not execute it from a terminal because this will also launch its XOFF). | Ctrl+s |
| Execute the command found via Ctrl+r or Ctrl+s | Ctrl+o |
| Escape from history searching mode. | Ctrl+g |
| Repeat last command. | !! |
| Repeat from the last command: args _n_ e.g. !:2 for the second argumant. | !_n_ |
| Repeat from the last command: args from _n to m_. e.g. !:2-3 for the second and third. | !_n:m_ |
| Repeat from the last command: args _n to_ the last argument. | !_n:$_ |
| Print last command starting with _n._ | !_n_:p |
| Print the last command beginning with _string_. | !_string_ |
| Quote the last command with proper Bash [escaping](https://ss64.com/bash/syntax-quoting.html) applied. Tip: enter a line of Bash starting with a # comment, then run !:q on the next line to escape it. | !:q |
| Last argument of previous command. | !$ |
| Last argument of previous command. | ALT+. |
| All arguments of previous command. | !\* |
| Run previous command, replacing _abc_ with _def_ | ^_abc_^_def_ |
| **Process control** |  |
| Interrupt/Kill whatever you are running (SIGINT). | Ctrl+C |
| Clear the screen. | Ctrl+l |
| Stop output to the screen (for long running verbose commands). Then use PgUp/PgDn for navigation. | Ctrl+s |
| Allow output to the screen (if previously stopped using command above). | Ctrl+q |
| Send an EOF marker, unless disabled by an option, this will close the current shell (EXIT). | Ctrl+D |
| Send the signal SIGTSTP to the current task, which suspends it. To return to it later enter [fg](https://ss64.com/bash/fg.html) 'process name' (foreground). | Ctrl+Z |

_“...emacs, which might be thought of as a thermonuclear word processor” ~ Emacs vs. Vi Wiki_

*   [fg](https://ss64.com/bash/syntax-jobs.html) - Bring a command to the foreground.
    
*   [vi editor](https://ss64.com/vi.html) - A one page reference to the vi editor.
    
*   ~./.bash\_history - Text file with command history.
    
*   [Terminals Are Weird](https://catern.com/posts/terminal_quirks.html) - How and why of terminal keybindings.
    
*   Equivalent [Windows Keyboard shortcuts](https://ss64.com/nt/syntax-keyboard.html)
