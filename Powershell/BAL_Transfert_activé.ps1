#Boites aux lettres avec un transfert activé

#2 possibilités de recherche :

#Transfert mis en place par un administrateur directement sur la BAL

Get-Mailbox | Where-object {($_.ForwardingAddress -notlike $null) -or ($_.ForwardingSmtpAddress -notlike $null)}| FT UserPrincipalName,ForwardingSmtpAddress,ForwardingAddress,DeliverToMailboxAndForward

#Transfert mis en place au niveau des règles Outlook de l’utilisateur

$Mailboxes = Get-Mailbox -ResultSize unlimited | where {$_.RecipientTypeDetails -eq “UserMailbox”}
foreach ($Mailbox in $Mailboxes)
{
Get-InboxRule -mailbox $Mailbox.Name | Where-object {$_.forwardto -or $_.forwardasattachmentto} | fl mailboxownerid,name,description
}

# Si le Get-Inboxrule ne fonctionne pas, il faut vérifier les droits du compte utilisé mais si compte admin global pas de soucis.
