import os
import sys
import time
import subprocess
from watchdog.observers import Observer
from watchdog.events import PatternMatchingEventHandler

class MyHandler(PatternMatchingEventHandler):
    def __init__(self, patterns=None):
        super(MyHandler, self).__init__(patterns=patterns)

    def process(self, event):
        """
        event.event_type
            'modified' | 'created' | 'moved' | 'deleted'
        event.is_directory
            True | False
        event.src_path
            path/to/observed/file
        """
        print('Event {} occurred for {}'.format(
            event.event_type, event.src_path))
        subprocess.call('make')

    def on_created(self, event):
        self.process(event)

    def on_modified(self, event):
        self.process(event)

    def on_moved(self, event):
        self.process(event)

if __name__ == '__main__':
    path = sys.argv[1] if len(sys.argv) > 1 else '.'
    observer = Observer()
    observer.schedule(MyHandler(['*.tex']), path)
    observer.schedule(MyHandler(['*']), os.path.join(path, 'data'))
    observer.start()

    try:
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        observer.stop()
    observer.join()
