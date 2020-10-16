class Matrix:
    def __init__(self, matrix_string):
        global matrix_list
        matrix_list = self.cleanup(matrix_string)

    def row(self, index):
        return matrix_list[index - 1]

    def column(self, index):
        list = []
        for row in matrix_list:
            list.append(row[index - 1])
        return list

    def cleanup(self, matrix_string):
        list = []
        rows = matrix_string.split('\n')
        for row in rows:
            list.append([int(num) for num in row.split(' ')])
        return list
