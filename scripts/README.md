# 🎨 Asset Generation Scripts

This directory contains scripts to generate custom SVG assets for your GitHub profile in Apple Sky Blue style.

## 📁 Scripts

### 1. **generate-svg.sh**
Bash script to generate custom SVG headers with animated elements.

**Usage:**
```bash
chmod +x scripts/generate-svg.sh
./scripts/generate-svg.sh "Your Text" output.svg 007AFF
```

**Parameters:**
- `$1` - Text to display (default: "Welcome")
- `$2` - Output filename (default: "custom-header.svg")
- `$3` - Primary color (default: "007AFF")

**Example:**
```bash
./scripts/generate-svg.sh "Hello World" hello.svg FF6B6B
```

### 2. **badge-generator.py**
Python script to generate custom badge SVGs with gradient styling.

**Usage:**
```bash
python3 scripts/badge-generator.py 'Badge Text' [output.svg] [#color]
```

**Parameters:**
- `arg1` - Badge text (required)
- `arg2` - Output filename (optional, default: "badge.svg")
- `arg3` - Color hex code (optional, default: "#007AFF")

**Example:**
```bash
python3 scripts/badge-generator.py 'Expert' expert-badge.svg '#FF6B6B'
```

## 🎨 Color Palette (Apple Sky Blue Theme)

```
Primary Blue:   #007AFF
Light Blue:     #5AC8FA
Background:     #E8F4FF
Text Dark:      #1D1D1F
Gold (Trophy):  #FFD700
```

## 🚀 Quick Start

Generate all custom assets:

```bash
# Make scripts executable
chmod +x scripts/*.sh

# Generate custom header
./scripts/generate-svg.sh "Backend Developer" ./assets/custom-header.svg

# Generate badges
python3 scripts/badge-generator.py 'Java Expert' ./assets/java-badge.svg '#007AFF'
python3 scripts/badge-generator.py 'Spring Pro' ./assets/spring-badge.svg '#6DB33F'
```

## 📝 Notes

- All SVG files use SF Pro Display font (Apple's system font)
- Animations are included for modern, dynamic effects
- Files are optimized for GitHub rendering
- Compatible with both light and dark themes

## 💡 Tips

1. Keep text short for better readability (max 20 characters)
2. Use high contrast colors for better visibility
3. Test SVG files in GitHub preview before committing
4. Maintain consistent color scheme across all assets

---

**Created with 💙 by Eiztrips**
