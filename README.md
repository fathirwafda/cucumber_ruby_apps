# cucumber_ruby_apps docs
Mobile Apps Automation Testing using Cucumber Ruby
## Requirements
- Ruby 3.2.2 or later
- Appium 1.20.2 or later
- Cucumber
- NodeJS & npm
 ## Installation
If you want to install Ruby using RVM:
```
curl -L get.rvm.io | bash -s stable
source ~/.bash_profile
rvm requirements
rvm install 3.2.2
```
Otherwise, you can use [rbenv](https://github.com/rbenv/rbenv#installation).

 Clone this repo: 
 ```
git clone git@github.com:fathirwafda/cucumber_ruby_apps.git
```
Copy env.sample to .env (may want to declare data on env):
```
cp env.sample .env
```
Install bundler:
```
gem install bundler
```
Run bundle install:
```
bundle install
```
To run scenario:
```
bundle exec cucumber --tag @login-empty-field
```
