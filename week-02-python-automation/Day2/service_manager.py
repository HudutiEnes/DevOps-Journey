#!/usr/bin/env python3


def service_manager(service_name, action):
    allowed_actions = ["start", "stop"]

    if action not in allowed_actions:
        print(f"Error: Action '{action}' not recognized.")
        return False

    if action == "start":
        print(f"Starting the {service_name} service...")
        return True
    elif action == "stop":
        print(f"Stopping the {service_name} service...")
        return True


result1 = service_manager("nginx", "start")
print(f"Success: {result1}")

result2 = service_manager("docker", "restart")
print(f"Success: {result2}")
