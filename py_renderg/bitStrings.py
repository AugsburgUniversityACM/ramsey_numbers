

def generate_all_string(length, bit_string_length=10):
    bit_strings = [
        f'{i:0{bit_string_length}b}' for i in range(0, 2**length)
    ]
    data = {
        'bit_strings': bit_strings,
        'count': len(bit_strings),
        'length': length
    }
    return data


def generate_n_bit_strings(start, n, graph_size, bit_string_length=10):
    """
    create a dictionary that contains an list of bit strings
    over a given interval.
    :param start: the starting number
    :param n: how many numbers to add to the list
    :param graph_size: the size of the complete graph
    :param bit_string_length: the length of the bit string to generate
    :return:
    """
    bit_strings = [
        f'{i:0{bit_string_length}b}' for i in range(start, start+n) if i <= 2**graph_size
    ]
    data = {
        'bit_strings': bit_strings,
        'count': len(bit_strings),
        'graph_size': graph_size,
        'bit_string_length': bit_string_length
    }
    return data


if __name__ == '__main__':
    print('in bitString.py file')

    current_value = 0
    graph_size = 4
    bit_strings_per_frame = 2

    for i in range(0, int(2**graph_size/bit_strings_per_frame)):
        print(i)
        print(generate_n_bit_strings(current_value, bit_strings_per_frame, graph_size))
        current_value += bit_strings_per_frame
