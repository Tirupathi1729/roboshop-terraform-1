components={
  frontend={
    name="frontend"
    instance_type="t2.micro"
  }
  mongodb={
     name="mongodb"
     instance_type="t2.micro"
    }
  catalogue={
    name="catalogue"
    instance_type="t2.micro"
  }
  redis={
     name="redis"
     instance_type="t2.micro"
   }
  user={
    name="user"
    instance_type="t2.micro"
  }
  cart={
    name="cart"
    instance_type="t2.micro"
  }
  mysql={
     name="mysql"
     instance_type="t2.micro"
   }
  shipping={
    name="shipping"
    instance_type="t2.micro"
  }
  rabbitmq={
     name="rabbitmq"
     instance_type="t2.micro"
   }
  payment={
    name="payment"
    instance_type="t2.micro"

  }
}
#component = "frontend"
security_groups = ["sg-06f905eeb15c22808"]
#onitoring_ingress_cidr = ["172.31.43.251/32"]

zone_id = "Z011249635V6ILR7WTU6W"
value="yes"

