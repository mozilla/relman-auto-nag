#!/bin/bash
PATH_SCRIPT="$( cd "$(dirname "$0")" ; pwd -P )"
. $PATH_SCRIPT/venv/bin/activate
cd $PATH_SCRIPT
PYTHONPATH=. python -m auto_nag.scripts.query_creator
PYTHONPATH=. python -m auto_nag.scripts.rm_query_creator
PYTHONPATH=. python -m auto_nag.scripts.no_assignee
PYTHONPATH=. python -m auto_nag.scripts.leave_open
