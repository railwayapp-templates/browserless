# Browserless Chrome

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/new/template/browserless)

Browserless with added IPv6 capabilities, thus allowing for communication threw Railway's private network.

Provided variables for convenience -

```shell
BROWSER_DOMAIN=${{RAILWAY_PUBLIC_DOMAIN}}
BROWSER_DOMAIN_PRIVATE=${{RAILWAY_PRIVATE_DOMAIN}}

BROWSER_PORT_PRIVATE=3001

TOKEN=${{secret(48)}} # auto-generated upon template deploy
BROWSER_TOKEN=${{TOKEN}}

BROWSER_WS_ENDPOINT=wss://${{BROWSER_DOMAIN}}?token=${{BROWSER_TOKEN}}
BROWSER_WS_ENDPOINT_PRIVATE=ws://${{BROWSER_DOMAIN_PRIVATE}}:${{BROWSER_PORT_PRIVATE}}?token=${{BROWSER_TOKEN}}

BROWSER_WEBDRIVER_ENDPOINT=https://${{BROWSER_DOMAIN}}/webdriver
BROWSER_WEBDRIVER_ENDPOINT_PRIVATE=http://${{BROWSER_DOMAIN_PRIVATE}}:${{BROWSER_PORT_PRIVATE}}/webdriver

BROWSER_PLAYWRIGHT_ENDPOINT=wss://${{BROWSER_DOMAIN}}/playwright?token=${{BROWSER_TOKEN}}
BROWSER_PLAYWRIGHT_ENDPOINT_PRIVATE=ws://${{BROWSER_DOMAIN_PRIVATE}}:${{BROWSER_PORT_PRIVATE}}/playwright?token=${{BROWSER_TOKEN}}

```

## Examples

Various minimal code examples for using Browserless on Railway with some common libraries -

https://github.com/brody192/puppeteer-example (Node)

https://github.com/brody192/playwright-example (Node)

https://github.com/brody192/playwright-example-python

https://github.com/brody192/selenium-example (Node)

https://github.com/brody192/selenium-example-python

