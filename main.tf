#CHALLENGE 1
resource "local_file" "web_servers_elite" {
   for_each = toset(var.web_server_names)
   filename = "${path.module}/${each.key}.txt}"
   content = "Web_Server_Elite : ${each.value}"
}