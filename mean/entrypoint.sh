#!/bin/bash
npm install
bower --allow-root install
pm2 start server.js --no-daemon
