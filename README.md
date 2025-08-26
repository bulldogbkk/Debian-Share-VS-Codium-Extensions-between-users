1. **Create the shared extensions folder** (if you haven’t already):

   ```bash
   sudo mkdir -p /usr/local/share/vscodium-extensions
   sudo chown root:root /usr/local/share/vscodium-extensions
   sudo chmod 755 /usr/local/share/vscodium-extensions
   ```

2. **Create a profile script** so the environment variable is set for all users:

   ```bash
   sudo nano /etc/profile.d/vscodium.sh
   ```

   Inside that file, put:

   ```bash
   export VSCODE_EXTENSIONS=/usr/local/share/vscodium-extensions
   ```

3. **Make it executable** (not strictly required, but a good habit):

   ```bash
   sudo chmod +x /etc/profile.d/vscodium.sh
   ```

4. **Re-log or reboot** so the environment variable is picked up by all shells/desktop sessions.

5. **Install extensions globally** into that directory (done as root or with sudo):

   ```bash
   codium --extensions-dir /usr/local/share/vscodium-extensions \
          --install-extension ms-python.python
   ```

After that, whenever any user runs `codium`, it will automatically look in `/usr/local/share/vscodium-extensions` for extensions, without you needing to pass `--extensions-dir` each time.

Would you like me to also show you how to let users **add their own extensions** on top of the shared ones (so they inherit the base set but can still install personal extras)?
