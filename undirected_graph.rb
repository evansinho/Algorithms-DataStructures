def undirected_graph(n, a, b)
  edge_list = []
  a.each_with_index do |el, index|
		edge_list << [el, b[index]]
	end
	p edge_list
	start = 1
	terminal = start + 1
	rec_search(edge_list, start, terminal, n)
end

def rec_search(edge_list, start, terminal, n)
  if ( !(edge_list.include?([start, terminal]) || edge_list.include?([terminal, start])) || terminal > n)
	  puts false
    return false
  end
	if terminal == n
	  puts true
		return
	end
  rec_search(edge_list, start + 1, terminal + 1, n)
end

undirected_graph(4, [1, 2, 4, 4, 3], [2, 3, 1, 3, 1]);
undirected_graph(4, [1, 2, 1, 3], [2, 4, 3, 4]);
undirected_graph(6, [2, 4, 5, 3], [3, 5, 6, 4]);
undirected_graph(3, [1, 3], [2, 2]);
