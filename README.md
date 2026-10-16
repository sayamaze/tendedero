> **这是一个二次开发分支 / This is a fork with an added feature.**
>
> 本项目基于 **[alejandrobujan/tendedero](https://github.com/alejandrobujan/tendedero)** 修改，**全部核心设计与代码版权归原作者 Alejandro Buján 所有**。在此向原作者致敬——Tendedero 的晾衣绳创意与精巧实现都出自他手。
>
> This repository is a fork of **[alejandrobujan/tendedero](https://github.com/alejandrobujan/tendedero)**. All core design and code belong to the original author, **Alejandro Buján** — full credit to him for the lovely clothesline idea and its meticulous execution.
>
> ### 本分支的补充 / What this fork adds
>
> **在原作者基础上，补充了「剪贴板文字复制记录」功能。**
>
> 原版 Tendedero 只能把复制的*图片*挂上晾衣绳；本分支让**复制的文字**也能作为便签卡挂上绳：
>
> - 复制一段文字（Cmd+C）→ 自动挂成一张淡黄色便签卡
> - **点击便签卡** → 复制纯文本，到任何输入框 Cmd+V 粘贴
> - 多次复制同一段文字只挂一张，点击卡片复制不会重复挂
> - 兼容各类来源（含 MOSS、备忘录、浏览器等富文本应用的 Cmd+C）
> - 菜单栏开关升级为「挂上复制的图片和文字」
>
> **Building on the original, this fork adds clipboard *text* capture.**
>
> The original Tendedero hangs only copied *images*; this fork also hangs copied **text** as note cards:
>
> - Copy some text (Cmd+C) → it hangs as a small yellow note card
> - **Click a note card** → copies plain text, ready to paste (Cmd+V) anywhere
> - Re-copying the same text hangs only once; click-copying a card never re-hangs it
> - Works with rich-text sources (MOSS, Notes, browsers, etc.)
> - The menu bar toggle is now “Hang copied images and text”
>
> ---
>
> <br>

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="docs/images/hero-dark.png">
  <img src="docs/images/hero-light.png" alt="Tendedero. Screenshots, hung out to dry. Three screenshots in glass frames hang from a thin line under the macOS menu bar.">
</picture>

<h3 align="center"><a href="https://tendedero.app/?lang=en">Try it in your browser at tendedero.app&nbsp;&rsaquo;</a></h3>

<p align="center">
  Free and open source. For macOS 14 and later.
  <br>
  <a href="../../releases/latest">Download&nbsp;&rsaquo;</a>
  &nbsp;&nbsp;
  <a href="#build-from-source">Build from source&nbsp;&rsaquo;</a>
  <br><br>
  English&nbsp;·&nbsp;<a href="docs/i18n/README.es.md">Español</a>&nbsp;·&nbsp;<a href="docs/i18n/README.gl.md">Galego</a>&nbsp;·&nbsp;<a href="docs/i18n/README.fr.md">Français</a>&nbsp;·&nbsp;<a href="docs/i18n/README.pt-BR.md">Português (Brasil)</a>&nbsp;·&nbsp;<a href="docs/i18n/README.ja.md">日本語</a>&nbsp;·&nbsp;<a href="docs/i18n/README.ko.md">한국어</a>&nbsp;·&nbsp;<a href="docs/i18n/README.zh-Hans.md">简体中文</a>&nbsp;·&nbsp;<a href="docs/i18n/README.tr.md">Türkçe</a>&nbsp;·&nbsp;<a href="docs/i18n/README.az.md">Azərbaycanca</a>&nbsp;·&nbsp;<a href="docs/i18n/README.hi.md">हिन्दी</a>
</p>

<p align="center">
  <a href="https://trendshift.io/repositories/287033?utm_source=trendshift-badge&amp;utm_medium=badge&amp;utm_campaign=badge-trendshift-287033" target="_blank" rel="noopener noreferrer"><img src="https://trendshift.io/api/badge/trendshift/repositories/287033/daily?language=Swift" alt="alejandrobujan%2Ftendedero | Trendshift" width="250" height="55"/></a>
  <a href="https://trendshift.io/repositories/287033?utm_source=trendshift-badge&amp;utm_medium=badge&amp;utm_campaign=badge-trendshift-287033" target="_blank" rel="noopener noreferrer"><img src="https://trendshift.io/api/badge/trendshift/repositories/287033/weekly?language=Swift" alt="alejandrobujan%2Ftendedero | Trendshift" width="250" height="55"/></a>
</p>

<br>

## Out of sight. Within reach.

Every screenshot you take hangs on a line just above your screen.
Rest the pointer in the menu bar and it glides down. Move away and it's gone.

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="docs/images/demo-dark.gif">
  <img src="docs/images/demo-light.gif" alt="The pointer rests against the top edge, the line slides down with three screenshots swinging gently, a click copies one, and the line tucks away when the pointer leaves.">
</picture>

<br>
<br>

## A gesture for everything.

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="docs/images/bento-dark.png">
  <img src="docs/images/bento-light.png" alt="Click to copy. Hold to mark up. Drag to share. Let it go.">
</picture>

<br>
<br>

| | |
|:--|:--|
| Click | Copy the image. |
| Press and hold | Open it in Markup. |
| Double click | Open it in Preview. |
| Force click | Take a quick look. |
| Drag into an app | Send a copy. It stays on the line. |
| Drag into a folder | Keep it there. It leaves the line. |
| Drag to the Trash, or click the cross | Let it go. |
| Rest the pointer in the menu bar | Bring the line down on that screen. |
| Click anything in the menu bar | Put it away. |
| <kbd>⌃</kbd>&thinsp;<kbd>⌥</kbd>&thinsp;<kbd>T</kbd> | Show or hide the line. Change it under Shortcut in the menu bar. |

<br>

## Your Desktop. Finally clear.

Hand Tendedero your screenshots<sup>1</sup> and they skip the Desktop
entirely. No floating thumbnail. No five-second wait. Each capture hangs
the instant you take it, and only what you drag out is kept.

Screen recordings hang there too, with a play button over them.
Press and hold one to trim it.

Same shortcuts. Same muscle memory. Just less mess.

<br>

## Copied images too.

Take a screenshot with <kbd>⌃</kbd> held, or copy an image in Preview, and it
hangs on the line like any other. Turn on Hang copied images in the menu bar
and the shirt fills in while it is on. Only images: anything copied along
with text or a file, and anything a password manager marks as private, is
left alone.

<br>

## Private by design.

No account. No network. No analytics.
Tendedero runs entirely on your Mac, and your screenshots never leave it.

<br>

## Tech Specs

| | |
|:--|:--|
| **Compatibility** | macOS 14 Sonoma or later, on Apple silicon and Intel. Designed for macOS 27. |
| **Size** | 1.7 MB |
| **Languages** | English, Spanish, Galician, French, Portuguese (Brazil), Japanese, Korean, Chinese (Simplified), Turkish, Azerbaijani, Hindi |
| **Built with** | Swift, AppKit and SwiftUI |
| **Network access** | None |
| **Price** | Free |
| **License** | MIT for the code. The name and icon are not included. |

<br>

## Install

Download the disk image from the [latest release](../../releases/latest),
open it and drag Tendedero to Applications. Or install it with Homebrew:

```sh
brew install --cask alejandrobujan/tap/tendedero
```

Tendedero is signed with a Developer ID and notarized by Apple, so it opens
like any other app.

<br>

## Build from source

```sh
git clone git@github.com:alejandrobujan/tendedero.git
cd tendedero
scripts/build-app.sh
open build/Tendedero.app
```

Requires the Swift toolchain. Xcode is optional. With the Command Line Tools for macOS 27, the script falls back to the macOS 26 SDK they install alongside, because the new SDK needs a SwiftUI macro plugin only Xcode includes. Local builds are signed ad hoc,
so macOS asks again for access to the Desktop after each rebuild.

<details>
<summary>Inside the app</summary>
<br>

| File | Role |
|:--|:--|
| `AppDelegate.swift` | Menu bar, shortcut, revealing and tucking away the line |
| `LinePanel.swift` | The transparent strip along the top of the screen |
| `LineView.swift` | The line and where each photo hangs |
| `PeggedView.swift` | One photo: glass frame, clip, swing and breeze |
| `GrabArea.swift` | Click, long press, drag and drop |
| `ScreenshotWatcher.swift` | Notices new screenshots |
| `ClipboardWatcher.swift` | Notices images copied to the clipboard |
| `Inbox.swift` | Takes over screenshot settings and puts them back |
| `Markup.swift` | Opens the system Markup editor and saves the result |
| `Trim.swift` | Trims a screen recording and saves the result |
| `FullScreen.swift` | Knows when to stay hidden |
| `Line.swift` | What is hanging, and what you can do with it |

Every image here, the icon included, is drawn in code by
`scripts/make-icon.swift` and `scripts/make-readme-art.swift`.
`scripts/make-dmg.sh` builds the disk image for releases.

Translations live in `Sources/Tendedero/Resources`, one `.lproj` folder per
language. `swift scripts/check-strings.swift` checks that none is missing.

</details>

<br>

---

<sub>
1. On first launch, Tendedero offers to handle your screenshots. If you accept, it turns off the floating thumbnail and saves new screenshots to its own folder, two settings also found under Options in Cmd+Shift+5. Your previous settings are saved and restored when Tendedero quits or the option is turned off from the menu bar. Tendedero hides automatically while an app is in full screen.
</sub>

<br>
<br>

<p align="center">
  <img src="docs/images/icon.png" width="64" height="64" alt="">
  <br>
  <sub>The code is MIT licensed. The Tendedero name and icon are not, so forks need their own. See <a href="LICENSE">LICENSE</a>.</sub>
  <br>
  <sub>Designed and built by <a href="https://alejandrobujan.com">Alejandro Buján</a>.</sub>
</p>
