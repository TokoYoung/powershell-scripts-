New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Akhalkalaki Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Akhaltsikhe Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Ambrolauri Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Baghdati Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Chiatura Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Gori Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Kaspi Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Khashuri Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Kutaisi-2 Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Sachkhere Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Samtredia Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Zestaphoni Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Kobuleti Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Zugdidi Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Khulo Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Varketili Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Dmanisi Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Didube Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Batumi Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Poti Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Sagarejo Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Gldani Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Marneuli Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Telavi Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Khelvachauri Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Chkhorotsku Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Lagodekhi Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Senaki Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Rustavi Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Tsnori Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Akhmeta Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Lilo Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Bolnisi Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Gurjaani Service Center"-OrganizationalUnit Users
New-DynamicDistributionGroup -IncludedRecipients MailboxUsers -Name "Kvareli Service Center"-OrganizationalUnit Users






$scGroupArray = @("Akhalkalaki Service Center","Akhaltsikhe Service Center","Ambrolauri Service Center","Baghdati Service Center","Chiatura Service Center","Gori Service Center","Kaspi Service Center","Khashuri Service Center","Kutaisi-2 Service Center","Sachkhere Service Center","Samtredia Service Center","Zestaphoni Service Center","Kobuleti Service Center","Zugdidi Service Center","Khulo Service Center","Varketili Service Center","Dmanisi Service Center","Didube Service Center","Batumi Service Center","Poti Service Center","Sagarejo Service Center","Gldani Service Center","Marneuli Service Center","Telavi Service Center","Khelvachauri Service Center","Chkhorotsku Service Center","Lagodekhi Service Center","Senaki Service Center","Rustavi Service Center","Tsnori Service Center","Akhmeta Service Center","Lilo Service Center","Bolnisi Service Center","Gurjaani Service Center","Kvareli Service Center","Bolnisi Service Center","Gurjaani Service Center","Kvareli Service Center")
$scArray = @("Akhalkalaki","Akhaltsikhe","Ambrolauri","Baghdati","Chiatura","Gori","Kaspi","Khashuri","Kutaisi-2","Sachkhere","Samtredia","Zestaphoni","Kobuleti","Zugdidi","Khulo","Varketili","Dmanisi","Didube","Batumi","Poti","Sagarejo","Gldani","Marneuli","Telavi","Khelvachauri","Chkhorotsku","Lagodekhi","Senaki","Rustavi","Tsnori","Akhmeta","Lilo","Bolnisi","Gurjaani","Kvareli")


for ($i=0; $i -le 34; $i ++){
$Sc = $scArray[$i].ToString()
$scg = $scGroupArray[$i]
Write-Host $Sc
Write-Host $scg

Set-DynamicDistributionGroup -Identity $scg -RecipientContainer "Domain_Users" -RecipientFilter "{(RecipientType -eq 'UserMailbox') -and (Office -eq '$Sc')}"

}

