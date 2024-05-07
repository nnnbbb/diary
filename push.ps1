$date = Get-Date -Format "yyyy-MM-dd"

# 检查 Git 是否有更改
$gitChangedFiles = $(git status --porcelain | Measure-Object | Select-Object -expand Count)

if ($gitChangedFiles -gt 0) {
  git pull
  git add .
  git commit -m "Updated $date"
  git push
}