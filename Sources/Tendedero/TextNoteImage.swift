import AppKit

/// Draws the card for a copied text: its first lines on a soft yellow note,
/// rendered at card size so it hangs sharp like any photo. Rendered once per
/// file; the line keeps the result like any other thumbnail.
enum TextNoteImage {
    static func make(_ text: String) -> NSImage {
        let scale = Layout.size.scale
        let size = NSSize(width: (Layout.cardWidth - 14) * scale, height: Layout.photoMaxHeight * scale)
        let image = NSImage(size: size)
        image.lockFocus()

        NSColor(calibratedRed: 1.0, green: 0.965, blue: 0.82, alpha: 1).setFill()
        NSRect(origin: .zero, size: size).fill()

        let font = NSFont.systemFont(ofSize: 13 * scale)
        let shown = text.count > 600 ? String(text.prefix(600)) + "…" : text
        let paragraph = NSMutableParagraphStyle()
        paragraph.lineBreakMode = .byWordWrapping
        let attributes: [NSAttributedString.Key: Any] = [
            .font: font,
            .foregroundColor: NSColor.labelColor,
            .paragraphStyle: paragraph,
        ]
        let inset: CGFloat = 10 * scale
        let rect = NSRect(x: inset, y: inset,
                          width: size.width - inset * 2, height: size.height - inset * 2)
        shown.draw(with: rect, options: [.usesLineFragmentOrigin, .truncatesLastVisibleLine],
                   attributes: attributes)

        image.unlockFocus()
        return image
    }
}
