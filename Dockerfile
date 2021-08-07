root@discordbot:~/gimpshard_tracker# docker build -t gimpsnitch .
Sending build context to Docker daemon    617kB
Step 1/5 : FROM iprobedroid/swgoh-arena-tracker:beta-16
beta-16: Pulling from iprobedroid/swgoh-arena-tracker
abb454610128: Already exists
6348e02026c2: Already exists
793620c3e234: Already exists
c0dafc82af84: Already exists
760530b9c3af: Already exists
577d141b7ce4: Pull complete
Digest: sha256:d88e2e82ba7fbf2f65db1fb2d4f97e9a9c4f3ee03b4844a121e0b0d9284ce055
Status: Downloaded newer image for iprobedroid/swgoh-arena-tracker:beta-16
 ---> f8f7226d1ca8
Step 2/5 : ENV ARENA_TYPE=SQUAD
 ---> Running in 044f4c2e5042
Removing intermediate container 044f4c2e5042
 ---> 045c3454d4fc
Step 3/5 : ENV DISCORD_WEB_HOOK=https://discord.com/api/webhooks/632825237855141888/Bl2ijcmhllRlGd_yOv7Z1Dc0YPC3W6igfubH_QY33xTymZY3MrFd0X6vdyrLpmc1qo3H
 ---> Running in 66ccff8924bb
Removing intermediate container 66ccff8924bb
 ---> 675901f8abcb
Step 4/5 : ENV ALLY_CODES=534635937,196228411,469761118,314494163,954865678,673727733,454862598,385937438,757459991,281764435,859861743,177919336,326855612,933888673,463837735,697925875,321334824,915324615,429661519,931654239,796833485,581753576,286732842,415442422,359939126,241341314,652792189,822485181,233486996,324385977,379555726,146927296,136636599,386939149,678885793,319218878,368296785,934754453,339768416,789925884,247374916
 ---> Running in c27c9625bf8a
Removing intermediate container c27c9625bf8a
 ---> ca154dfc185c
Step 5/5 : ENV DISCORD_TAGS=534635937|216365176650203146,469761118|347120573375315969,314494163|284913185130283008,796833485|318067627740102665,339768416|290218165776941056
 ---> Running in a4c66437ff0e
Removing intermediate container a4c66437ff0e
 ---> 17fc333b2dfb
Successfully built 17fc333b2dfb
Successfully tagged gimpsnitch:latest
