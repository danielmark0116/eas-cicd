# EAS based CI CD

## Prerequisites

- [ ] expo account set up and ready to be user
- [ ] expo-cli installed on your local machine
- [ ] eas-cli installed on your local machine
- [ ] EAS Priority Plan active on your expo account
- [ ] being logged in to expo in your shell
- [ ] Expo's access token

## Walkthrough

1. Build your up with EAS at least once locally on your machine before implementing CI/CD
2. Upload and submit your application to the stores for the first time yourself manually
3. Add appropriate secrets to the repo:

```bash
EXPO_APPLE_APP_SPECIFIC_PASSWORD=X   ASP generated on your apple id account
EXPO_TOKEN=X			     EXPO token generated on expo.io
```

4. The workflow will bump the `versionCode` and `buildNumber` values from `app.json` automatically by one and create a PR with changes
5. The version is being overwritten in `app.config.js`. The value is derived from version tag. **remember to correctly name the tag -> 0.0.1 / 1.1.2 / 2.0.0 -> only digits with a dot inbetween the characters.**

## App preview in Expo Go on each PR

- Each pull request will trigger a job that publishes the changes in expo go at a separate release channel. The release channel name is derived from the branch name
