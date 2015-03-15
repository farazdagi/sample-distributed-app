# sample-distributed-app

To start a simple cluster of 3 homogeneous nodes on DO, use:

```
$ env TOKEN=$TOKEN SSH_KEY_ID=$SSH_KEY_ID bin/create-droplet.sh core-1
$ env TOKEN=$TOKEN SSH_KEY_ID=$SSH_KEY_ID bin/create-droplet.sh core-2
$ env TOKEN=$TOKEN SSH_KEY_ID=$SSH_KEY_ID bin/create-droplet.sh core-3
```

Prior to starting nodes, please make sure that both `TOKEN` and `SSH_KEY_ID` environment variables are present. The former is your DO API key (you can set one [here](https://cloud.digitalocean.com/settings/applications)) and the later is your public SSH key **id** ([list-all-keys](https://developers.digitalocean.com/documentation/v2/#list-all-keys) will allow you to see ids of your ssh keys). 
