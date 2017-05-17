# screenshooter

A tool for making site screenshots using Grunt and PhantomJS

## Installation

1. Install node.js from [nodejs.org](https://nodejs.org/)
2. Install Grunt-CLI with command `npm install grunt-cli -g`
3. Clone this repository to any folder
4. Open screenshooter root folder and run `npm install` to install all dependencies

Project ready to use but it has PhantomJS v2.1.1 inside. This version doesn't support flex and some other fresh specs. You might want to upgrade to PhantomJS v2.5.0beta manually.

**PhantomJS v2.5.0beta manual installation**

1. Go to [https://bitbucket.org/ariya/phantomjs/downloads/](https://bitbucket.org/ariya/phantomjs/downloads/) and download latest beta package for your OS
2. Unpack v2.5.0beta zip, copy and replace its content to `screenshooter/node_modules/phantomjs-prebuilt/lib/phantom/`
