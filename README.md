**⚠️ Disclaimer:**
*Hacked this together at 2 AM as an experimental Termux port. It kind of works, but expect rough edges. If you're a determined Termux hacker, PRs are very welcome!*

# debup-termux 📱⚡

> **A specialized Termux port of [debup](https://github.com/Ruvyrom/debup)**.
> Install, search, and manageGitHub release `.deb` packages directly inside Termux on Android - **without root and without proot/chroot**.

---

### 💡 About

`debup-termux` brings the ease of **[debup](https://github.com/Ruvyrom/debup)** to the mobile Android environment.

Instead of requiring standard Linux system privileges(`sudo` / standard `apt`), it unpacks compatible `.deb` releases on the fly, deploys standalone executables straightinto `$PREFIX/bin`, resolves available dependencies via Termux's native `pkg`, and leverages **Termux:API** for native Androidnotifications, toasts, and haptic feedback.
