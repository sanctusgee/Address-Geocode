USE [ATMS_DL]
GO
/*****  Table [dbo].[temp_VisitorData]     16:33:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp_VisitorData](
	[GeocodeID] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](250) NOT NULL,
	[VisitorDataID] [int] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NCX_GeoAddress] ON [dbo].[temp_VisitorData] 
(
	[Address] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = OFF, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NCX_tempID] ON [dbo].[temp_VisitorData] 
(
	[GeocodeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = OFF, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NCX_VisitorDataID] ON [dbo].[temp_VisitorData] 
(
	[VisitorDataID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = OFF, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO
/*****  Table [dbo].[RawData]     16:33:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RawData](
	[RawDataID] [int] IDENTITY(1,1) NOT NULL,
	[RawData] [nvarchar](250) NULL,
	[DataCaptureDate] [datetime] NULL,
	[DataCaptureID] [nvarchar](20) NULL,
	[IsGeocoded] [bit] NOT NULL,
	[FileName] [nvarchar](50) NULL,
 CONSTRAINT [PK_RawData] PRIMARY KEY CLUSTERED 
(
	[RawDataID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NCX_CaptureDate] ON [dbo].[RawData] 
(
	[DataCaptureDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = OFF, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NCX_RawData] ON [dbo].[RawData] 
(
	[RawData] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = OFF, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO
/*****  Table [dbo].[VisitorData]     16:33:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VisitorData](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Address] [nvarchar](100) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](2) NULL,
	[StateCode] [nvarchar](50) NULL,
	[GeocodedAddress] [nvarchar](250) NULL,
	[Zipcode] [nvarchar](15) NULL,
	[DOB] [nvarchar](10) NULL,
	[RawDataID] [int] NULL,
	[AgeGroup] [nvarchar](20) NULL,
	[ReportMonth] [nvarchar](20) NULL,
	[DateModified] [datetime] NULL,
	[IsGeocoded] [bit] NOT NULL,
	[FullName] [nvarchar](100) NULL,
	[Address1] [nvarchar](100) NULL,
	[Company] [nvarchar](100) NULL,
	[Email] [nvarchar](50) NULL,
	[Address2] [nvarchar](100) NULL,
	[Address3] [nvarchar](100) NULL,
	[HomePhone] [nvarchar](15) NULL,
	[BusinessPhone] [nvarchar](15) NULL,
	[ClientPatronID] [nvarchar](20) NULL,
 CONSTRAINT [PK_DLicense] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NCX_Address1] ON [dbo].[VisitorData] 
(
	[Address1] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = OFF, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NCX_AgeGroup] ON [dbo].[VisitorData] 
(
	[AgeGroup] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = OFF, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NCX_City] ON [dbo].[VisitorData] 
(
	[City] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = OFF, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NCX_DateModified] ON [dbo].[VisitorData] 
(
	[DateModified] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = OFF, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NCX_FullName] ON [dbo].[VisitorData] 
(
	[FullName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = OFF, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NCX_GeocodedAddress] ON [dbo].[VisitorData] 
(
	[GeocodedAddress] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = OFF, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NCX_IsGeocoded] ON [dbo].[VisitorData] 
(
	[IsGeocoded] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = OFF, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NCX_RawDataID] ON [dbo].[VisitorData] 
(
	[RawDataID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = OFF, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NCX_ReportMonth] ON [dbo].[VisitorData] 
(
	[ReportMonth] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = OFF, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NCX_State] ON [dbo].[VisitorData] 
(
	[State] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = OFF, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NCX_StateCode] ON [dbo].[VisitorData] 
(
	[StateCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = OFF, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NCX_ZipCode] ON [dbo].[VisitorData] 
(
	[Zipcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = OFF, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO
/*****  Table [dbo].[US_States]     16:33:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[US_States](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[Abbreviations] [nvarchar](2) NOT NULL,
	[DMVCode] [nvarchar](10) NULL,
 CONSTRAINT [PK_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/*****  Table [dbo].[GeocodedAddresses]     16:33:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GeocodedAddresses](
	[GeocodeID] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](250) NOT NULL,
	[VisitorDataID] [int] NOT NULL,
 CONSTRAINT [PK_GeocodeID] PRIMARY KEY CLUSTERED 
(
	[GeocodeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NCX_Address] ON [dbo].[GeocodedAddresses] 
(
	[Address] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = OFF, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NCX_RawDataID] ON [dbo].[GeocodedAddresses] 
(
	[VisitorDataID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = OFF, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY]
GO
/*****  StoredProcedure [dbo].[Clean_RawData]     16:33:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Godwin Effiong
-- Create date: June 07, 2013
-- Description:	EXTRACTS VisitorData table
--				with data from RawData table
--
--				Loads the data
--				TRANSFORMS the extracted data
--					by updating the various fields 
--					to remove special characters and blanks
--
-- =============================================
CREATE PROCEDURE [dbo].[Clean_RawData]	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	DELETE FROM RawData
    WHERE 
		RawData IS NULL
		OR RawData IN ('%E?;E?', '%E?;', '%E?')
		OR  CHARINDEX('%E?', RawData) > 0
		OR SUBSTRING(RawData, 2,1) = '^'
		OR LEN(RawData) < 20		
		OR ISNUMERIC(SUBSTRING(RawData, 1,1)) = 1
		OR ISNUMERIC(SUBSTRING(RawData, 2,1)) = 1
		
	--- 1. 
	INSERT INTO VisitorData (LastName, FirstName, Address, City, State, StateCode, DOB, RawDataID)
	SELECT
			SUBSTRING(RawData, CHARINDEX('^', RawData, 1)+1,CHARINDEX('$', RawData, 1)- CHARINDEX('^', RawData, 1)-1) AS 'LastName'
			,SUBSTRING(RawData, CHARINDEX('$', RawData, 1)+1, CHARINDEX('^', RawData, CHARINDEX('$', RawData, 1))-CHARINDEX('$', RawData, 1)-1 ) As 'FirstName'
			,SUBSTRING(RawData, CHARINDEX('^', RawData, CHARINDEX('$', RawData,1))+1, CHARINDEX('?', RawData,1)-CHARINDEX('^', RawData, CHARINDEX('$', RawData,1))-2) AS 'Address'
			,SUBSTRING(RawData, 4, CHARINDEX('^', RawData, 1)-4) AS 'City'
			,SUBSTRING(RawData, 2, 2) AS 'State'
			,SUBSTRING(RawData, CHARINDEX('?', RawData,1)+2, 6)	AS 'StateCode'
			,SUBSTRING(RawData, CHARINDEX('=', RawData,1)+5,4) + '-' + SUBSTRING(RawData,CHARINDEX('=', RawData,1)+9,2) + '-' + SUBSTRING(RawData, CHARINDEX('=', RawData,1)+11,2)	AS 'DOB'		
			,RawDataID
	FROM RawData rd	
	WHERE rd.RawDataID IN (SELECT RawDataID FROM RawData EXCEPT SELECT RawDataID FROM VisitorData) 
		AND CHARINDEX('$', RawData, 1)- CHARINDEX('^', RawData, 1)-1 >= 0			


	--Step 2	
	UPDATE VisitorData SET Address = LTRIM(RTRIM(REPLACE(Address, '^', ' ' )))
	UPDATE VisitorData SET Address = LTRIM(RTRIM(REPLACE(Address, '$', ' ' )))
	UPDATE VisitorData SET Address = LTRIM(RTRIM(REPLACE(Address, '   ', '' )))
	UPDATE VisitorData SET Address = LTRIM(RTRIM(REPLACE(Address, '#', 'Apt ' )))

	UPDATE VisitorData SET FirstName = LTRIM(RTRIM(REPLACE(FirstName, '$', ' ' )))
							,LastName = LTRIM(RTRIM(REPLACE(LastName, '$', ' ' )))
	
	UPDATE VisitorData SET FullName = LTRIM(RTRIM(FirstName + ' ' + LastName))

	UPDATE VisitorData SET StateCode = LTRIM(RTRIM(REPLACE(StateCode, 'E?', '' )))
	UPDATE VisitorData SET DOB = 'Unknown' WHERE LOWER(DOB) LIKE '%[a-z]%' OR LEFT(DOB, 4) > DATEPART(YEAR, GETDATE()) OR DOB LIKE '%=%'
	UPDATE VisitorData SET DOB = LTRIM(RTRIM(REPLACE(DOB, '-99-', '-09-' )))
	UPDATE VisitorData SET DOB = 'Unknown' WHERE LOWER(DOB) LIKE '%[a-z]%'

	--3. Get Report Month
	UPDATE vData
		SET vData.ReportMonth = DATENAME(MONTH, rd.DataCaptureDate) + ' ' + DATENAME(YEAR, rd.DataCaptureDate)
		FROM VisitorData vData
			JOIN RawData rd
		ON vData.RawDataID = rd.RawDataID
	WHERE vData.ReportMonth IS NULL

	--Get age Group
	/*
		Assigns age group based on date of birth:
		Specified age groups are:
		0 - 20 years
		21 - 45 years
		46 - 64 years
		65 years and over
	*/
	;WITH birth_dates AS (
		SELECT ID, CAST(DOB AS Datetime) AS 'bday'
		FROM VisitorData WHERE DOB != 'Unknown'
		)

	UPDATE vData 
	SET vData.AgeGroup = 
		CASE
			WHEN DATEDIFF(YEAR, bd.bday, GETDATE()) >= 0 AND DATEDIFF(YEAR, bd.bday, GETDATE()) <= 20 THEN '0 - 20 years'
			WHEN DATEDIFF(YEAR, bd.bday, GETDATE()) >= 21 AND DATEDIFF(YEAR, bd.bday, GETDATE()) <= 45 THEN '21 - 45 years'
			WHEN DATEDIFF(YEAR, bd.bday, GETDATE()) >= 46 AND DATEDIFF(YEAR, bd.bday, GETDATE()) <= 64 THEN '46 - 64 years'
			WHEN DATEDIFF(YEAR, bd.bday, GETDATE()) >= 65 AND DATEDIFF(YEAR, bd.bday, GETDATE()) <= 199 THEN '65 years and over'
			WHEN vData.DOB = 'Unknown' THEN 'Unknown'
			ELSE 'Unknown'
		END 	
	FROM VisitorData vData
		---left join to capture the unknowns in 'DOB'
		LEFT JOIN birth_dates bd
	ON vData.ID = bd.ID
	WHERE vData.AgeGroup IS NULL
	
