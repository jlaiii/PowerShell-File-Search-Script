# Prompt user for search term
$searchTerm = Read-Host "Enter the search term: "

# Search all drives on the computer for files or folders matching the search term
Get-ChildItem -Recurse | Where-Object {$_.Name -match $searchTerm} | ForEach-Object {
    # Show the location of the file or folder
    Write-Host "Found a file or folder matching the search term at: " $_.FullName
}

# Restart the script
& "$PSCommandPath"
