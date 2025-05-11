#!/bin/bash
echo "Simulating EC2 Instance Bootstrapping..."
docker run --rm -d --name simulated-ec2-todo-app solomon11/todo-app
