#!/usr/bin/env ruby

require 'set'

class Graph
  def initialize
    @graph = Hash.new { |hash, key| hash[key] = [] }
  end

  def add_edge(from, to)
    @graph[from] << to
    #undirected graph:
    #@graph[to] << from
  end

  