END
GO
/*****  StoredProcedure [dbo].[update_after_geocode]     16:33:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_after_geocode]	
	@geocode_value bit,
	@address nvarchar(1),
	@zipcode nvarchar(1)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	--use @ parameters to avoid SQL injection
	 UPDATE vData
     SET vData.GeocodedAddress = LTRIM(RTRIM(temp.Address))
        ,IsGeocoded = 1
        ,DateModified = GetDate()
     FROM VisitorData vData
        JOIN temp_VisitorData temp
     ON vData.ID = temp.VisitorDataID 
   WHERE vData.IsGeoCoded = @geocode_value
 
  UPDATE visitorData
	 SET Address1 = LTRIM(RTRIM(LEFT(GeocodedAddress, CHARINDEX(',', GeocodedAddress)-1)))
  WHERE Address1 IS NULL OR Address1 = @address;                            

  ---get zipcode for US and Canadian addresses
  UPDATE dbo.visitorData
  SET Zipcode =  
        CASE 
                WHEN GeocodedAddress LIKE '%USA' THEN LTRIM(RTRIM(LEFT(RIGHT(GeocodedAddress, 10), 5) ))
                WHEN GeocodedAddress LIKE '%Canada' THEN LTRIM(RTRIM(LEFT(RIGHT(GeocodedAddress, 16), 8) ))
        END 
  WHERE ZipCode IS NULL or Zipcode = @zipcode
             
   /*    
   #sql_query = ''' UPDATE vData
   #                  SET vData.GeocodedAddress = LTRIM(RTRIM(temp.Address))
   #                     ,IsGeocoded = 1
   #                     ,DateModified = GetDate()
   #                  FROM {} vData
   #                     JOIN {} temp
   #                  ON vData.ID = temp.VisitorDataID 
   #                WHERE vData.IsGeoCoded = ?;                 
                 
   #               UPDATE {} ----dbo.visitorData
   #                  SET Address1 = LTRIM(RTRIM(LEFT(GeocodedAddress, CHARINDEX(',', GeocodedAddress)-1)))
   #               WHERE Address1 IS NULL OR Address1 =  ?;                              

   #               ---get zipcode for US and Canadian addresses
   #               UPDATE {} ----dbo.visitorData
   #               SET Zipcode =  
   #                     CASE 
		 #                       WHEN GeocodedAddress LIKE '%USA' THEN LTRIM(RTRIM(LEFT(RIGHT(GeocodedAddress, 10), 5) ))
		 #                       WHEN GeocodedAddress LIKE '%Canada' THEN LTRIM(RTRIM(LEFT(RIGHT(GeocodedAddress, 16), 8) ))
   #                     END 
   #               WHERE ZipCode IS NULL or Zipcode = ?
   #              '''.format(DEST_TABLE, STAGE_TABLE, DEST_TABLE, DEST_TABLE)   
   */
