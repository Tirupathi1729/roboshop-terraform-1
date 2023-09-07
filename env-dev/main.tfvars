components={
  frontend={
    name="frontend"
    instance_type="t3.small"

  }
#  mongodb={
#    name="mongodb"
#    instance_type="t3.small"
#  }
  catalogue={
    name="catalogue"
    instance_type="t2.micro"

  }
#  redis={
#    name="redis"
#    instance_type="t3.small"
#  }
  user={
    name="user"
    instance_type="t2.micro"
  }
  cart={
    name="cart"
    instance_type="t2.micro"
  }
#  mysql={
#    name="mysql"
#    instance_type="t3.small"
#  }
  shipping={
    name="shipping"
    instance_type="t2.micro"
  }
#  rabbitmq={
#    name="rabbitmq"
#    instance_type="t3.small"
#  }
  payment={
    name="payment"
    instance_type="t2.micro"
  }
}
security_groups = ["sg-09f2ca421f162b6b5"]

zone_id = "Z011249635V6ILR7WTU6W"
value="yes"

