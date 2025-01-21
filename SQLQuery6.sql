USE [YourDatabaseName];

UPDATE YourTableName
SET CATEGORY = 
    CASE 
        WHEN CAST(Code AS VARCHAR) LIKE '0' THEN 'Refinancing'
        WHEN CAST(Code AS VARCHAR) IN ('1000','1100','1110','1120','1130','1140','1150','1160','1170',
                                      '1180','1200','1210','1220','1230','1240','1250','1260','1270',
                                      '1280','1300','1310','1320','1330','1400','1410','1420','1430',
                                      '1500','1510') 
        THEN 'AGRICULTURE'
        
        WHEN CAST(Code AS VARCHAR) IN ('2000','2100','2110','2120','2200','2210','2220','2230',
                                      '2300','2310','2320','2330','2400','2410','2420','2490')
        THEN 'TRADE'
        
        WHEN CAST(Code AS VARCHAR) IN ('3000','3100','3110','3120','3130','3140','3150',
                                      '3200','3210','3220','3230','3240','3300','3310',
                                      '3320','3330')
        THEN 'MANUFACTURING AND SERVICING INDUSTRIES'

        WHEN CAST(Code AS VARCHAR) IN ('4000','4100','4110','4120','4130') 
        THEN 'EDUCATION'
        
        WHEN CAST(Code AS VARCHAR) IN ('5000','5100','5110','5120') 
        THEN 'HUMAN HEALTH'
        
        WHEN CAST(Code AS VARCHAR) IN ('6000','6100','6110','6120','6200','6210',
                                      '6220','6230','6240') 
        THEN 'LAND AND HOUSING'
        
        WHEN CAST(Code AS VARCHAR) IN ('7000','7100','7110','7200','7210','7300',
                                      '7310','7400','7410','7500','7510','7520','7530') 
        THEN 'FINANCE, INVESTMENTS AND INSURANCE'
        
        WHEN CAST(Code AS VARCHAR) IN ('8000','8100','8110','8200','8210','8300',
                                      '8310','8400','8410') 
        THEN 'CONSUMPTION AND SOCIAL SERVICES'
        
        ELSE 'Other'
    END;
