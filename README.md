Assignment: Using terraform attach a 1 GB EBS volume onto a EC2 instance.
The EBS volume must be in the same AZ as your EC2’s subnet
You don’t have to format / mount the EBS volume
Submission is the url to your public git repository with the working code.


We will be creating a new key pair by terraform. Run the following command:

#Creating the Key Pair "roger_kp" before spinning ec2
Windows, use Git Bash or WSL only unless install openssl:
ssh-keygen -t rsa -b 4096 -m pem -f roger_kp.pem; chmod 400 roger_kp.pem

Debian:
ssh-keygen -t rsa -b 4096 -m pem -f roger_kp.pem && chmod 400 roger_kp.pem

After keypair created, 
goto aws key_pair console to import the roger_kp.pub,
ssh from where the roger_kp is located in your local machine.

An Elastic IP (EIP) in AWS is a static, public IPv4 address that you can allocate to your AWS account and associate with resources such as EC2 instances, NAT gateways, or network interfaces. Unlike a regular public IP address, which is dynamically assigned and can change when you stop/start an instance, an Elastic IP remains associated with your account until you explicitly release it.

Cost: AWS charges for Elastic IPs that are allocated but not associated with a running instance. Make sure to release unused Elastic IPs to avoid unnecessary costs.

Limits: By default, AWS allows up to 5 Elastic IPs per region per account. You can request a limit increase if needed.

Reassociation: You can reassociate an Elastic IP with another instance at any time.

