#
# Script.ps1
#
$xlmFile = ".\XMLLoader\MantisDBFieldInfo.xml"
#$xmlanothershee = 
$xml = [xml](Get-Content $xlmFile)

#Write-host $xml.root.DisplayName

<#
foreach ( $DN in $xml.root.DisplayName)
{
	#Write-host $DN.Name
	if($DN.Name -eq "ID" )
	{
		Write-Host "Here we are!!"
	}
	elseif($DN.Name -eq "ステータス")
	{
		Write-Host "Just Do It!!"	
	}

}

#>


#Write-Host $xml.root.DisplayName.Length

for ($i=0; $i -lt $xml.root.DisplayName.Length; $i++)
{
	Write-Host $xml.root.DisplayName[$i].Name
	Write-Host $xml.root.DisplayName[$i].TableName

<#	if( $xml.root.DisplayName[0].Name -eq $xmlanothersheet.root.DisplayName[0] ) 
	{
		#別のシート同士の同じセルの値を使ったなにがしかの処理など
	}
#>
}

