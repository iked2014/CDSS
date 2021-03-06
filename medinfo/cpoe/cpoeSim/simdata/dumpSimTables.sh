# For backup purposes, core adapted tables (original raw tables from STRIDE separated)

export DB_HOST=localhost
export DB_PORT=5432
export DB_DSN=medinfo-5year-time
export DB_USER=jonc101

# Initialization data on general patient simulation models, deposit into medinfo/cpoe/cpoeSim/simdata
pg_dump -h $DB_HOST -p $DB_PORT -U $DB_USER -a -F p -x -O -t sim_note_type -f sim_note_type.dump.sql $DB_DSN
pg_dump -h $DB_HOST -p $DB_PORT -U $DB_USER -a -F p -x -O -t sim_note -f sim_note.dump.sql $DB_DSN
pg_dump -h $DB_HOST -p $DB_PORT -U $DB_USER -a -F p -x -O -t sim_result -f sim_result.dump.sql $DB_DSN
pg_dump -h $DB_HOST -p $DB_PORT -U $DB_USER -a -F p -x -O -t sim_state_result -f sim_state_result.dump.sql $DB_DSN
pg_dump -h $DB_HOST -p $DB_PORT -U $DB_USER -a -F p -x -O -t sim_order_result_map -f sim_order_result_map.dump.sql $DB_DSN
pg_dump -h $DB_HOST -p $DB_PORT -U $DB_USER -a -F p -x -O -t sim_state_transition -f sim_state_transition.dump.sql $DB_DSN
pg_dump -h $DB_HOST -p $DB_PORT -U $DB_USER -a -F p -x -O -t sim_state -f sim_state.dump.sql $DB_DSN

# Sim Grading Key
pg_dump -h $DB_HOST -p $DB_PORT -U $DB_USER -a -F p -x -O -t sim_grading_key -f sim_grading_key.dump.sql $DB_DSN

# Specific user records
pg_dump -h $DB_HOST -p $DB_PORT -U $DB_USER -a -F p -x -O -t sim_patient -f sim_patient.dump.sql $DB_DSN
pg_dump -h $DB_HOST -p $DB_PORT -U $DB_USER -a -F p -x -O -t sim_patient_state -f sim_patient_state.dump.sql $DB_DSN
pg_dump -h $DB_HOST -p $DB_PORT -U $DB_USER -a -F p -x -O -t sim_user -f sim_user.dump.sql $DB_DSN
pg_dump -h $DB_HOST -p $DB_PORT -U $DB_USER -a -F p -x -O -t sim_patient_order -f sim_patient_order.dump.sql $DB_DSN
