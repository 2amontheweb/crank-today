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

  # SLACK APP PAGE
  https://api.slack.com/apps/A7404UPGT/general
  https://api.slack.com/slash-commands
  https://api.slack.com/internal-integrations

  # SLACK SIGN IN
  https://github.com/kmrshntr/omniauth-slack
  https://api.slack.com/docs/sign-in-with-slack
  https://medium.com/slack-developer-blog/introducing-sign-in-with-slack-290949e1c3f5
  https://medium.com/@m5rk/sign-in-with-slack-2bc20d735b17

  # SSL
  https://www.cloudflare.com/ssl/
  https://letsencrypt.org/

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

# Marketing

### Inspiration
* Possible image: http://www.kettenkrad.de/bilder/crank.gif
* Definition of cranking: turn the crankshaft of (an internal combustion engine), typically in order to start the engine.
* "Back in the day, you couldn't start the engine until you started cranking. We believe the same is true for today's budding startups. Start having your team log their daily productivity to make sure your engine starts up and keeps combusting until to success."

### Branding:
* Possible colors: #dba80f, #0fa8db, #db0f42, a white, a dark gray

### More Thoughts:
* Informal
* Encourages lightheartedness to get at the core of any issues
* For the teams that are more flat in their structure
* Cuts through the hierarchy bullshit that promotes a lack of healthy feedback
* Add emotional intelligence to gauge when an employee is using different language
* A tool for increasing employee engagement
* Lightweight HR / customer happiness and productivity app
* Think of it like your check engine light - you need to see what's up with your company if it's something's wrong - this analogy fits with the crank image.

# Similar Apps
* https://cranktoday.slack.com/apps/A575TQ1QT-tinypulse
* https://cranktoday.slack.com/apps/A0GU27WR1-leo-officevibe-bot
* https://cranktoday.slack.com/apps/A1KEU6LV9-pep
* https://cranktoday.slack.com/apps/A0HP2JH6Z-hyphen
* https://cranktoday.slack.com/apps/A4QV40RG9-lucy-abbot
* https://cranktoday.slack.com/apps/A0Y0QAQ0G-niko
* https://cranktoday.slack.com/apps/A26BKUK7T-henry
* https://cranktoday.slack.com/apps/A1J8C37NG-mink
* https://cranktoday.slack.com/apps/A1DPUB7PE-fizz
* https://cranktoday.slack.com/apps/A0ZPSSHPS-fortay
