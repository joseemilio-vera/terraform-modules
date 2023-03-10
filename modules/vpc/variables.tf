variable "nombre" {
    description = "Nombre de la VPC"
    type = string
}

variable "etiquetas" {
    description = "Etiquetas"
    type = list 
}

variable "zonas" {
    description = "Número de zonas de disponibilidad"
    type = number
    validation {
       condition = var.zonas >= 1 && var.zonas <= 6
       error_message = "El número de zonas debe estar entre 1 y 6. Consulte la documentación de AWS para conocer el número de AZs de cada región"
   }
}

variable "nat" {
    description = "Booleano que describe si se crearán o no NAT Gateways (true / false)"
    type = bool 
}

variable "vpc-cidr" {
    description = "Bloque CIDR IPv4 de la VPC"
    type = string
    default = "172.16.0.0/16"
}

variable "pub-subnets-cidr" {
    description = "Lista de bloques CIDR de las subredes públicas"
    type = list(string)
    default = ["172.16.0.0/24","172.16.1.0/24","172.16.2.0/24","172.16.3.0/24","172.16.4.0/24","172.16.5.0/24"]
}

variable "app-subnets-cidr" {
    description = "Lista de bloques CIDR de las subredes públicas"
    type = list(string)
    default = ["172.16.6.0/24","172.16.7.0/24","172.16.8.0/24","172.16.9.0/24","172.16.10.0/24","172.16.11.0/24"]
}

variable "db-subnets-cidr" {
    description = "Lista de bloques CIDR de las subredes públicas"
    type = list(string)
    default = ["172.16.12.0/24","172.16.13.0/24","172.16.14.0/24","172.16.15.0/24","172.16.16.0/24","172.16.17.0/24"]
}

