from ScenarioRobot import telethn
from telethon import events


def scenario(**args):
    """New message."""
    patern = args.get("pattern', None)
    r_pattern = r'^[/l]'
    if pattern is not None and not pattern.startwith('(?i)'):
        args['pattern'] = '(?i)' + pattern
    args['pattern'] = pattern.replace('^/', r_pattern, 1)



