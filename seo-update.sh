#!/usr/bin/env bash
# SEO Optimization Script for K413MP3R4 GitHub Repositories
# This script improves GitHub repository SEO with optimized descriptions and topics
# Run with: bash seo-update.sh

set -e

echo "🔍 GitHub SEO Optimization Script"
echo "=================================="

# Array of repositories with optimized descriptions and topics
declare -A REPOS=(
    [NextGenBlock]="Modern next-gen firewall for Windows with DPI, IDS/IPS, GeoIP blocking|firewall,windows-security,network-monitoring,python,cybersecurity"
    [AAROK]="Security portfolio - CyberSecurity, Bug Bounty, Pentesting projects|portfolio,cybersecurity,bug-bounty,pentesting,security-research"
    [Infosploit]="OSINT information gathering tool for IP, domain, subdomain analysis|osint,cybersecurity,pentesting,information-gathering,python"
    [BTCPriceMonitor]="Real-time cryptocurrency price tracker for Bitcoin and top coins|cryptocurrency,bitcoin,price-tracker,python,real-time-data"
    [Sherlock-master]="OSINT tool to find usernames across 300+ social media platforms|osint,reconnaissance,social-media-search,python,username-search"
    [AAROK-AddonSpawner]="GTA V addon spawner with modern UI and AAROK branding|automation,gaming,javascript,gta5,modding"
    [K413MP3R4.github.io]="Personal portfolio website - Security projects, resume & blog|portfolio,cybersecurity,blog,personal-website,security-projects"
    [aarok-card]="Interactive personal card with gaming, tech and streaming links|personal-card,interactive,portfolio,gaming,tech"
    [arocktv-tiktok-legal]="Legal pages - Terms of service, Privacy policy, OAuth for TikTok|legal,terms-of-service,privacy-policy,oauth,tiktok"
    [tiktokxRHi5n2g204gkyPKWTQldBamwhadricC.txt]="TikTok developer verification file for OAuth integration|tiktok,verification,oauth,developer"
)

# Configuration
OWNER="K413MP3R4"
GITHUB_TOKEN=${GITHUB_TOKEN:-}

if [ -z "$GITHUB_TOKEN" ]; then
    echo "⚠️  GITHUB_TOKEN environment variable not set"
    echo "Set it with: export GITHUB_TOKEN=your_token_here"
    echo "Or use: gh auth login"
fi

echo ""
echo "📊 Optimization Plan:"
echo "-------------------"
echo ""

for repo in "${!REPOS[@]}"; do
    IFS='|' read -r description topics <<< "${REPOS[$repo]}"
    echo "✏️  $repo"
    echo "   Description: $description"
    echo "   Topics: $topics"
    echo ""
done

echo "⚠️  Note: GitHub API does not allow updating repository descriptions or topics programmatically."
echo "         You must update them manually via GitHub web interface."
echo ""
echo "📝 Manual Update Instructions:"
echo "=============================="
echo ""
echo "For each repository:"
echo "1. Go to: https://github.com/K413MP3R4/REPO_NAME/settings"
echo "2. Update the description in 'Repository details' section"
echo "3. Add topics under 'Topics' section"
echo ""
echo "Or use GitHub CLI:"
echo "  gh repo edit K413MP3R4/REPO_NAME --description 'Your new description'"
echo ""
echo "✅ Copy-paste commands below for each repo:"
echo "========================================"
echo ""

for repo in "${!REPOS[@]}"; do
    IFS='|' read -r description topics <<< "${REPOS[$repo]}"
    echo "# $repo"
    echo "gh repo edit K413MP3R4/$repo --description \"$description\""
    echo "# Then manually add topics: $topics"
    echo ""
done

echo "🔗 GitHub CLI Topics Documentation:"
echo "https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/classifying-your-repository-with-topics"
