#!/usr/bin/env python3
"""Log stats module"""
from pymongo import MongoClient


if __name__ == "__main__":
    collection = MongoClient('mongodb://127.0.0.1:27017').logs.nginx

    logs = collection.count_documents({})
    print(f"{logs} logs\nMethods")

    methods = ['GET', 'POST', 'PUT', 'PATCH', 'DELETE']
    for i in range(len(methods)):
        n = collection.count_documents({"method": methods[i]})
        print(f"\tmethod {methods[i]}: {n}")

    status = collection.count_documents({"method": "GET", "path": "/status"})
    print(f"{status} status check")
