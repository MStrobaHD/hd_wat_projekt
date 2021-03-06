SET ANSI_WARNINGS  OFF;

DROP TABLE IF EXISTS [BazaDanych].[dbo].[DANE_GLOWNE_TYM]; 

CREATE TABLE [BazaDanych].[dbo].[DANE_GLOWNE_TYM] (
		DATE_TYM VARCHAR(50),
		CHANNEL_TYM VARCHAR(50),
		DESCRIPTION_TYM VARCHAR(50),
		ND_DESCRIPTION_TYM VARCHAR(50),
		START_TIME_TYM VARCHAR(50),
		DURATION_TYM time(7),
		VARIABLE_TARGET_TYM VARCHAR(50),
		TOTAL_INDIVIDUALS_TYM float,
		PODGRUPA_TYM float,
		A1649_TYM float,
		M1649_TYM float,
		A415_TYM float,
		A49_TYM float);
		

 DECLARE KURSOR CURSOR FOR
  SELECT [Date]
      ,[Channel]
      ,[Description]
      ,[2nd Description]
      ,[Start time]
      ,[Duration]
      ,[Variable Target]
      ,[Total Individuals]
      ,[Podgrupa]
      ,[A16-49]
      ,[M16-49]
      ,[A4-15]
      ,[A4-9]
      
  FROM [BazaDanych].[dbo].[temp]
  
  DECLARE   @Date varchar(50) ,
			@Channel varchar(50) ,
			@Description varchar(100) ,
			@2nd_Description varchar(100) ,
			@Starttime varchar(50) ,
			@Duration time(7) ,
			@VariableTarget varchar(50) ,
			@TotalIndividuals float ,
			@Podgrupa float ,
			@A1649 float,
			@M1649 float ,
			@A415 float ,
			@A49 float,
			

			@Date_tym varchar(50) ,
			@Channel_tym varchar(50) ,
			@Description_tym varchar(100) ,
			@2nd_Description_tym varchar(100) ,
			@Starttime_tym varchar(50) ,
			@Duration_tym time(7) ,
			@VariableTarget_tym varchar(50) ,
			@TotalIndividuals_tym float ,
			@Podgrupa_tym float ,
			@A1649_tym float ,
			@M1649_tym float ,
			@A415_tym float,
			@A49_tym float
			
			
 
	OPEN KURSOR 
	FETCH NEXT FROM KURSOR INTO @Date, @Channel, @Description, @2nd_Description, @Starttime,@Duration,
								@VariableTarget, @TotalIndividuals ,@Podgrupa, @A1649, @M1649, @A415, @A49
		WHILE @@FETCH_STATUS = 0 
		   BEGIN 
			  IF @Date is null
			  SET @Date = @Date_tym;
			  ELSE 
			  SET @Date_tym = @Date;

			  IF @Channel is null
			  SET @Channel = @Channel_tym;
			  ELSE 
			  SET @Channel_tym = @Channel;

			  IF @Description is null
			  SET @Description = @Description_tym;
			  ELSE 
			  SET @Description_tym = @Description;

			  IF @2nd_Description is null
			  SET @2nd_Description = @2nd_Description_tym;
			  ELSE 
			  SET @2nd_Description_tym = @2nd_Description;

			  IF @Starttime is null
			  SET @Starttime = @Starttime_tym;
			  ELSE 
			  SET @Starttime_tym = @Starttime;

			  IF @Duration is null
			  SET @Duration = @Duration_tym;
			  ELSE 
			  SET @Duration_tym = @Duration;

			  IF @VariableTarget is null
			  SET @VariableTarget = @VariableTarget_tym;
			  ELSE 
			  SET @VariableTarget_tym = @VariableTarget;

			  

			  

			  INSERT INTO [BazaDanych].[dbo].[DANE_GLOWNE_TYM] (DATE_TYM, CHANNEL_TYM, DESCRIPTION_TYM, ND_DESCRIPTION_TYM, START_TIME_TYM, DURATION_TYM, VARIABLE_TARGET_TYM, TOTAL_INDIVIDUALS_TYM,
																PODGRUPA_TYM, A1649_TYM, M1649_TYM, A415_TYM, A49_TYM)
				VALUES (@Date, @Channel, @Description, @2nd_Description, @Starttime, @Duration, @VariableTarget, @TotalIndividuals,
						@Podgrupa, @A1649, @M1649, @A415, @A49);

			  FETCH NEXT FROM KURSOR INTO @Date, @Channel,@Description,@2nd_Description, @Starttime,@Duration,
										  @VariableTarget,@TotalIndividuals ,@Podgrupa, @A1649, @M1649, @A415, @A49

	    END 
CLOSE KURSOR 
DEALLOCATE KURSOR
DROP TABLE IF EXISTS [BazaDanych].[dbo].[temp]; 



SET ANSI_WARNINGS ON;
			
 

