# Project Name

A brief description of your project.

## Installation

1. Clone the repository: `git@github.com:density-exchange/mockoon_density.git`.
2. Install the dependencies and create internal symlinks: `npm run bootstrap`.
3. Build the 2 libraries: `npm run build:libs`

For the CLI:

- Build the CLI: `npm run build:cli`.
- Test CLI's command by running `./packages/cli/bin/run {command} args` where "command" is a CLI command like `start`, `stop`, etc.

For the desktop application:

- Build the application processes (Electron main and renderer processes) `npm run build:desktop:dev` or in watch mode `npm run build:desktop:dev:watch`.
- Start the application with `npm run start:desktop:dev`. The application will restart automatically when you make changes to the `commons` or `commons-server` libraries or to the desktop application's code.

## Internal Function 

### parser

- to json object from the stringified object
- syntax : parser string
- example parser '{"key":"value"}'

### finder

- to get the value of specific key in json object
- syntax : finder object key 
- example: finder @this 'symbol'





