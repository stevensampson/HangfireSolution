--exec sp_LogMetrics

CREATE Procedure sp_LogMetrics
as
DECLARE @TN VARCHAR(100);
Declare @sql NVARCHAR(max);

cREATE table #rowcounts (tablename varchar(100), duration int, RC int)

DECLARE C CURSOR LOCAL FAST_FORWARD
  FOR SELECT Table_Name FROM information_schema.tables
Where Table_name Like '%Logs%';

OPEN C;

FETCH NEXT FROM C INTO @TN;
WHILE (@@FETCH_STATUS = 0)
BEGIN 
    PRINT @TN;
	begin
					SET @sql = N'Insert into #rowcounts Select ''' + @TN + ''' As TableNames,DateDiff(day,Min(EventDate),Max(EventDate)) as Duration, Count (*) as ''RowCount'' from ' + @TN

					Print @sql
					EXEC sys.sp_executesql @sql;
				End
    FETCH NEXT FROM C INTO @TN;
END 
CLOSE C;
DEALLOCATE C;

Select Tablename, duration as 'Duration (Days)', rc AS 'RowCount', rc/duration as AvgPerDay from #rowcounts
order by rc desc


Drop TABLE #rowcounts