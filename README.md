# Tzurba Roeah Ruchani App

An app for Tzurba M'rabanan

This project is connected to these repositories:
  - [tzurba-roeah-ruchani-cloud-functions](https://github.com/capslock-bmdc/tzurba-roeah-ruchani-cloud-functions)
  - [tzurba-roeah-ruchani-firebase-rules](https://github.com/capslock-bmdc/tzurba-roeah-ruchani-firebase-rules)
  - [tzurba-roeah-ruchani-admin-portal](https://github.com/capslock-bmdc/tzurba-roeah-ruchani-admin-portal)

## Run Locally

You can run this app on your device assuming flutter is installed on your machine.

1. Clone this repo.
2. Open the terminal and `cd` to the project directory.
3. Run `flutter packages get`.
4. Firebase setup (this is where you might need our [notion knowledge base](https://www.notion.so/tzurba/Dev-Stuff-f40300e0aacd49fcac76315069dbf775#a93228c0da3447c79ed10d3b1f32ac83) ):
   - Add the `google-services.json` file to `/android/app/` dir.
   - Make sure that your SHA1 key is in the firebase console.  
5. Open your IDE and run the app.
