<div align="center">

# 🪟 GenBypassX11  
### Bypass TPM 2.0 & SecureBoot — Windows 11 (2025)

🚀 Instala Windows 11 en cualquier PC — sin TPM — sin Secure Boot — sin CPU soportada  
💻 Ideal para equipos antiguos o con hardware limitado

---

### 🔰 Badges
![Status](https://img.shields.io/badge/Estado-Estable-success?style=for-the-badge)
![Windows 11](https://img.shields.io/badge/Windows-11-blue?style=for-the-badge)
![TPM Bypass](https://img.shields.io/badge/TPM-Bypass-orange?style=for-the-badge)
![SecureBoot](https://img.shields.io/badge/SecureBoot-Disabled-red?style=for-the-badge)
![License](https://img.shields.io/badge/License-Free-green?style=for-the-badge)

</div>

---

## 📦 Contenido

| Archivo | Función |
|--------|----------|
| `GenBypassX11.cmd` | Ejecuta el bypass para instalar Windows 11 sin TPM ni SecureBoot |

📌 Copia `GenBypassX11.cmd` dentro del USB booteable.

---

## 🔧 Instalación con Rufus

1. Descarga la ISO de Windows 11  
2. Abre **Rufus**  
3. Selecciona USB + ISO  
4. Configura así:

```
GPT (o MBR si es PC vieja)
UEFI / BIOS
NTFS o FAT32
```

5. Crear USB → Finalizar

---

## 🛠 Activación del Bypass

1. Boot desde USB  
2. En la primera pantalla presiona:

```
Shift + F10
```

3. Verifica letra del USB:

```cmd
diskpart
list volume
exit
```

4. Ejecuta el script:

```cmd
D:\GenBypassX11.cmd
```

o si es E:

```cmd
E:\GenBypassX11.cmd
```

Cerrar CMD → Continuar instalación.  
Listo: sin TPM, sin SecureBoot, sin CPU requerida.

---

## 🟢 Resultado

| Restricción | Estado |
|-----------|--------|
| TPM 2.0 | 🔓 Deshabilitado |
| Secure Boot | 🔓 No requerido |
| CPU vieja | ✔ Permitida |
| Instalación | 🟢 Exitosa |

---

## ❓ FAQ

**No detecta USB**  
Reconectar / probar otro puerto

**¿Funciona sin Internet?**  
✔ Sí

**¿Sirve Home / Pro / Enterprise?**  
✔ 100%

---

## 🌍 English Version

```md
GenBypassX11 lets you install Windows 11 on any PC with no TPM, no SecureBoot and no CPU lock.
Flash ISO with Rufus → Boot → Press Shift+F10 → Run GenBypassX11.cmd → Install normally.
```

---

## 📜 Licencia

Libre uso — no venta comercial sin permiso.

---

## 👤 Créditos

Proyecto creado por **Esteban Castro**  
🔹 GenLiteX / GenBypassX11 — Colombia 🇨🇴 2025

```
⭐ Dale una estrella al repositorio 🔥
```

<div align="center">

GenLiteX — Expand Compatibility.

</div>
