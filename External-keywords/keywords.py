import json
import robot.api.logger
import robot.utils.asserts as asserts
import os
from jsonpath_ng import parse


def convert_to_str(nameList):
    if nameList is None:
        return ''
    elif isinstance(nameList, str):
        return nameList
    elif isinstance(nameList, (list, tuple, set, dict)):
        return ''.join(map(str, nameList))
    else:
        return str(nameList)


def get_json_value_str(input_data, json_path):
    if isinstance(input_data, (str, bytes)):
        with open(input_data, 'r') as f:
            data = json.load(f)
    elif isinstance(input_data, dict):
        data = input_data
    else:
        raise TypeError('Expected input_data to be a str, bytes, or dict')

    if any(ch in json_path for ch in ('[*]', '?(', '@.')):
        jsonpath_expr = parse(json_path)
        value = [match.value for match in jsonpath_expr.find(data)][0]
    else:
        jsonpath_parts = json_path.split('.')
        value = data
        for part in jsonpath_parts:
            if part.startswith('$'):
                continue
            value = value.get(part)

    if isinstance(value, dict):
        return list(value.keys())

    return convert_to_str(value)
