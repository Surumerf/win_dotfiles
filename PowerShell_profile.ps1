set-alias sbtext sublime_text
set-alias ipy ipython
set-alias ppt powerpnt
set-alias word winword
set-alias em emeditor
set-alias ex explorer
set-alias st start

function which {
    gcm $args | fl
}

function git_branch {
	git branch 2>$null |
	where { -not [System.String]::IsNullOrEmpty($_.Split()[0]) } |
	% { $bn = $_.Split()[1]
	Write-Output " ($bn)" }
}

function prompt {
	(Get-Host).UI.RawUI.WindowTitle = "Windows PowerShell " + $pwd
	
	$gb = git_branch
	
	Write-Host "Pwsh" -NoNewline -ForegroundColor Green
	Write-Host ":" -NoNewline -ForegroundColor White
	Write-Host "$pwd" -NoNewline -ForegroundColor Blue
	Write-Host "$gb"  -ForegroundColor Red
	Write-Host "$" -NoNewline -ForegroundColor Yellow
	return " "
}
