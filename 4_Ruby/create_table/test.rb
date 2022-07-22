names = ["fds", "fdas", "asdf", "fdggs", "gfd", "asdfs", "fdsgs", "hgfdh", "das"]
strengths = ["3", "3", "2", "7", "9", "9", "3", "8", "3"]

# p ary = [strengths, names].transpose #転置

# strength_name_dict = Hash[*ary.flatten]
# p strength_name_dict


a = [["one", "two", "three"], [1, 2, 3]]
p Hash[*a.transpose.flatten]

# name_list = {}
# name_list.map { |user| [names, strengths] }.to_h
# p name_list

# strength_sort_dict = strength_name_dict.sort 

# p strength_sort_dict