END
GO
/*****  StoredProcedure [dbo].[insert_after_geocode]     16:33:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Godwin Effiong
-- Create date: June 18, 2013
-- Description:	geocodes the address(es),
---		scrubs out the XML then inserts results into temp_table


-- =============================================
CREATE PROCEDURE [dbo].[insert_after_geocode]	
	@vDataID int,
	@geoAddress nvarchar(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
		DECLARE @exists nvarchar(50)

		SELECT @exists = VisitorDataID FROM temp_VisitorData 
			WHERE VisitorDataID = @vDataID

   --- use "@" as parameters to prevent SQL injection attack      
   ---		check to see that duplicate records are not entered
		IF @exists IS NULL
		BEGIN
			INSERT INTO temp_VisitorData(VisitorDataID, Address) 
				VALUES(@vDataID, @geoAddress )
		END
    /*'''
                  DECLARE @exists nvarchar(50)
                  
                  SELECT @exists = VisitorDataID FROM {} 
                  WHERE VisitorDataID = ?

                  IF @exists IS NULL
                  BEGIN
                     INSERT INTO {} (VisitorDataID, Address) 
                     VALUES(?, ? )
                     
                  END '''.format(STAGE_TABLE, STAGE_TABLE)
*/
END
GO
/*****  StoredProcedure [dbo].[get_addresses]     16:33:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Godwin Effiong
-- Create date: June 18, 2013
-- Description:	Retrieves the addresses for geocoding
-- =============================================
CREATE PROCEDURE [dbo].[get_addresses]		
	@geocode_value BIT	
AS	
	--DECLARE @db_table TABLE (
	--		ID INT,
	--		Address NVARCHAR(100), 
	--		City NVARCHAR(50), 
	--		State NVARCHAR(2),
	--		IsGeocoded BIT,
	--		GeocodedAddress NVARCHAR(250)
	--	)	
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;		
	
    SELECT ID, (Address + ', ' + City + ', ' + State) AS 'FullAddress' 
    FROM VisitorData
	WHERE IsGeocoded = @geocode_value
		-----AND (GeocodedAddress IS NULL OR GeocodedAddress = @geocoded_address)             
            
END
GO
/****** Object:  StoredProcedure [dbo].[run_eMerge]    Script Date: 06/20/2013 16:14:14 ******/
USE [ATMS_DL]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Godwin Effiong
-- Create date: june 20, 2013
-- Description:	query for the eMerge template
-- =============================================
CREATE PROCEDURE [dbo].[run_eMerge]
	    @date_modified date	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT FirstName,LastName ,FullName ,Company
		,Email ,Address1 ,Address2
		,Address3 ,City ,State,	Zipcode AS Zip	
		,HomePhone	,BusinessPhone	,ClientPatronID
	FROM VisitorData	
	WHERE DateModified >= @date_modified

