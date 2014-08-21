param(
	$buildCounter,
	$signAssemblies = $false,
	$signKeyPath
)

cls

Import-Module '..\Tools\PSake\psake.psm1'
Invoke-psake '.\build.ps1' Test -framework 3.5 -parameters @{"buildCounter"=$buildCounter;} -properties @{signAssemblies=$signAssemblies;signKeyPath=$signKeyPath}
Remove-Module psake
