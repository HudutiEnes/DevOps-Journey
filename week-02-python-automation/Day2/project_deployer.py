#!/usr/bin/env python3

# Simple function with message


def list_deployments(*apps):
    deployment_list = []

    for app in apps:
        message = f"Deploying {app} ..."
        deployment_list.append(message)

    return deployment_list


# Calling with 2 apps

print(list_deployments("task-manager-api", "notes-app-v2"))

# Calling with 1 app

print(list_deployments("portfolio"))