END
GO

/*****  Default [DF_RawData_IsGeocoded]     16:33:16 ******/
ALTER TABLE [dbo].[RawData] ADD  CONSTRAINT [DF_RawData_IsGeocoded]  DEFAULT ((0)) FOR [IsGeocoded]
GO
/*****  Default [DF_VisitorData_DateModified]     16:33:16 ******/
ALTER TABLE [dbo].[VisitorData] ADD  CONSTRAINT [DF_VisitorData_DateModified]  DEFAULT (getdate()) FOR [DateModified]
GO
/*****  Default [DF_VisitorData_IsGeocoded]     16:33:16 ******/
ALTER TABLE [dbo].[VisitorData] ADD  CONSTRAINT [DF_VisitorData_IsGeocoded]  DEFAULT ((0)) FOR [IsGeocoded]
GO

USE [ATMS_DL]
GO
/****** Object:  Table [dbo].[US_States]    Script Date: 06/18/2013 16:36:25 ******/
SET IDENTITY_INSERT [dbo].[US_States] ON
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (1, N'Alabama', N'AL', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (2, N'Alaska', N'AK', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (3, N'Arizona', N'AZ', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (4, N'Arkansas', N'AR', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (5, N'California', N'CA', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (6, N'Colorado', N'CO', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (7, N'Connecticut', N'CT', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (8, N'Delaware', N'DE', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (9, N'Florida', N'FL', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (10, N'Georgia', N'GA', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (11, N'Hawaii', N'HI', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (12, N'Idaho', N'ID', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (13, N'Illinois', N'IL', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (14, N'Indiana', N'IN', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (15, N'Iowa', N'IA', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (16, N'Kansas', N'KS', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (17, N'Kentucky', N'KY', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (18, N'Louisiana', N'LA', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (19, N'Maine', N'ME', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (20, N'Maryland', N'MD', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (21, N'Massachusetts', N'MA', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (22, N'Michigan', N'MI', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (23, N'Minnesota', N'MN', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (24, N'Mississippi', N'MS', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (25, N'Missouri', N'MO', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (26, N'Montana', N'MT', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (27, N'Nebraska', N'NE', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (28, N'Nevada', N'NV', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (29, N'New Hampshire', N'NH', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (30, N'New Jersey', N'NJ', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (31, N'New Mexico', N'NM', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (32, N'New York', N'NY', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (33, N'North Carolina', N'NC', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (34, N'North Dakota', N'ND', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (35, N'Ohio', N'OH', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (36, N'Oklahoma', N'OK', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (37, N'Oregon', N'OR', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (38, N'Pennsylvania', N'PA', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (39, N'Rhode Island', N'RI', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (40, N'South Carolina', N'SC', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (41, N'South Dakota', N'SD', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (42, N'Tennessee', N'TN', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (43, N'Texas', N'TX', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (44, N'Utah', N'UT', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (45, N'Vermont', N'VT', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (46, N'Virginia', N'VA', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (47, N'Washington', N'WA', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (48, N'West Virginia', N'WV', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (49, N'Wisconsin', N'WI', NULL)
INSERT [dbo].[US_States] ([ID], [State], [Abbreviations], [DMVCode]) VALUES (50, N'Wyoming', N'WY', NULL)
SET IDENTITY_INSERT [dbo].[US_States] OFF
