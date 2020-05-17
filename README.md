# ympd++

This project is a fork of the original [`ympd`](https://www.ympd.org/). It seems the original has been abandoned; the last commit dates back to 2018 and numerous pull requests are ignored.

## Development

### Branches

We use `customized` branch as the main branch and keep `master` branch untouched.

### References

- [`libmpdclient` documentation](https://www.musicpd.org/doc/libmpdclient/index.html)

- [Git repository of the original `ympd`](https://github.com/notandy/ympd)

## Build

### Without Installation

This builds the project and starts `ympd` in the foreground.

```bash
$ ./build.sh
```

### With Installation

This builds the project and installs `ympd`.

```bash
$ ./build.sh --install
```

## Requirements

See [README_original.md](./README_original.md).

## New Features

### 1. Backward-Incompatible Changes

- <kbd>←</kbd> and <kbd>→</kbd> were used to go to the previous/next song, but now the keyboard bindings are changed to <kbd>h</kbd> and <kbd>l</kbd> respectively.

### 2. Seek

You can seek the current song for `seek_length` seconds

- with <kbd>←</kbd> and <kbd>→</kbd> keys

- or by clicking `←` / `→` buttons (see the figure below).

The default value of `seek_length` is `5` and it can be increased/decreased

- with <kbd>↑</kbd> and <kbd>↓</kbd> keys

- or by clicking the button in which the value of `seek_length` is displayed (see the figure below).

| ![seek buttons](readme_assets/ss_seek.png) |
|:-:|
| Fig: Buttons for seeking. The numbered buttons are newly added. |

### 3. Dark Mode

Dark mode is implemented and is enabled by default. You can toggle it by pressing <kbd>D</kbd> (i.e. <kbd>Shift</kbd> + <kbd>d</kbd>).

| ![non dark mode](readme_assets/ss_non_dark_mode.png) | ![dark mode](readme_assets/ss_dark_mode.png) |
|:-:|:-:|
| Fig. Non dark mode. | Fig. Dark mode. |

### 4. Page Title

Now the page title is dynamically updated to the information of the current song. This is related to [Issue 128](https://github.com/notandy/ympd/issues/128).

| ![informative page title](readme_assets/ss_page_title.png) |
|:-:|
| Fig: Page title with song information. |

<!-- vim: set spell: -->

