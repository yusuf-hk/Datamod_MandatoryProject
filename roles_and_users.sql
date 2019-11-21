/**
  This give roles and priviliges to users.
  Contains borrower access which gives only access to view books information
  Contains admin role which grants everything

  doesn't work because code is on postgres, but we only have sqlite
 */

CREATE ROLE borrower_access;
GRANT CONNECT ON DATABASE library_system to borrower_access;
GRANT USAGE ON SCHEMA main TO borrower_access;
GRANT SELECT ON Book to Borrower_access;

CREATE ROLE admin_role WITH PASSWORD 'password';
GRANT USAGE ON SCHEMA main TO admin_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA main TO admin_role;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA main TO username;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA main TO username;
GRANT ALL PRIVILEGES ON DATABASE library_system TO username;
ALTER USER admin_role CREATEDB;
ALTER USER admin_role WITH SUPERUSER;

CREATE USER kjetil WITH PASSWORD 'Ikke slette filer';
GRANT borrower_access TO kjetil;

