# This one is ugly!
# erlang and elixir packages are laggy on debian, both sid and erlang-solutions.
# Alternates 
# * use asdf? but I do not think I need to switch version, just bump...
# * use precompiled package?
# * use a link indirection (update-alternatives)
export PATH=/opt/src/elixir-lang/elixir/bin:$PATH
