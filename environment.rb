DB_HOST = "localhost"
DB_PORT = 3306
DB_NAME = "barkeep"
DB_USER = "root"
DB_PASSWORD = ""

EMAIL_SMTP_SERVER = "smtp.gmail.com"
EMAIL_SMTP_PORT = "587"
EMAIL_SMTP_TLS = true
EMAIL_SMTP_DOMAIN = "localhost.localdomain"
# These are the credentials of the Gmail account that you want to send mail as.
# NOTE(philc): We may want to make configuration variables which generically support SMTP.
EMAIL_SMTP_AUTHENTICATION = :plain
EMAIL_SMTP_USERNAME = "use_your_own_account@gmail.com"
EMAIL_SMTP_PASSWORD = "password!"
# Make the From: address e.g. "barkeep+requests@gmail.com" so it's easily filterable.
EMAIL_FROM_ADDRESS = "use_your_own_account+barkeep@gmail.com"

# This a list of paths to git repos we should watch.
REPOS_ROOT = "#{ENV["HOME"]}/barkeep_repos"

# This hostname is used to construct links in the commit emails.
BARKEEP_HOSTNAME = "localhost:8040"

REDIS_HOST = "localhost"
REDIS_PORT = 6379

# These Redis databases are used by Barkeep for caching and Resque jobs. Redis uses integers for DB names.
REDIS_DB = 0
REDIS_DB_FOR_RESQUE = 1

# A comma-separate list of OpenID provider URLs for signing in your users.
# If you provide more than one, users will receive a UI allowing to pick which service to use to authenticate.
# Besides Google, another popular OpenID endpoint is https://me.yahoo.com
OPENID_PROVIDERS = "https://www.google.com/accounts/o8/ud"

# This is the read-only demo mode which is used in the Barkeep demo linked from getbarkeep.com.
# Most production deployments will not want to enable the demo mode, but we want it while developing.
ENABLE_READONLY_DEMO_MODE = true

# If specified, this will be used as the session secret in development mode.
# This prevents the session being cleared when sinatra reloads changes.
COOKIE_SESSION_SECRET = "AssimilationSuccessful"

# The number of resque workers to spawn
RESQUE_WORKERS = 2

# A comma-separated list of permitted users, to restrict access to barkeep. If unset, any user can log in
# via their Gmail account. This feature is a work in progress and not ready for general use; see #361.
PERMITTED_USERS = ""
