FROM ruby:3.1.2-alpine AS builder
RUN apk add \
    build-base \
    postgresql-dev
COPY Gemfile* ./
RUN bundle install
FROM ruby:3.1.2-alpine AS runner
RUN apk add \
    tzdata \
    nodejs \
    postgresql-dev \
    npm \
    yarn
WORKDIR /app
# We copy over the entire gems directory for our builder image, containing the already built artifact
COPY --from=builder /usr/local/bundle/ /usr/local/bundle/
COPY . .
RUN npm install
RUN yarn add @vitejs/plugin-vue
RUN yarn add vue@3.2.33
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]