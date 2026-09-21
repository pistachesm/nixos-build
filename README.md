# nixos-build
My nixos configuration files.

This is a system with the NixOs distribution of Linux

## Seguridad y red

La configuración mantiene el firewall activo sin aperturas de puertos declaradas
en el módulo de red. Desactiva SSH y las aperturas automáticas de Steam; el juego
online como cliente sigue disponible, pero Remote Play, servidores y transferencias
locales pueden necesitar reglas específicas. Otros módulos pueden añadir reglas:
comprueba siempre la configuración efectiva después de aplicar.

NetworkManager gestiona conexiones y entrega el DNS de cada enlace a
systemd-resolved, incluyendo el de las VPN. Se desactivan LLMNR, mDNS/Avahi y el
envío del nombre de host por DHCP. Los nombres `.local` y el descubrimiento
automático de impresoras dejan de funcionar; usa su IP o DNS habitual.
Los perfiles existentes de NetworkManager pueden sobrescribir los valores
globales. Se conserva la aleatorización de MAC por red de iwd.

DNS usa los servidores de la red: **no se garantiza cifrado ni validación DNSSEC**.
No hay un proveedor público impuesto ni DNS de respaldo externo. Esta política
conserva DNS internos y portales cautivos; una política de DNS cifrado estricto
requiere configurar servidores compatibles y comprobar cada VPN.

El módulo de seguridad restringe información del kernel, ptrace y BPF sin
privilegios, y rechaza redirecciones ICMP y rutas de origen. Sudo sigue pidiendo
contraseña. Los depuradores que se adjuntan a procesos ajenos a su árbol pueden
necesitar privilegios. No se desactiva IPv6 ni se modifica MTU arbitrariamente.

Para validar y aplicar desde la laptop (el prefijo `path:` incluye módulos nuevos
aunque aún no estén añadidos a Git):

```sh
nix flake check --no-build "path:$PWD"
sudo nixos-rebuild build --flake "path:$PWD#Zzy"
sudo nixos-rebuild test --flake "path:$PWD#Zzy"
resolvectl status
resolvectl query nixos.org
nmcli general status
sudo ss -lntup
sudo iptables -S
sudo ip6tables -S
```

Comprueba navegación, reconexión Wi-Fi, portal cautivo si aplica y DNS con VPN.
Si todo funciona, persiste con `sudo nixos-rebuild switch --flake "path:$PWD#Zzy"`.
Para volver a la generación anterior usa `sudo nixos-rebuild switch --rollback`;
si solo aplicaste `test`, reiniciar recupera la configuración persistente anterior.

Esto no constituye un blindaje absoluto. El repositorio no declara cifrado LUKS
ni Secure Boot: la protección ante robo físico y el bloqueo automático de sesión
requieren una revisión adicional. No se ha reformateado el disco ni cambiado
contraseñas. Mantén los inputs actualizados y verifica las nuevas generaciones.

## Gaming session

Apply the configuration with `sudo nixos-rebuild switch --flake .#Zzy`.
Log out, press **F3** in tuigreet, and choose **Steam** to start Steam's
controller interface in a dedicated Gamescope session. Choose **Niri** to
return to the desktop; tuigreet remembers the last selected session.
This provides a Steam Deck-style interface on the laptop, not SteamOS emulation.

For GameMode, set a game's Steam launch options to `gamemoderun %command%`.
After logging in again, `gamemoded -t` checks GameMode integration.
For Windows games, select Proton in the game's Properties → Compatibility.
The existing AMD graphics configuration includes 32-bit support, and TLP uses
the performance profile on AC power. Resolution and FPS limits can be tuned
per game instead of imposing a global limit.
