import sys

print("This is our app, which should be running inside a Docker image that has Python 3.12.")

print("The following is our configuration, baked into the image:")
with open("/opt/configuration.txt") as f:
    print(f.read())

print("And we now check that we run the correct Python version.")
assert sys.version_info[0] == 3
assert sys.version_info[1] == 12
