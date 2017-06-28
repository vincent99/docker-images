[
  {
    "nickname": "%%IRC_USERNAME%%",
    "server": "chat.freenode.net",
    "token": "%%SLACK_TOKEN%%",
    "avatarUrl": "https://robohash.org/$username.png?size=48x48",
    "slackUsernameFormat": "IRC: $username",
    "autoSendCommands": [
      ["PRIVMSG", "NickServ", "IDENTIFY %%IRC_PASSWORD%%"],
      ["MODE", "%%IRC_USERNAME%%", "+x"]
    ],
    "channelMapping": {
      "%%SLACK_CHANNEL%%": "%%IRC_CHANNEL%%"
    },
    "ircOptions": {
      "showErrors": true,
      "floodProtection": false,
      "floodProtectionDelay": 1000,
      "secure": true,
      "port": 6697,
      "sasl": true,
      "selfSigned": true,
      "certExpired": true,
      "userName": "%%IRC_USERNAME%%",
      "nick": "%%IRC_USERNAME%%",
      "password": "%%IRC_PASSWORD%%"
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
