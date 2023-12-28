Задание 1.

    1. demonstration1 Проверка кода с помощью checkov

![Alt text](png/1.png)

       demonstration1 Проверка кода с помощью tflint

![Alt text](png/2.png)

    2. src Проверка кода с помощью checkov

![Alt text](png/3.png)

       src Проверка кода с помощью tflint

![Alt text](png/4.png)

    Коммит к заданию 1.

Задание 2.

    1. Создал бакет

![Alt text](png/5.png)

    2. Создал сервисный аккаунт и предоставил права на бакет

![Alt text](png/6.png)

![Alt text](png/7.png)

    3. Произвел миграцию проекта в s3

![Alt text](png/8.png)

    4. принудительно разблокировал стейт

![Alt text](png/9.png)

Задание 3.

    1. Исправил ошибки и залил в git

https://github.com/NeTrogajSvetchu/ter-homeworks-04/tree/terraform-hotfix

    2. PR

https://github.com/NeTrogajSvetchu/ter-homeworks-04/pull/1

Задание 4.

    1. Корректные IP в переменных

![Alt text](png/10.png)

    2. Не корректные IP в переменных
   
![Alt text](png/11.png)

    3. Сами переменные спер у "https://gist.github.com/guillermo-musumeci"

variable "ip" {
  type = string
  description = "ip-адрес"
  default = "192.168.0.1"
    validation {
      
      condition = can(regex("^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$",var.ip))
      error_message = "Некорректный IP"
    }
}
variable "ip1" {
  type = list(string)
  description = "ip-адрес"
  default = ["192.168.0.1", "1.1.1.1", "127.0.0.1"]
    validation {
      
      condition = alltrue([for ip in var.ip1: can(regex("^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$", ip))])
      error_message = "Некорректный IP"
    }
}

Задание 5.

    1. Вывод ошибки 
   
![Alt text](png/12.png)

    2. Переменные

variable "in_the_end_there_can_be_only_one" {
    description="Who is better Connor or Duncan?"
    type = object({
        Dunkan = optional(bool)
        Connor = optional(bool)
    })

    default = {
        Dunkan = true //false
        Connor = false
    }

    validation {
        error_message = "There can be only one MacLeod"
        condition = var.in_the_end_there_can_be_only_one.Dunkan != var.in_the_end_there_can_be_only_one.Connor
    }
}

variable "in" {
    description="321?"
    type = string
    default = "ffff"

    validation {
        error_message = "123"
        condition = can(regex("^[[:lower:]]+$",var.in))
    }
}


Задание 6.

    Вернусь как изучу CI/CD-систему

Задание 7.

    1. Создал три модуля 

![Alt text](png/13.png)

    2. Объединил их общим main.tf

![Alt text](png/14.png)

    3. Перенес в основной main.tf

![Alt text](png/15.png)