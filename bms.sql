UPDATE t_bms_lt_scheduling t
SET t.SCHEDULING_BEGIN_TIME = '2017-12-04',
 t.SCHEDULING_MONTH='2017-12',
 t.SCHEDULING_END_TIME = '2017-12-10'
WHERE
	t.SCHEDULING_BEGIN_TIME >= '2017-11-27'
AND t.SCHEDULING_END_TIME <= '2017-12-03';

update t_bms_lt_scheduling_person t set t.OFFICE_TIME='2017-12-04' where t.OFFICE_TIME='2017-11-27';
update t_bms_lt_scheduling_person t set t.OFFICE_TIME='2017-12-05' where t.OFFICE_TIME='2017-11-28';
update t_bms_lt_scheduling_person t set t.OFFICE_TIME='2017-12-06' where t.OFFICE_TIME='2017-11-29';
update t_bms_lt_scheduling_person t set t.OFFICE_TIME='2017-12-07' where t.OFFICE_TIME='2017-11-30';
update t_bms_lt_scheduling_person t set t.OFFICE_TIME='2017-12-08' where t.OFFICE_TIME='2017-12-01';
update t_bms_lt_scheduling_person t set t.OFFICE_TIME='2017-12-09' where t.OFFICE_TIME='2017-12-02';
update t_bms_lt_scheduling_person t set t.OFFICE_TIME='2017-12-10' where t.OFFICE_TIME='2017-12-03';

-- 如果发现查不到排班信息（有可能是分表键过滤导致）执行下面更新创建时间
-- UPDATE t_bms_lt_scheduling t SET t.gmt_created = NOW();
-- UPDATE t_bms_lt_scheduling_detail t SET t.gmt_created = NOW();
-- UPDATE t_bms_lt_scheduling_person t SET t.gmt_created = NOW();
-- DELETE from t_bms_lt_scheduling;
-- DELETE from t_bms_lt_scheduling_detail;
-- DELETE from t_bms_lt_scheduling_person;
mysqldump --default-character-set=utf8  -h10.3.157.193 -udrds_xncs_bms_ro -pDrds2017 --set-gtid-purged=OFF --skip-opt --databases drds_xncs_bms --tables t_bms_lt_scheduling  -tc --quick|sed '/\/\*.*\/;$/d'   >./drds_xncs_bms_tables_20171206_01.sql
mysqldump --default-character-set=utf8  -h10.3.157.193 -udrds_xncs_bms_ro -pDrds2017 --set-gtid-purged=OFF --skip-opt --databases drds_xncs_bms --tables t_bms_lt_scheduling t_bms_lt_scheduling_person t_bms_lt_scheduling_detail -t |sed '\/\*.*\/;$/d'   >>./drds_xncs_bms_tables_20171206_01.sql
