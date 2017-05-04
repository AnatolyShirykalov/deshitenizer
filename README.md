# README

## Install
### Linux Mint
```bash
sudo apt install nodejs ruby ruby-dev imagemagick postgresql ssh git
git clone git@github.com:AnatolyShirykalov/deshitenizer.git
cd deshitenizer
gem install bundler
sudo su postgres
psql -c "CREATE USER $LOGNAME WITH password '$LOGNAME';"
psql -c "CREATE DATABASE deshitenizer_development WITH OWNER = $LOGNAME;"
exit
bundle exec rake db:migrate
bundle exec rake db:seed
```

## Run in develomer mode
```bash
bundle exec rails s
```
