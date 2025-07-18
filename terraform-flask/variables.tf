variable "location" {
  default = "francecentral"
}

variable "resource_group_name" {
  default = "rg-flask-app"
}

variable "vm_admin_username" {
  default = "azureuser"
}

variable "ssh_public_key" {
  description = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDTvxxyBsjHxSgdYV2j3r+0HZVoRB5HZK4TonG+SwKBhHRZal4iknZYQHQmpntle3dQcIBdG3RLl9fiaO255dpNvMyqL5ERUx3GQjwdjoLOUM3cbn9X0u/XOMMZhyghRyaf8tUyo+kKi5zQkdNursiJWSmspt/bWQ8IJpVe/OpbI/w+m4WM14YA2wuEZ2z9TNIsSHd318UAANa+YKpIeasSqON562eWUDfd0UyJfEHgppU8FULmic2jCb8cLzid4mfS1sqDMoPnyYN/MY9Gs7wjv1pz7y2cBMc9sUkKA6xAaXwyHuvxihlPIjnFuEQfnJuPIXnCD+hnGl9az6r8P40R8+P7DBcCBvkExR7iYqhHu1ZYboDh0p9FRu4peFsacQ/rxGEdFwfaupG5w7EdfrRo1d8sPRwocZ0j2UwjorRmFaNKsfJ1O6iK0lbRi3ZBTWDHn+WlbI12Eqyi4247ER+8UKdSDApnLv+UAgOsszY6lK9ZPMSR6pa2ZctKnggzZF14iaJo0EFqIJVjDatCzBuZcbO2+4JMRl3W5R5JF8Wfvti5gXyDfe++8zwjjVehMeqFCihyQWV3A6sUlH9HUX2f4aGNdhjtlAGaALq8aacOOu+Z6l7gEMXxYN7JGp1NNlbfZUczCEXrWf/ZdqsWtf0Oms0rni/gZD1Pqj4+z4CZjQ== killian.ngog@gmail.com"
  type        = string
}

variable "mysql_password" {
  type = string
  sensitive = true
}