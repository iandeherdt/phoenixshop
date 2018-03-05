FROM elixir:1.5

RUN apt-get update && apt-get install --yes postgresql-client
ADD . /app
# Install Hex+Rebar
RUN mix local.hex --force && \
mix local.rebar --force
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new.ez
WORKDIR /app
EXPOSE 4000
CMD ["./run.sh"]