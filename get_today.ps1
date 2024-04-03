$date = Get-Date -Format "yyyyMMdd"
$file = "$date.md"

if (Test-Path -Path $file -PathType Leaf) {

} else {
    Copy-Item -Path 'template.md' -Destination $file
}
code $file