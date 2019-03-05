CREATE PROFILE perfil1 LIMIT 
  SESSIONS_PER_USER                 2   --
  CPU_PER_SESSION               10000   -- decimas de segundo
  CPU_PER_CALL                      1   -- decimas de segundo
  CONNECT_TIME              UNLIMITED   -- minutos
  IDLE_TIME                        30   -- minutos
  LOGICAL_READS_PER_SESSION   DEFAULT   -- DB BLOCKS
  LOGICAL_READS_PER_CALL      DEFAULT   -- DB BLOCKS
  -- COMPOSITE_LIMIT          DEFAULT   -- 
  PRIVATE_SGA                     20M   -- 
  FAILED_LOGIN_ATTEMPTS             3   --
  PASSWORD_LIFE_TIME               30   -- dias
  PASSWORD_REUSE_TIME              12   --
  PASSWORD_REUSE_MAX        UNLIMITED   -- 
  PASSWORD_LOCK_TIME          DEFAULT   -- dias
  PASSWORD_GRACE_TIME               2   -- dias
  PASSWORD_VERIFY_FUNCTION       NULL;

CREATE PROFILE perfil2
  LIMIT PASSWORD_REUSE_MAX 10
        PASSWORD_REUSE_TIME 30;
        
CREATE PROFILE perfil3 LIMIT 
   SESSIONS_PER_USER          UNLIMITED 
   CPU_PER_SESSION            UNLIMITED 
   CPU_PER_CALL               3000 
   CONNECT_TIME               45 
   LOGICAL_READS_PER_SESSION  DEFAULT 
   LOGICAL_READS_PER_CALL     1000 
   PRIVATE_SGA                15K
   COMPOSITE_LIMIT            5000000; 
   
CREATE PROFILE perfil4 LIMIT
   FAILED_LOGIN_ATTEMPTS 5
   PASSWORD_LIFE_TIME 60
   PASSWORD_REUSE_TIME 60
   PASSWORD_REUSE_MAX 5
--   PASSWORD_VERIFY_FUNCTION verify_function
   PASSWORD_LOCK_TIME 1/24
   PASSWORD_GRACE_TIME 10;

CREATE PROFILE perfil5 LIMIT
  FAILED_lOGIN_ATTEMPTS 1;