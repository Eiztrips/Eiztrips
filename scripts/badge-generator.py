#!/usr/bin/env python3
"""
Custom SVG Badge Generator
Generate beautiful Apple-style badges for your GitHub profile
"""

def generate_badge(text, color="#007AFF", width=200, height=50):
    """Generate a custom SVG badge with Apple Sky Blue styling"""
    
    svg = f'''<svg width="{width}" height="{height}" xmlns="http://www.w3.org/2000/svg">
  <defs>
    <linearGradient id="badgeGradient" x1="0%" y1="0%" x2="100%" y2="100%">
      <stop offset="0%" style="stop-color:{color};stop-opacity:1" />
      <stop offset="100%" style="stop-color:#5AC8FA;stop-opacity:1" />
    </linearGradient>
    <filter id="shadow">
      <feDropShadow dx="0" dy="2" stdDeviation="3" flood-opacity="0.3"/>
    </filter>
  </defs>
  
  <rect x="2" y="2" width="{width-4}" height="{height-4}" 
        rx="{height//4}" fill="url(#badgeGradient)" filter="url(#shadow)"/>
  
  <text x="{width//2}" y="{height//2 + 6}" 
        font-family="SF Pro Display, -apple-system, sans-serif" 
        font-size="18" font-weight="600" 
        text-anchor="middle" fill="white">
    {text}
  </text>
</svg>'''
    
    return svg


def main():
    import sys
    
    if len(sys.argv) < 2:
        print("Usage: python3 badge-generator.py 'Badge Text' [output.svg] [color]")
        sys.exit(1)
    
    text = sys.argv[1]
    output = sys.argv[2] if len(sys.argv) > 2 else "badge.svg"
    color = sys.argv[3] if len(sys.argv) > 3 else "#007AFF"
    
    badge_svg = generate_badge(text, color)
    
    with open(output, 'w') as f:
        f.write(badge_svg)
    
    print(f"✅ Generated {output} with text: {text}")


if __name__ == "__main__":
    main()
