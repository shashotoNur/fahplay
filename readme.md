## fahplay

**fahplay** is a simple shell utility for Arch Linux that plays a "fahhhhh" sound effect (via `aplay`) whenever a command in your terminal finishes with a non-zero exit status. It supports both **Bash** and **Zsh**.

---

### Features

* **Automatic Hooking**: Integrates with your shell's prompt command to check exit codes after every execution.
* **Audio Feedback**: Plays a `.wav` file asynchronously, so it doesn't block your terminal flow.
* **System-Wide Integration**: Automatically sources itself in `/etc/bash.bashrc` and `/etc/zsh/zshrc` upon installation.
* **Clean Uninstallation**: Removes shell hooks automatically when the package is removed.

---

### Installation

#### Using an AUR Helper

If you use an AUR helper like yay or paru, you can install it directly:

```bash
yay -S fahplay
```

#### Manual Build

1. Ensure you have `base-devel` and `git` installed.
2. Clone the repository and build:

```bash
git clone https://github.com/shashotoNur/fahplay.git
cd fahplay
makepkg -si
```

---

### Uninstallation

#### Standard Removal

```bash
sudo pacman -R fahplay
```

#### Manual Cleanup (If installed without pacman)
If you manually copied the files instead of using `makepkg`, you will need to undo the changes manually:

1.  **Edit the shell configs:**
    Open `/etc/bash.bashrc` and `/etc/zsh/zshrc` in a text editor (like `nano` or `vim`) and delete the line:
    `[ -r /usr/share/fahplay/fahplay.sh ] && source /usr/share/fahplay/fahplay.sh`
2.  **Delete the files:**
    ```bash
    sudo rm -rf /usr/share/fahplay
    ```

---

### Dependencies

* **alsa-utils**: Required for the `aplay` command to trigger the audio file.

---

### License

Distributed under the **GPLv3** License.