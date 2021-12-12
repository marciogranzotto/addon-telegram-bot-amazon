# Home Assistant Add-On for telegram-bot-amazon

**NOTE**: Do not add this repository to Home Assistant, please use:
`https://github.com/marciogranzotto/addons-repository`.

## Configuration

**Note**: _Remember to restart the add-on when the configuration is changed._

Example add-on configuration:

```yaml
telegram_token: your_very_secret_token
amazon_tag: your_amazon_tag
amazon_tld: com
shorten_links: false
bitly_token: ''
group_replacement_message: |-
  Message by {USER} with Amazon affiliate link:

  {MESSAGE}
raw_links: false
check_for_redirects: false
check_for_redirects_chains: false
max_redirect_chains: 2
ignore_users: []
log_level: info

```

**Note**: _This is just an example, don't copy and paste it! Create your own!_

### Option: `telegram_token`

The token obtained from [@Botfather](https://t.me/botfather)

### Option: `amazon_tag`

The Amazon affiliate tag to be used when rewriting URLs.

### Option: `amazon_tld`

The Amazon TLD for affiliate links (it defaults to "com", but you can set it to "it", "de", "fr", "com.br" or whatever).

### Option: `shorten_links`

If set to `true`, all the sponsored links generated by the bot will be passed through the bitly shortener, which generates amzn.to links.
**requires setting `bitly_token`**

### Option: `bitly_token`

The [Generic Access Token](https://bitly.is/accesstoken) you can get from bitly.

### Option: `group_replacement_message`

Specifies the format for the message that gets posted to groups after deleting the original one. If not set, it will default to `Message by {USER} with Amazon affiliate link:\n\n{MESSAGE}`. In the following table you'll find variables you can use.

| String               | Replacement                                                                                                                |
| -------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| `{USER}`             | The user that posted the message, as `@username` if they created a Telegram username, as `first_name last_name` otherwise. |
| `{ORIGINAL_MESSAGE}` | The user's original message, with no replacements (so it will contain the non-affiliated Amazon link).                     |
| `{MESSAGE}`          | The user's message, with the affiliated Amazon link the bot created.                                                       |

### Option: `raw_links`

If set to `true` disables this bot's "URL beautifier" (which removes all the URL parameters aside from the ASIN and the affiliate tag) and just adds/replaces the tag to the URL. This allows to link to arbitrary pages on Amazon, even non-product ones (e.g. search pages, category pages, etc.)

### Option: `check_for_redirects`

If set to `true` the bot will look for redirects in the provided links. This allows it to find links to Amazon even if they are hidden behind URL shorteners. Please note that this check requires a bit more time than looking for "regular" Amazon URLs, since the bot needs to connect to each URL.

### Option: `check_for_redirects_chains`

If set to `true` the bot will perform a recursive search for redirects. This allows it to catch Amazon URLs even if they are hidden behind a chain of redirects. This will slow down the processing of redirects.

### Option: `max_redirect_chains`

If `check_for_redirects_chains` is enabled, it will limit the number of redirect levels the bot will try to go through. It default to 2, and it should be kept at a low number to avoid wasting time going through endless redirect chains a user might provide.

### Option: `ignore_users`

A list of usernames (starting with the "@" character) and numeric user IDs whose messages won't be acted upon by the bot, even if they contain matching Amazon links. A valid list would be:
```yaml
ignore_users:
    - @Yourusername
    - 12345678
    - @IgnoreMeAsWell123
```
Numeric user IDs are useful for users who do not have Telegram user names defined. You can get yours by contacting [userinfobot](https://t.me/useridinfobot).


## Changelog & Releases

This repository keeps a change log using [GitHub's releases][releases]
functionality. The format of the log is based on
[Keep a Changelog][keepchangelog].

Releases are based on [Semantic Versioning][semver], and use the format
of `MAJOR.MINOR.PATCH`. In a nutshell, the version will be incremented
based on the following:

-   `MAJOR`: Incompatible or major changes.
-   `MINOR`: Backwards-compatible new features and enhancements.
-   `PATCH`: Backwards-compatible bugfixes and package updates.

[keepchangelog]: http://keepachangelog.com/en/1.0.0/

[releases]: https://github.com/marciogranzotto/addon-telegram-bot-amazon/releases

[repository]: https://github.com/marciogranzotto/addons-repository