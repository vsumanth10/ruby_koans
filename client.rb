#!/usr/bin/env ruby

#A simple server

require 'Socket'

server = TCPServer.open(2000)

loop {
	client = server.accept
	client.puts(Time.now.ctime)
	client.close
}