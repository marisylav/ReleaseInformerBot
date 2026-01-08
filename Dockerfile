FROM swift:6.0-focal
WORKDIR /app
COPY . .
RUN swift build --configuration release
EXPOSE 8080
CMD ./.build/release/Run
