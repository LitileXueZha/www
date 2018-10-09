/**
 * Created by 战-不败的象征 on 2017/6/15.
 */
const htmlWebpackPlugin = require('html-webpack-plugin');
const PATH = __dirname;

module.exports = {
  entry: './src/components/app.js',

  output: {
    filename: 'bundle-[name].js',
    path: PATH +'/dist/js',
  },

  module: {
    rules: [
      {
        test: /\.js$/,
        use: {
          loader: 'babel-loader',
          options: { presets: ['latest'] },
        },
        exclude: PATH +'/node_modules/',
        include: PATH +'/src',
      },
      {
        test: /\.jpg$/i,
        use: 'file-loader',
      },
      {
        test: /\.html$/,
        use: 'html-loader',
      },
      {
        test: /\.css$/,
        use: [
          { loader: 'style-loader' },
          {
            loader: 'css-loader',
            options: { importLoaders: 1 },
          },
          {
            loader: 'postcss-loader',
            options: {
              plugins: (loader) => [
                require('autoprefixer')({
                  browsers: ['last 5 versions'],
                })
              ]
            },
          }
        ],
      },
      {
        test: /\.scss$/,
        use: [
          { loader: 'style-loader' },
          {
            loader: 'css-loader',
            options: { importLoaders: 1 },
          },
          {
            loader: 'postcss-loader',
            options: {
              plugins: (loader) => [
                require('autoprefixer')({
                  browsers: ['last 5 versions'],
                })
              ]
            },
          },
          { loader: 'sass-loader' }
        ],
      },
    ],
  },

  plugins: [
    new htmlWebpackPlugin({
      filename: 'hello.html',
      template: 'index.html',
      inject: 'body',
    })
  ],
};