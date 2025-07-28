 snow sql --connection demo --query "
          -- Create a new role
          CREATE ROLE IF NOT EXISTS reporting_role;
          
          -- Grant privileges to role
          GRANT USAGE ON WAREHOUSE ${WAREHOUSE} TO ROLE reporting_role;
          GRANT SELECT ON DATABASE ${DATABASE} TO ROLE reporting_role;
          
          -- Create a new user and assign role
          CREATE USER IF NOT EXISTS report_user PASSWORD='YourStrongP@ssw0rd' DEFAULT_ROLE=reporting_role MUST_CHANGE_PASSWORD=TRUE;
          GRANT ROLE reporting_role TO USER report_user;
        "
