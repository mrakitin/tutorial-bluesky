# Monitor supervisord if it was started already

# Jupyter-repo2docker supports a running a script at container
# start time (i.e. ENTRYPOINT). If supervisord has been run, this could be used
# to monitor it status and no action will be required by the user.

DIR=`dirname "\$0"`

supervisorctl -c $DIR/supervisord.conf status
