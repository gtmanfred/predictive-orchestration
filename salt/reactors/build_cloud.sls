#!py
from __future__ import division

import random
import string
import salt.config as config
import salt.wheel as wheel

def secure_password(length=20):
    '''
    Generate a secure password.
    '''
    length = int(length)
    pw = ''
    while len(pw) < length:
        pw += random.SystemRandom().choice(string.ascii_letters + string.digits)
    return pw


def run():
    w = wheel.WheelClient(opts)
    minions = [minion for minion in w.cmd('key.list', ['accepted'])['minions'] if minion.startswith('web')]
    if len(data['items'])/len(minions) < 0.7:
        return {}

    name = '-'.join(['web', secure_password()])

    ret = {
        'build_cloud_server': {
            'runner.cloud.profile': [
                {'instances': [name]},
                {'prof': 'centos7-1-iad'},
            ]
        }
    }
    return ret
