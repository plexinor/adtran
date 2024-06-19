# module for route table association
resource "azurerm_subnet_route_table_association" "subnet-route-table-association" {
  subnet_id      = var.subnet_id
  route_table_id = var.route_table_id
}
