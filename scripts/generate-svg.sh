#!/bin/bash

# Script to generate custom SVG headers with personalized text
# Usage: ./generate-svg.sh "Your Text" output.svg

TEXT="${1:-Welcome}"
OUTPUT="${2:-custom-header.svg}"
COLOR="${3:-007AFF}"

cat > "$OUTPUT" << EOF
<svg width="1000" height="120" xmlns="http://www.w3.org/2000/svg">
  <defs>
    <linearGradient id="customGradient" x1="0%" y1="0%" x2="100%" y2="0%">
      <stop offset="0%" style="stop-color:#${COLOR};stop-opacity:1" />
      <stop offset="50%" style="stop-color:#5AC8FA;stop-opacity:1" />
      <stop offset="100%" style="stop-color:#${COLOR};stop-opacity:1" />
    </linearGradient>
    <filter id="glow">
      <feGaussianBlur stdDeviation="4" result="coloredBlur"/>
      <feMerge>
        <feMergeNode in="coloredBlur"/>
        <feMergeNode in="SourceGraphic"/>
      </feMerge>
    </filter>
  </defs>
  
  <rect width="1000" height="120" fill="url(#customGradient)" opacity="0.1"/>
  
  <circle cx="100" cy="60" r="30" fill="#${COLOR}" opacity="0.2">
    <animate attributeName="r" values="30;35;30" dur="3s" repeatCount="indefinite"/>
  </circle>
  <circle cx="900" cy="60" r="25" fill="#5AC8FA" opacity="0.2">
    <animate attributeName="r" values="25;30;25" dur="4s" repeatCount="indefinite"/>
  </circle>
  
  <text x="500" y="70" font-family="SF Pro Display, -apple-system, BlinkMacSystemFont, sans-serif" 
        font-size="48" font-weight="600" text-anchor="middle" fill="url(#customGradient)" filter="url(#glow)">
    ${TEXT}
  </text>
</svg>
EOF

echo "✅ Generated ${OUTPUT} with text: ${TEXT}"
