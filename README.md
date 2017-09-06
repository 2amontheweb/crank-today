Crank.Today

# Functionality

* Slack

  - Daily message from Slackbot: "Use /crank to let your team know how you _cranked_ today!"

* Slack commands:

  - /crank - Anything after this that is not a specific command will be appended to your DailyCrank message.
  - /crank reset - Resets your daily message.
  - /crank show - Displays your DailyCrank message for current day.
  - /crank list - Displays list of DailyCrank messages for the last 7 days
  - /crank digest - Let's Executive level slack members see most recent message from Cranker each member on that team. Executive can choose to keep this only availabe to Executives, or to all Crankers.
  - /crank adduser - Only accessible to Executive level slack members. Should look like: `/crank adduser address@email.com` and will send a notification to that email, as well as to the person on Slack. User should already be on that Slack team. Might be too complicated...

* Error messages:

  - If /crank app is available, but user isn't connected, let user know how to start creating DailyCrank messages.

* crank.today

  - Marketing site for Slack app.
  - Should allow Crankers to connect with their Slack account.

* cranked.life

  - Should only be able to Sign In through Slack.
  - Full digest and past DailyCrank messages accessible to Executives only.
  - Can alter team members and user permissions.

---

# Resources

### Slack Apps

  * https://api.slack.com/
  * https://api.slack.com/docs/sign-in-with-slack

---

# Models

### User

  * Attributes
    - email

### Role

  * Types
    - Cranker
    - Executive
      * Executives automatically have Cranker priveleges.

  * Attributes
    - name

### Team

  * Attributes
    - name

### UserRole

  * Attributes
    - user_id
    - role_id

### UserTeam

  * Attributes
    - user_id
    - team_id

### DailyCrank

  * Attributes
    - user_id
    - message : Text

---

# Possible Issues

* Time zones. It's mandatory to set a schedule for the user.
