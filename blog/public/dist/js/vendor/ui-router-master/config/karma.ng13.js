var ng1ConfigFactory = require("./_karma.ng1");
module.exports = function (karma) {
  karma.set(ng1ConfigFactory("1.3.16", "/test/ng1/\\S+.[tj]s"));
};
