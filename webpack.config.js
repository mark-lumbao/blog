const HtmlWebpackPlugin = require("html-webpack-plugin");

module.exports = {
  entry: `${__dirname}/src/index.js`,
  output: {
    path: `${__dirname}/dist`,
    filename: "elm-bundle.js",
  },
  module: {
    rules: [
      {
        test: /\.elm$/,
        exclude: [/elm-stuff/, /node_modules/],
        loader: "elm-webpack-loader",
      },
    ],
    noParse: /\.elm$/,
  },
  plugins: [new HtmlWebpackPlugin()],
};
