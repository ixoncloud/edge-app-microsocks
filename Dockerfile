FROM heywoodlh/microsocks

# Set environment variables for authentication and port
ENV SOCKS_USER=yourUsername
ENV SOCKS_PASS=yourPassword
ENV SOCKS_PORT=1080

# Expose port 1080 for the SOCKS proxy
EXPOSE 1080

# Use a shell command to expand the environment variables
ENTRYPOINT ["sh", "-c", "microsocks -u $SOCKS_USER -P $SOCKS_PASS -p $SOCKS_PORT"]

# auth_once example
# ENTRYPOINT ["sh", "-c", "microsocks -1 -u $SOCKS_USER -P $SOCKS_PASS -p $SOCKS_PORT"]
