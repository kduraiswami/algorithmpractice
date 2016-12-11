def pascal_triangle(rows)
	if rows <= 0
		return "must have at least one row!"
	end

	pascal_triangle_top = [[1],[1,1]]

	return [pascal_triangle_top[0]] if rows == 1
	return pascal_triangle_top if rows == 2

	return pascal_triangle_top << create_new_row

end

def create_new_row(rows)
	additional_rows = []
	additional_rows[0] = 1
	additional_rows[-1] = 1


	return additional_rows
end


p pascal_triangle(0) == "must have at least one row!"
p pascal_triangle(1) == [[1]]
p pascal_triangle(2) == [[1],[1,1]]
p pascal_triangle(4) == [[1],[1,1],[1,2,1],[1,3,3,1]]