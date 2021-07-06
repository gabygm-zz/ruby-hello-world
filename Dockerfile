FROM ruby:2.7.2-buster

WORKDIR .

ADD Gemfile .
ADD Gemfile.lock .
ADD app app

EXPOSE 5000

RUN gem install bundler:2.1.4
RUN bundle install

CMD bundle exec ruby "./app/app.rb"
