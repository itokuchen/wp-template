module.exports = {
  proxy: "lvh.me",
  files: ["www/wp-content/themes/" + process.env.npm_package_config_theme + "/**/*.*"]
};
