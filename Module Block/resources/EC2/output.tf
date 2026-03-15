output "instancepubip" {
  value = aws_instance.webserver.public_ip
}

# output "publicdns" {
#   value = aws_instance.webserver.public_dns
# }

# output "sgid" {
#   value = aws_security_group.web-sg.id
# }

# output "instanceid" {
#   value = aws_instance.webserver.arn
# }

output "instanepriip" {
  value = aws_instance.webserver.private_ip
}