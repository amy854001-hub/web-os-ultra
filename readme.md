<p align="center">
  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 650 140" width="500" height="100%">
    <g transform="translate(10, 15) scale(1.6)">
      <rect x="4" y="8" width="56" height="38" rx="4" fill="#2d3748" stroke="#4a5568" stroke-width="2"/>
      <rect x="7" y="11" width="50" height="32" rx="2" fill="#0f172a"/>
      <path d="M26 46h12v8H26z" fill="#4a5568"/>
      <path d="M20 54h24v2H20z" fill="#2d3748" rx="1"/>
      <circle cx="32" cy="27" r="10" fill="none" stroke="#38bdf8" stroke-width="1.5" stroke-dasharray="2 2" opacity="0.7"/>
      <path d="M22 27h20M32 17v20" stroke="#38bdf8" stroke-width="1" opacity="0.5"/>
      <rect x="11" y="15" width="6" height="2" rx="0.5" fill="#34d399" />
      <rect x="11" y="20" width="10" height="2" rx="0.5" fill="#38bdf8" />
      <rect x="11" y="25" width="4" height="2" rx="0.5" fill="#e2e8f0" opacity="0.3" />
      <circle cx="46" cy="34" r="8" fill="#3182ce"/>
      <circle cx="46" cy="34" r="5" fill="none" stroke="#ffffff" stroke-width="1"/>
      <path d="M41 34h10M46 29c1.5 1 2 3 2 5s-.5 4-2 5M46 29c-1.5 1-2 3-2 5s.5 4 2 5" stroke="#ffffff" stroke-width="0.8" fill="none"/>
    </g>
    <text x="140" y="95" font-family="-apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif" font-size="96" font-weight="800" fill="currentColor" letter-spacing="-3">Web<tspan font-weight="300" letter-spacing="-1">os</tspan></text>
  </svg>
</p>

<p align="center">
  <text><b>⚡ WebOS Ultra: A Complete, High-Performance Web Desktop Environment ⚡</b></text>
</p>

<p align="center">
  <a href="https://raw.githubusercontent.com/amy854001-hub/web-os-ultra/main/index.html" download="index.html">
    <img src="https://img.shields.io/badge/📥_Download_index.html_Directly-38bdf8?style=for-the-badge&logoWidth=40&labelColor=0f172a" alt="Download index.html">
  </a>
</p>

<p align="center">
  <img src="https://img.shields.io/github/stars/amy854001-hub/web-os-ultra?style=for-the-badge&color=34d399" alt="Stars">
  <img src="https://img.shields.io/github/license/amy854001-hub/web-os-ultra?style=for-the-badge&color=a855f7" alt="License">
</p>

---

## 🪐 About the Project

**WebOS Ultra** is a fast, highly polished web-based operating system simulation built inside a single, zero-install monolithic file. It serves a beautiful, responsive workspace interface directly to your web browser with zero server setup or heavy configuration scripts needed.

---

## 💎 What's Built Inside

* 🗔 **Dynamic Window Subsystem:** Fully responsive multi-window manager supporting drag-and-drop repositioning, depth focusing, minimizing, maximizing, and clean scaling layouts.
* 🖱️ **Desktop Context Menus:** Native-feeling right-click context menu infrastructure for both empty desktop workspaces and individual app icon links.
* 🎨 **Premium Glassmorphism Design:** Beautiful visual layout utilizing high-end Tailwind CSS glass styles, translucent taskbars, clean blur effects, and smooth layout transformations.
* 🔌 **Single Bundle Monolith:** Running seamlessly through dynamic CDNs via browser-compiled React 18, Babel standalone engines, and Lucide icons without requiring npm dependencies.

---

## 🚀 How to Run and Test

### 1. View it Live on GitHub Pages
Since everything is beautifully built inside a single file, you can visit the working simulation live across the web instantly:
👉 **Live Link:** `https://amy854001-hub.github.io/web-os-ultra/`

### 2. Running Locally (No Internet Needed)
Click the blue **Download index.html Directly** button at the top of this page (or right-click it and choose *Save Link As*). Once saved to your computer, simply double-click the **`index.html`** file to boot the system instantly!

---

## 🐳 Running inside a Local Docker Container

If you want to isolate and run WebOS Ultra inside a completely clean local Docker container:

### 1. Setup the Dockerfile
Create a file named `Dockerfile` right next to your `index.html` file and drop this code inside:
```dockerfile
FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
