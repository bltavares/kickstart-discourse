# Discourse installation recipe

## Requirements

* [kickstart](https://github.com/bltavares/kickstart)
* Ubuntu 12.04 LTS server

## Deploying

```
git clone https://github.com/bltavares/kickstart-discourse
cd kickstart-discourse

kickstart deploy root@<server>
```

## Configuring

Email and domain options are under `files/standalone.yml.template`.
Tweak to match your settings.

