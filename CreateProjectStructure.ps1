# Define the root directory name for your project
$rootDir = "NotableAPIs"

# Function to create directories and README files
function CreateDirectoryWithReadme {
    param (
        [string]$path,
        [string]$readmeContent = "# $path`n`nThis directory contains information about $path."
    )

    if (-Not (Test-Path -Path $path)) {
        New-Item -ItemType Directory -Path $path
        New-Item -Path "$path\README.md" -ItemType File -Value $readmeContent
    }
}

# Create the root directory
if (-Not (Test-Path -Path $rootDir)) {
    New-Item -ItemType Directory -Path $rootDir
}

# Navigate to the root directory
Set-Location $rootDir

# Create or update the main README.md
if (-Not (Test-Path -Path "README.md")) {
    New-Item -Path "README.md" -ItemType File -Value "# NotableAPIs`n`nWelcome to the NotableAPIs repository!"
} else {
    Set-Content -Path "README.md" -Value "# NotableAPIs`n`nWelcome to the NotableAPIs repository!"
}

# Create LICENSE file (replace with your preferred license text)
if (-Not (Test-Path -Path "LICENSE")) {
    New-Item -Path "LICENSE" -ItemType File -Value "Your license text here."
}

# Create API categories
$apis = @("free", "freemium", "paid")
foreach ($api in $apis) {
    CreateDirectoryWithReadme -path "apis\$api" -readmeContent "# $api APIs`n`nThis directory contains information about $api APIs."
}

# Create tools and platforms directory
CreateDirectoryWithReadme -path "apis\tools_and_platforms" -readmeContent "# API Tools and Platforms`n`nThis directory includes tools for managing or using APIs."

# Create categories directory
CreateDirectoryWithReadme -path "categories" -readmeContent "# API Categories`n`nAPIs grouped by their functionality."

# Create by-provider directory
CreateDirectoryWithReadme -path "by-provider" -readmeContent "# APIs by Provider`n`nList of APIs grouped by their provider."

# Create docs directory
CreateDirectoryWithReadme -path "docs" -readmeContent "# Documentation`n`nAdditional documentation for contributors and users."

# Create scripts directory
CreateDirectoryWithReadme -path "scripts" -readmeContent "# Utility Scripts`n`nScripts or tools for managing or testing APIs."

# Output message
Write-Output "Project structure for $rootDir has been created."
