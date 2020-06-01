let g:dbs = {
\   'pickss-dev': 'mysql://root@192.168.50.10/pickss',
\   'pickss-test': 'mysql://root@192.168.50.10/picksstest',
\   'nomy-line-bot-dev': 'mysql://root@192.168.50.10/nomy_line_bot_development',
\   'nomy-line-bot-test': 'mysql://root@192.168.50.10/nomy_line_bot_test',
\ }

let g:db_ui_table_helpers = {
\   'mysql': {
\     'Desc': 'DESC {table}',
\     'Create Table': 'CREATE TABLE {table}',
\     'Comment': 'SHOW FULL COLUMNS FROM {table}',
\     'Count': 'SELECT COUNT(*) FROM {table}'
\   }
\ }
