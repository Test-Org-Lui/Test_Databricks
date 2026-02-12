# SonarQube Local Analysis Script

# Install SonarScanner
# Download from: https://docs.sonarqube.org/latest/analyzing-source-code/scanners/sonarscanner/

# Run the analysis
$env:SONAR_HOST_URL = "http://localhost:9000"  # Your SonarQube server URL
$env:SONAR_TOKEN = "your-token-here"           # Your SonarQube token

# Execute scanner
sonar-scanner `
  -Dsonar.projectKey=databricks-dummy-repo `
  -Dsonar.sources=. `
  -Dsonar.host.url=$env:SONAR_HOST_URL `
  -Dsonar.token=$env:SONAR_TOKEN

Write-Host "SonarQube analysis complete! Check results at $env:SONAR_HOST_URL"
