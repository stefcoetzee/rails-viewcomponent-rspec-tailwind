# Rails ViewComponents with Tailwind CSS and RSpec

Confidently develop Rails app views with reusable components.

Make front-end development more ergonomic by cutting down on duplication across your app, 
while leaving your code base more maintainable and providing a consistent user experience.

Follow along from the comfort of your own editor as we refactor a fully-tested example application.

This is the companion repo for its
[blog-post namesake](https://stefcoetzee.com/2022/02/18/rails-viewcomponent-rspec-tailwind).

Join in the fun by checking out the `start-here` branch and coding along as
you progress deeper into the guide.

## Getting Started

The `main` branch contains the app in its transformed state.
Whether you choose to use that or the pre-ViewComponent branch mentioned
above, the follow instructions will work the same either way.

```bash
# Install dependencies
bundle install

# Create the test and development databases
bin/rails db:create
# Seed the database with example data
bin/rails db:seed

# Start the development server
bin/dev
```
