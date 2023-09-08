components={
  frontend={
    name="frontend"
    instance_type="t2.micro"
    tags= {monitor_Nginx="yes"}

  }
#  mongodb={
#    name="mongodb"
#    instance_type="t3.small"
#  }
  catalogue={
    name="catalogue"
    instance_type="t2.micro"
    tags={}

  }
#  redis={
#    name="redis"
#    instance_type="t3.small"
#  }
  user={
    name="user"
    instance_type="t2.micro"
    tags={}
  }
  cart={
    name="cart"
    instance_type="t2.micro"
    tags={}
  }
#  mysql={
#    name="mysql"
#    instance_type="t3.small"
#  }
  shipping={
    name="shipping"
    instance_type="t2.micro"
    tags={}
  }
#  rabbitmq={
#    name="rabbitmq"
#    instance_type="t3.small"
#  }
  payment={
    name="payment"
    instance_type="t2.micro"
    tags={}
  }
}
#component = "frontend"
security_groups = ["sg-06f905eeb15c22808"]
#onitoring_ingress_cidr = ["172.31.43.251/32"]

zone_id = "Z011249635V6ILR7WTU6W"
value="yes"

