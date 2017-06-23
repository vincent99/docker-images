[
  {
    "nickname": "%%IRC_USERNAME%%",
    "server": "chat.freenode.net",
    "token": "%%SLACK_TOKEN%%",
    "avatarUrl": "https://robohash.org/$username.png?size=48x48",
    "slackUsernameFormat": "<$username>",
    "autoSendCommands": [
      ["PRIVMSG", "NickServ", "IDENTIFY %%IRC_PASSWORD%%"],
      ["MODE", "%%IRC_USERNAME%%", "+x"]
    ],
    "channelMapping": {
      "%%SLACK_CHANNEL%%": "%%IRC_CHANNEL%%"
    },
    "ircOptions": {
      "floodProtection": false,
      "floodProtectionDelay": 1000
    },
    "commandCharacters": ["!", "."],
    "muteSlackbot": true,
    "ircStatusNotices": {
      "join": false,
      "leave": false
    },

    "muteUsers": {
      "irc": [],
      "slack": []
    }
  }
]
