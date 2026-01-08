FROM swift:6.1-jammy

WORKDIR /app
COPY Package.swift Package.resolved ./
RUN swift package resolve
COPY . .
RUN swift build --configuration release -c release
EXPOSE 8080
CMD ./.build/release/Run
