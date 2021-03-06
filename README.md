Capsule Monsters is a Pokemon-themed microblogging community.

##Features:
* User accounts with authentication and sessions
* Asymmetric user relationships (following and being following)
* Dynamic updates with AJAX
* Real-time main feed
* Predictive search
* Infinite scroll
* Image uploading via AJAX with Paperclip and Remotipart
* Bootstrap styling

To run this webapp locally, you will need three servers.

```
$ rails s
```

Real time updating is dependent on a Faye server:

```
$ rackup private_pub.ru -s thin -E production
```

This runs the elasticsearch server, which is supporting the searchkick gem.
WARNING: this has the potential to impact heroku deployment.

```bash
$ brew install elasticsearch
$ elasticsearch
$ rake searchkick:reindex CLASS=User
```
