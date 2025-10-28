# 🚀 Quick Start Guide

Get your professional Apple-styled GitHub profile up and running in 5 minutes!

## Step 1: Setup Your Repository

### Create Profile Repository
Your GitHub profile README needs a special repository:
1. Go to GitHub and create a **new repository**
2. Name it **exactly** like your username (e.g., `Eiztrips`)
3. Make it **public**
4. Initialize with a README (you'll replace it)

### Clone This Template
```bash
# Clone the template
git clone https://github.com/Eiztrips/Eiztrips.git my-profile

# Navigate to directory
cd my-profile

# Remove old git history and start fresh
rm -rf .git
git init
git remote add origin https://github.com/YOUR_USERNAME/YOUR_USERNAME.git
```

## Step 2: Customize Content

### Update README.md
Open `README.md` and replace:

**Line 11** - Update typing animation:
```markdown
lines=Backend+Developer;Crafting+Scalable+Microservices;...
# Change to your own titles and skills
```

**Line 16-17** - Change username:
```markdown
username=Eiztrips
# Replace with YOUR_USERNAME
```

**Line 33** - Update About section:
```markdown
Passionate backend developer...
# Write your own introduction
```

**Line 40-48** - Modify the code block:
```java
public class Developer {
    private final String name = "YOUR_NAME";
    // Update with your info
}
```

**Line 55-60** - Current Focus section:
```markdown
<code>■</code> Your current focus areas
```

**Line 63-65** - Update location/status:
```markdown
<strong>Location:</strong> Your Location
<strong>Timezone:</strong> Your Timezone
```

### Update Tech Stack (Lines 80-110)

Replace icons with your technologies:
```markdown
<img src="https://skillicons.dev/icons?i=java" />
```

Find more icons at [skillicons.dev](https://skillicons.dev)

### Update GitHub Stats (Lines 117-135)

Replace all instances of `Eiztrips` with your username:
```markdown
https://github-readme-stats.vercel.app/api?username=YOUR_USERNAME
https://github-readme-streak-stats.herokuapp.com/?user=YOUR_USERNAME
```

### Update Projects (Lines 149-185)

Edit project descriptions and technologies to match your work.

### Update Contact (Lines 193-205)

Replace with your contact information:
```markdown
<a href="https://t.me/YOUR_TELEGRAM">
<a href="mailto:YOUR_EMAIL">
<a href="https://github.com/YOUR_USERNAME">
```

## Step 3: Customize Colors (Optional)

### Change Primary Color
Default is Apple Blue (#007AFF). To change:

1. Open each SVG file in `assets/`
2. Find: `#007AFF`
3. Replace with your color (e.g., `#34C759` for green)

### Quick Color Replace (Terminal)
```bash
# Change all SVGs to green theme
cd assets
sed -i '' 's/#007AFF/#34C759/g' *.svg

# Change to purple theme
sed -i '' 's/#007AFF/#BF5AF2/g' *.svg
```

### Update README Stats Colors
In README.md, update stat URLs:
```markdown
title_color=007AFF   # Change to your hex (without #)
icon_color=007AFF    # Change to your hex (without #)
```

## Step 4: Test Locally

### Preview in VS Code
1. Install "Markdown Preview Enhanced" extension
2. Open `README.md`
3. Press `Cmd+K V` (Mac) or `Ctrl+K V` (Windows)
4. Check how it looks

### Test SVG Files
Open SVG files in browser to verify animations work:
```bash
open assets/header.svg
```

## Step 5: Deploy

### Commit and Push
```bash
# Add all files
git add .

# Commit changes
git commit -m "Initialize profile with Apple Sky Blue theme"

# Push to GitHub
git push -u origin main
```

### Verify on GitHub
1. Go to `github.com/YOUR_USERNAME`
2. Your profile should display the new README
3. Check that all images and stats load correctly

## 🎨 Advanced Customization

### Generate Custom SVG Headers
```bash
# Make script executable
chmod +x scripts/generate-svg.sh

# Generate custom header
./scripts/generate-svg.sh "Your Custom Text" assets/custom-header.svg "007AFF"
```

### Create Custom Badges
```bash
# Generate a badge
python3 scripts/badge-generator.py 'Expert Level' expert-badge.svg '#007AFF'

# Use in README
<img src="./assets/expert-badge.svg" height="30" alt="Expert"/>
```

### Add More Sections

Copy an existing section and modify:
```markdown
<!-- New Section -->
<img src="./assets/about.svg" width="100%" alt="Section Title"/>

<div align="center">
  Your content here
</div>
```

## ⚠️ Common Issues

### Stats Not Loading?
- Check username is correct (case-sensitive)
- Verify your profile is public
- Wait a few minutes for cache to clear

### SVG Files Not Showing?
- Make sure files are in `assets/` folder
- Check file names match README references
- Ensure repository is public

### Animations Not Working?
- SVG animations require modern browsers
- Check if SVG file is valid (open in browser)
- Some corporate firewalls block animations

## 🔄 Keeping Updated

### Pull Latest Changes
```bash
# Add upstream remote (once)
git remote add upstream https://github.com/Eiztrips/Eiztrips.git

# Fetch and merge updates
git fetch upstream
git merge upstream/main

# Resolve conflicts if any
# Then push
git push origin main
```

## 📚 Next Steps

1. ✅ Read `CUSTOMIZATION.md` for detailed options
2. ✅ Check `EXAMPLES.md` for SVG generation examples
3. ✅ Review `PROJECT_OVERVIEW.md` for full feature list
4. ✅ Join discussions and share your profile!

## 🆘 Need Help?

- 📖 Check documentation files
- 💡 Look at `EXAMPLES.md`
- 🐛 Open an issue on GitHub
- 💬 Contact: [@contact_eiztrips](https://t.me/contact_eiztrips)

---

**Ready to impress?** Push your changes and watch your profile come to life! ✨
