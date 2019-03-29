import os
import json
import logging
import sys
import math

from pyDist import Interfaces, exSheet
import bitStrings


def test(a):
    return a+1


def run_rust_script(buffer_file, data):
    command = f'echo "hello, rust"'
    exit_code = os.system(command)
    return_data = {}

    # did the command execute properly
    if exit_code != 0:
        return False  # no

    # now read the text file and send it back
    # to the head node.
    try:
        with open(buffer_file, 'r') as file:
            return_data = json.loads(file.read())
        return_data['error'] = None
        return_data['data'] = data  # testing only
        return_data['found_counter_example'] = False  # should be replaced with rust code
    except FileNotFoundError as e:
        return_data = {'error': f'{e}'}
    finally:
        return return_data


def lp(logger, message):
    logger.debug(f'\x1b[31m {message} \x1b[0m')


if __name__ == '__main__':

    #logging.getLogger("pyDist").setLevel(logging.WARNING)
    logging.basicConfig(format='%(name)-12s:%(lineno)-3s | %(levelname)-8s | %(message)s'
                        , stream=sys.stdout, level=logging.DEBUG)
    logger = logging.getLogger(__name__)

    ip = '127.0.0.1'
    port = 9000
    a = 100
    buffer_file = 'data.json'

    current_graph_number = 0
    graph_size = 5
    bit_strings_per_frame = 100
    total_number_of_frames = math.ceil(2 ** graph_size / bit_strings_per_frame)
    current_frame = 0
    number_of_computers = 1

    r = 3
    s = 3

    with Interfaces.ClusterExecutor(ip, port) as cluster:
        cluster.connect(f'rusty', group_id='rust_group')  # connect to the cluster
        lp(logger, f'number of cluster nodes: {number_of_computers}')

        while current_frame < total_number_of_frames:

            for computer in range(0, number_of_computers):
                if current_frame >= total_number_of_frames:
                    break
                data = bitStrings.generate_n_bit_strings(current_graph_number, bit_strings_per_frame, graph_size)
                data['r'] = r
                data['s'] = s
                current_graph_number += bit_strings_per_frame
                current_frame += 1

            _ = cluster.submit(run_rust_script, buffer_file, data)
            for f in cluster.as_completed():
                data = f.result()
                lp(logger, data)
                if data['error']:
                    lp(logger, f'error: {(f.result())["error"]}')
                if data['found_counter_example']:
                    lp(logger, f'found a computer example to a graph of size {graph_size}')
                    graph_size += 1
            cluster.clear_futures()

        lp(logger, f'FOUND THE MINIMUM GRAPH SIZE OF {graph_size}')

        cluster.disconnect()
        cluster.shutdown_executor()
    print('done!')
