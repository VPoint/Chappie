FROM ruby:2.5.5
RUN apt-get update -qq && apt-get install -y build-essential
# for sqlite3
RUN apt-get install -y sqlite3

RUN apt-get install -y nodejs

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

# Ruby on Rails template
ENV RAILS_ENV=development

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
ADD Gemfile* $APP_HOME/
ADD lib/plugin_routes.rb $APP_HOME/

RUN bundle install

COPY . $APP_HOME

EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]