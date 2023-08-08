/** @type {import('tailwindcss').Config} */
module.exports = {
  // ...
  purge: [
    './app/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
  ],
  // ...
};
