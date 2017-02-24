# _Statetopia_

#### _A politically themed nation-building game. Built in Rails. 2/22/2017_

#### By _**Tracie Weitzman and Jonathan Thom**_

## Specifications

#### 1. Unique Users can login and create different Nations to play game.

#### 2. Nation starting attributes are set based on User's initial choices.

#### 3. During game play, random Events are shown with Response options for User to choose. Nation statistics are effected by choices.

#### 4. Game goal is to survive until year 2030. Game is lost if any statistics drop to zero.

## Setup/Installation Requirements

* _View on Heroku at [https://statetopia.herokuapp.com/](https://github.com/weitzwoman)_

* _In the Command Line, run:_
```
git clone https://github.com/weitzwoman/nation-game-rails
cd nation-game-rails
bundle install
postgres
```

* _In a separate Command Line, run:_
```
rails db:setup
rails s
```
* _Then, in any modern browser, open:_
```
localhost:3000
```
## Known Bugs

#### 1. On Heroku, Responses to events do not always load from database.

## Support and contact details

_Contact us on Github at [weitzwoman](https://github.com/weitzwoman) or [jonathanwthom](https://github.com/jonathanwthom)_

## Technologies Used

* _Ruby version 2.2.3_
  * _Rails 5.0.1_
* _Postgres_
  * _ActiveRecord_
* _HTML_
* _SCSS_
  * _Bootstrap_

### License

Statetopia is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

Statetopia is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with the Statetopia. If not, see http://www.gnu.org/licenses/.

Copyright (c) 2017 **Tracie Weitzman and Jonathan Thom**
