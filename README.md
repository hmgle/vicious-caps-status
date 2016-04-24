# vicious-caps-status

This is a vicious widget for awesome wm to check the keyboard CAPSLOCK status.

## Usage

```console
$ sudo cp caps.lua /usr/share/awesome/lib/vicious/widgets
```

Then add to `rc.lua`:

```console
$ $EDITOR ~/.config/awesome/rc.lua
```

```lua
(...)

-- {{{ CAPS status
capswidget = widget({ type = "textbox" })
vicious.register(capswidget, vicious.widgets.caps, nil, 1)
-- }}}

(...)

    -- Add widgets to the wibox - order matters
    mywibox[s].widgets = {
	(...)
        capswidget,
	(...)
    }
(...)
```
