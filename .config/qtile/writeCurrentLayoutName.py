from libqtile.command.client import InteractiveCommandClient

with open('/home/miguel/.config/qtile/currentLayoutName', "w") as myfile:
    myfile.write(InteractiveCommandClient().group.layout.info()['name'])
