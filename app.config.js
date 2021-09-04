export default ({ config }) => {
  return {
    ...config,
    version: process.env.APP_VERSION || config.version,
  };
};
