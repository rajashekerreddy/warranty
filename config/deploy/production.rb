# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary server in each group
# is considered to be the first unless any hosts have the primary
# property set.  Don't declare `role :all`, it's a meta role.

role :app, %w{wavespot@192.168.0.148}
# role :web, %w{wavespot@192.168.0.148}
# role :web, %w{wavespot@example.com deploy.com:2525}
role :db,  %w{wavespot@192.168.0.148}


# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server definition into the
# server list. The second argument is a, or duck-types, Hash and is
# used to set extended properties on the server.

# server 'example.com', user: 'deploy', roles: %w{web app}, my_property: :my_value


# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult[net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start).
#
# Global options
# --------------
#  set :ssh_options, {
#    keys: %w(/home/rlisowski/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
#
# And/or per server (overrides global)
# ------------------------------------
server 'wavespot@192.168.0.148',
  user: 'wavespot',
  roles: %w{app},
  ssh_options: {
    # keys: %w(/home/user_name/.ssh/id_rsa),
    forward_agent: false,
    password: 'wavespot123',
    auth_methods: %w(password)
  }
