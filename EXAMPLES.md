# Examples: Custom SVG Variations

This file contains examples of how to create different SVG styles and variations.

## 🎨 Color Variations

### Purple Theme
```bash
./scripts/generate-svg.sh "Purple Style" purple-header.svg "BF5AF2"
```
Colors: `#BF5AF2` (Purple), `#DA70D6` (Orchid)

### Green Theme  
```bash
./scripts/generate-svg.sh "Green Energy" green-header.svg "34C759"
```
Colors: `#34C759` (Green), `#32D74B` (Mint)

### Red Theme
```bash
./scripts/generate-svg.sh "Red Power" red-header.svg "FF3B30"
```
Colors: `#FF3B30` (Red), `#FF6961` (Pastel Red)

### Orange Theme
```bash
./scripts/generate-svg.sh "Orange Vibe" orange-header.svg "FF9500"
```
Colors: `#FF9500` (Orange), `#FFB340` (Light Orange)

## 🎯 Badge Examples

### Skill Level Badges
```bash
python3 scripts/badge-generator.py 'Expert' expert-badge.svg '#007AFF'
python3 scripts/badge-generator.py 'Advanced' advanced-badge.svg '#34C759'
python3 scripts/badge-generator.py 'Intermediate' intermediate-badge.svg '#FF9500'
python3 scripts/badge-generator.py 'Beginner' beginner-badge.svg '#FF3B30'
```

### Technology Badges
```bash
python3 scripts/badge-generator.py 'Java 17' java-badge.svg '#007396'
python3 scripts/badge-generator.py 'Spring Boot' spring-badge.svg '#6DB33F'
python3 scripts/badge-generator.py 'PostgreSQL' postgres-badge.svg '#336791'
python3 scripts/badge-generator.py 'Docker' docker-badge.svg '#2496ED'
```

### Status Badges
```bash
python3 scripts/badge-generator.py 'Active' active-badge.svg '#34C759'
python3 scripts/badge-generator.py 'In Progress' progress-badge.svg '#FF9500'
python3 scripts/badge-generator.py 'Completed' complete-badge.svg '#007AFF'
python3 scripts/badge-generator.py 'Archived' archive-badge.svg '#8E8E93'
```

## 🎬 Animation Variations

### Pulse Animation
Add to your SVG:
```xml
<circle cx="100" cy="60" r="30" fill="#007AFF" opacity="0.3">
  <animate attributeName="opacity" values="0.3;0.6;0.3" dur="2s" repeatCount="indefinite"/>
  <animate attributeName="r" values="30;40;30" dur="2s" repeatCount="indefinite"/>
</circle>
```

### Rotation Animation
```xml
<g transform-origin="50 50">
  <rect x="45" y="45" width="10" height="10" fill="#007AFF">
    <animateTransform attributeName="transform" type="rotate" 
                      from="0 50 50" to="360 50 50" 
                      dur="4s" repeatCount="indefinite"/>
  </rect>
</g>
```

### Sliding Animation
```xml
<rect x="0" y="0" width="50" height="50" fill="#007AFF">
  <animate attributeName="x" values="0;950;0" dur="5s" repeatCount="indefinite"/>
</rect>
```

## 📐 Custom Dimensions

### Wide Banner
```bash
# Create 1200px × 150px banner
# Edit generate-svg.sh and change:
# width="1000" -> width="1200"
# height="120" -> height="150"
```

### Square Icon
```bash
# Create 200px × 200px icon
# Useful for profile pictures or logos
```

### Mini Badge
```bash
# Create 100px × 30px mini badge
# Perfect for inline text decorations
```

## 🎨 Gradient Variations

### Three-Color Gradient
```xml
<linearGradient id="tripleGradient" x1="0%" y1="0%" x2="100%" y2="0%">
  <stop offset="0%" style="stop-color:#007AFF;stop-opacity:1" />
  <stop offset="50%" style="stop-color:#5AC8FA;stop-opacity:1" />
  <stop offset="100%" style="stop-color:#34C759;stop-opacity:1" />
</linearGradient>
```

### Radial Gradient
```xml
<radialGradient id="radialGrad" cx="50%" cy="50%" r="50%">
  <stop offset="0%" style="stop-color:#007AFF;stop-opacity:1" />
  <stop offset="100%" style="stop-color:#5AC8FA;stop-opacity:0.5" />
</radialGradient>
```

### Diagonal Gradient
```xml
<linearGradient id="diagonalGrad" x1="0%" y1="0%" x2="100%" y2="100%">
  <stop offset="0%" style="stop-color:#007AFF;stop-opacity:1" />
  <stop offset="100%" style="stop-color:#5AC8FA;stop-opacity:1" />
</linearGradient>
```

## 🔗 Integration Examples

### Use in README
```markdown
<!-- Custom header -->
<img src="./assets/custom-header.svg" width="100%" alt="Custom Header"/>

<!-- Inline badge -->
Skills: <img src="./assets/expert-badge.svg" height="20" alt="Expert"/>

<!-- Multiple badges -->
<p align="center">
  <img src="./assets/java-badge.svg" height="30" alt="Java"/>
  <img src="./assets/spring-badge.svg" height="30" alt="Spring"/>
  <img src="./assets/docker-badge.svg" height="30" alt="Docker"/>
</p>
```

### Use in HTML
```html
<div style="text-align: center;">
  <img src="https://raw.githubusercontent.com/YourUsername/YourRepo/main/assets/header.svg" 
       width="100%" alt="Header"/>
</div>
```

## 💡 Pro Tips

1. **Performance**: Keep SVG files under 100KB for fast loading
2. **Compatibility**: Test animations in different browsers
3. **Accessibility**: Always add alt text to images
4. **Consistency**: Use the same color palette across all assets
5. **Version Control**: Commit generated assets to track changes

## 🔄 Batch Generation

Create multiple assets at once:
```bash
# Generate all skill badges
for skill in "Java" "Spring" "Docker" "Kubernetes" "PostgreSQL"; do
  python3 scripts/badge-generator.py "$skill" "assets/${skill,,}-badge.svg"
done

# Generate theme variations
for color in "007AFF" "34C759" "FF9500" "BF5AF2"; do
  ./scripts/generate-svg.sh "Theme" "assets/theme-${color}.svg" "$color"
done
```

---

**Experiment and create your unique style! 🎨**
