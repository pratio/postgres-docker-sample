CREATE  SCHEMA              demo;


CREATE  TABLE               demo.person
(
    id                      INTEGER     PRIMARY KEY
,   name                    TEXT
,   surname                 TEXT
,   zip                     TEXT
,   city                    TEXT
,   country                 TEXT
,   email                   TEXT
,   phone_number            TEXT
,   birth_date              DATE
);


CREATE  TABLE               demo.account
(
    id                      INTEGER     PRIMARY KEY
,   fk_person               INTEGER     REFERENCES  demo.person(id)
,   account_type            text
);


CREATE  TABLE               demo.transactions
(
    id                      INTEGER
,   fk_account              INTEGER     REFERENCES  demo.account(id)
,   transaction_type        TEXT
,   transaction_date        DATE
,   transaction_amount      NUMERIC
);


CREATE  VIEW                demo.v_account_transactions_monthly
AS
SELECT  p.id                                    AS  id_person
    ,   DATE_TRUNC('month',t.transaction_date)  AS  month
    ,   SUM(t.transaction_amount)               AS  amount
FROM    demo.person         p
JOIN    demo.account        a
ON      p.id            =   a.fk_person
JOIN    demo.transactions   t
ON      t.fk_account    =   a.id
WHERE   p.id    IN  (   1234
                    ,   345
                    )
GROUP BY    p.id
    ,       DATE_TRUNC('month',t.transaction_date);

