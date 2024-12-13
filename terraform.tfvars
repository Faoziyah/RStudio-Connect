bucket_name = "rstudio_connect-jenkins-remote-state-bucket-123456"

vpc_cidr             = "11.0.0.0/16"
vpc_name             = "rstudio-connect-jenkins-us-west-vpc-1"
cidr_public_subnet   = ["11.0.1.0/24", "11.0.2.0/24"]
cidr_private_subnet  = ["11.0.3.0/24", "11.0.4.0/24"]
us_availability_zone = ["us-west-1a", "us-west-1c"]

public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC1zOo7XtVd754JOpoZm7VLCWy7HB9HDxbTBwUu6TwLKV8+PFe5ZXVrFvCKAq7YlAJwDUVFmQ/VmbCYc14X+aDWl+14Ci+4HlH+p25e+8848u4805/vncvYnRaEhI5jE5zWwliNdYoGVi2WK48kWOv+0bgz4X1wrsfZJ1/ifYCjfshxuhIBtLAiFwe/uC2qALFJgDhch1wtBuSDSvTMTT5HP2R48goh8zaiGbbIXk+QLYl9FAFx0tpsAi4XCDyVTOI2ly723sSYrhk/+u64RhggOui8qV6xMeLPz15MBISiillqQrUxSF+jck55NUN9vWi5IxIySx3NrY8RUYPVht5qQJlbW7TzKxXoV947PRpzC9yWPNE9fTXy/6Z4JVBZhpgbJw0Ud0FULKUigL06Sxn5znJuSO0wCcXVLJPalyk/9gWs/ZTCbxHtq/pGE1fxBitT/lVVFUCdDVSJXgXtMJJmZ1ikGCJavag0jU6OVJnUDs0NAPfhyD1thTS8aYtR3B0= user@DESKTOP-CHTKQDV"
ec2_ami_id = "ami-0657605d763ac72a8"
