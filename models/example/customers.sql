
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}


SELECT
    CUST.ID AS CUSTOMER_ID,
    CUST.FIRST_NAME,
    CUST.LAST_NAME,
    MIN(ORDR.ORDER_DATE) AS FIRST_ORDER,
    MAX(ORDR.ORDER_DATE) AS MOST_RECENT_ORDER,
    COUNT(DISTINCT ORDR.ID) AS NUMBER_OF_ORDERS,
    SUM(PYMNT.AMOUNT) AS CUSTOMER_LIFETIME_VALUE
FROM HEVO_DATA_CUSTOMERS CUST
LEFT JOIN HEVO_DATA_ORDERS ORDR ON CUST.ID = ORDR.USER_ID
LEFT JOIN HEVO_DATA_PAYMENTS PYMNT ON ORDR.ID = PYMNT.ORDER_ID
GROUP BY CUST.ID, CUST.FIRST_NAME, CUST.LAST_NAME
/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
