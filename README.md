# enduro-docker

An experiment to run [enduro](http://www.endurojs.com/) using Docker only (no nodejs/enduro/npm is needed locally).

Feel free to contribute.

## Requirements
- Docker
- Docker Compose

## Up and running

```bash
$ git clone git@github.com:m4grio/enduro-docker.git
$ cd enduro-docker
$ source .bashrc
$ docker-compose up -d
```

Through a simple alias, `enduro` CLI will be available, so you can use it without really needing to install none of its dependencies.

- Create admin users:
```bash
$ enduro admin add 4dmin ooppop

┌—————————————~—ENDURO - Creating admin user—~—————————————┐
│ Username:                                                │
│     4dmin                                                │
│                                                          │
│ Password:                                                │
│     ooppop                                               │
│                                                          │
└——————————————————————————————————————————————————————————┘
```

- Command help:
```bash
$ enduro help
Commands:
  admin <command>                           handles admin users
  create <project_name> [scaffolding_name]  creates new enduro.js project
  culture <command>                         handles cultures
  dev                                       starts development server                                          [default]
  juice <command>                           handles versioning                                              [aliases: j]
  offline                                   converts all external links into local links
  render                                    renders all static files                                        [aliases: r]
  secure <passphrase>                       secures website against random visits
  setup <command>                           handles versioning                                              [aliases: s]
  start                                     starts production server
  theme <theme_name>                        uploads file to enduro.js file storage
  upload <url>                              uploads file to enduro.js file storage

Options:
  --version   Show version number                                                                              [boolean]
  `-help, -h  Show help
```

## Authors
- Mario Álvarez <ahoy@m4grio.me>
