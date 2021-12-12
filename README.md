[![](https://img.shields.io/github/issues/marciogranzotto/addon-telegram-bot-amazon.svg)](https://github.com/marciogranzotto/addon-telegram-bot-amazon/issues) [![](https://img.shields.io/github/issues-pr-raw/marciogranzotto/addon-telegram-bot-amazon.svg)](https://github.com/marciogranzotto/addon-telegram-bot-amazon/pulls) [![](https://img.shields.io/docker/pulls/marciogranzotto/addon-telegram-bot-amazon.svg)](https://hub.docker.com/r/marciogranzotto/addon-telegram-bot-amazon) [![](https://img.shields.io/docker/cloud/build/marciogranzotto/addon-telegram-bot-amazon.svg)](https://hub.docker.com/r/marciogranzotto/addon-telegram-bot-amazon) [![](https://img.shields.io/docker/image-size/marciogranzotto/addon-telegram-bot-amazon/latest.svg)](https://hub.docker.com/r/marciogranzotto/addon-telegram-bot-amazon)

# addon-telegram-bot-amazon

This is a Home Assistant Add-On conversion of [LucaTNT/telegram-bot-amazon](https://github.com/LucaTNT/telegram-bot-amazon)

## About

This is a Telegram bot that, if made admin of a group, will delete any message
containing an Amazon link and re-post it tagged with the specified affiliate tag.

It can be either messaged directly, or added **as an administrator** to a group or supergroup.

If messaged directly, it replies with the affiliate link, while in a group it will delete any message containing an Amazon link and replace it with a new message, with a format that is customizable through the `group_replacement_message` config variable.

## Installation

The installation of this add-on is pretty straightforward and not different in
comparison to installing any other Home Assistant add-on.

1.  [Add our Home Assistant add-ons repository][repository] to your Home Assistant instance.
2.  Install the "Telegram Bot Amazon" add-on.
3.  Change the configuration files with the required values (Check the [DOCS.md](telegram-bot-amazon/DOCS.md) file).
4.  Start the "Telegram Bot Amazon" add-on
5.  Check the logs of the "Telegram Bot Amazon" add-on to see if everything went well.
6.  Test it on telegram by talking sending a link to your bot

[repository]: https://github.com/marciogranzotto/addons-repository
