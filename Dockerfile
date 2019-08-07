FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Add a script to be executed every time the container starts.

RUN bitnami-pkg install ruby-2.5.1 --checksum a81395976c85e8b7c8da3c1db6385d0e909bd05d9a3c1527f8fa36b8eb093d84

ENV PATH=/opt/bitnami/ruby/bin:$PATH

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

# Ruby on Rails template
ENV RAILS_ENV=development

COPY Gemfile* /app/
WORKDIR /app

RUN bundle install --without production

COPY . /app

EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]