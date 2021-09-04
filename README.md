# EAS based CI CD

## Prerequisites

- [ ] expo account set up and ready to be user
- [ ] expo-cli installed on your local machine
- [ ] eas-cli installed on your local machine
- [ ] EAS Priority Plan active on your expo account
- [ ] being logged in to expo in your shell
- [ ] Github's PAT
- [ ] Expo's access token

## Walkthrough

1. Build your up with EAS at least once locally on your machine before implementing CI/CD
2. Upload and submit your application to the stores for the first time yourself manually
3. Add appropriate secrets to the repo:

```bash
EXPO_APPLE_APP_SPECIFIC_PASSWORD=X   ASP generated on your apple id account
EXPO_TOKEN=X			     EXPO token generated on expo.io
PAT=X				     Personal access token form GitHub (generate one from within settings tab)
```

4.
