# Hugo development environment
FROM hugomods/hugo:exts-0.146.0

WORKDIR /src

# Copy the entire Hugo site
COPY . /src

# Expose Hugo server port
EXPOSE 1313

# Run Hugo server with draft enabled and bind to all interfaces
CMD ["hugo", "server", "--bind", "0.0.0.0", "--baseURL", "http://localhost:1313", "--buildDrafts"]
