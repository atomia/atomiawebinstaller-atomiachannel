/****** Object:  Table [dbo].[umbracoUserType]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[umbracoUserType](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[userTypeAlias] [nvarchar](50) NULL,
	[userTypeName] [nvarchar](255) NOT NULL,
	[userTypeDefaultPermissions] [nvarchar](50) NULL,
 CONSTRAINT [PK_userType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
SET IDENTITY_INSERT [dbo].[umbracoUserType] ON
INSERT [dbo].[umbracoUserType] ([id], [userTypeAlias], [userTypeName], [userTypeDefaultPermissions]) VALUES (1, N'admin', N'Administrators', N'CADMOSKTPIURZ:5F')
INSERT [dbo].[umbracoUserType] ([id], [userTypeAlias], [userTypeName], [userTypeDefaultPermissions]) VALUES (2, N'writer', N'Writer', N'CAH:F')
INSERT [dbo].[umbracoUserType] ([id], [userTypeAlias], [userTypeName], [userTypeDefaultPermissions]) VALUES (3, N'editor', N'Editors', N'CADMOSKTPUZ:5F')
INSERT [dbo].[umbracoUserType] ([id], [userTypeAlias], [userTypeName], [userTypeDefaultPermissions]) VALUES (4, N'translator', N'Translator', N'AF')
SET IDENTITY_INSERT [dbo].[umbracoUserType] OFF
/****** Object:  Table [dbo].[umbracoUserLogins]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[umbracoUserLogins](
	[contextID] [uniqueidentifier] NOT NULL,
	[userID] [int] NOT NULL,
	[timeout] [bigint] NOT NULL
) ON [PRIMARY]
\go
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'73baf46a-7ada-48df-8c6a-02b9adee1cbb', 0, 634313316556866394)
/****** Object:  Table [dbo].[cmsTaskType]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[cmsTaskType](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[alias] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_cmsTaskType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_cmsTaskType] UNIQUE NONCLUSTERED 
(
	[alias] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
SET IDENTITY_INSERT [dbo].[cmsTaskType] ON
INSERT [dbo].[cmsTaskType] ([id], [alias]) VALUES (1, N'toTranslate')
SET IDENTITY_INSERT [dbo].[cmsTaskType] OFF
/****** Object:  Table [dbo].[umbracoRelationType]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[umbracoRelationType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dual] [bit] NOT NULL,
	[parentObjectType] [uniqueidentifier] NOT NULL,
	[childObjectType] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[alias] [nvarchar](100) NULL,
 CONSTRAINT [PK_umbracoRelationType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
SET IDENTITY_INSERT [dbo].[umbracoRelationType] ON
INSERT [dbo].[umbracoRelationType] ([id], [dual], [parentObjectType], [childObjectType], [name], [alias]) VALUES (1, 1, N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'Relate Document On Copy', N'relateDocumentOnCopy')
SET IDENTITY_INSERT [dbo].[umbracoRelationType] OFF
/****** Object:  Table [dbo].[umbracoApp]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[umbracoApp](
	[sortOrder] [tinyint] NOT NULL,
	[appAlias] [nvarchar](50) NOT NULL,
	[appIcon] [nvarchar](255) NOT NULL,
	[appName] [nvarchar](255) NOT NULL,
	[appInitWithTreeAlias] [nvarchar](255) NULL,
 CONSTRAINT [PK_umbracoApp] PRIMARY KEY CLUSTERED 
(
	[appAlias] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
INSERT [dbo].[umbracoApp] ([sortOrder], [appAlias], [appIcon], [appName], [appInitWithTreeAlias]) VALUES (0, N'content', N'.traycontent', N'Indhold', N'content')
INSERT [dbo].[umbracoApp] ([sortOrder], [appAlias], [appIcon], [appName], [appInitWithTreeAlias]) VALUES (7, N'developer', N'.traydeveloper', N'Developer', NULL)
INSERT [dbo].[umbracoApp] ([sortOrder], [appAlias], [appIcon], [appName], [appInitWithTreeAlias]) VALUES (1, N'media', N'.traymedia', N'Mediearkiv', NULL)
INSERT [dbo].[umbracoApp] ([sortOrder], [appAlias], [appIcon], [appName], [appInitWithTreeAlias]) VALUES (8, N'member', N'.traymember', N'Medlemmer', NULL)
INSERT [dbo].[umbracoApp] ([sortOrder], [appAlias], [appIcon], [appName], [appInitWithTreeAlias]) VALUES (6, N'settings', N'.traysettings', N'Indstillinger', NULL)
INSERT [dbo].[umbracoApp] ([sortOrder], [appAlias], [appIcon], [appName], [appInitWithTreeAlias]) VALUES (5, N'translation', N'.traytranslation', N'Translation', NULL)
INSERT [dbo].[umbracoApp] ([sortOrder], [appAlias], [appIcon], [appName], [appInitWithTreeAlias]) VALUES (5, N'users', N'.trayusers', N'Brugere', NULL)
/****** Object:  Table [dbo].[umbracoNode]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[umbracoNode](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[trashed] [bit] NOT NULL,
	[parentID] [int] NOT NULL,
	[nodeUser] [int] NULL,
	[level] [smallint] NOT NULL,
	[path] [nvarchar](150) NOT NULL,
	[sortOrder] [int] NOT NULL,
	[uniqueID] [uniqueidentifier] NULL,
	[text] [nvarchar](255) NULL,
	[nodeObjectType] [uniqueidentifier] NULL,
	[createDate] [datetime] NOT NULL,
 CONSTRAINT [PK_structure] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
CREATE NONCLUSTERED INDEX [IX_umbracoNodeObjectType] ON [dbo].[umbracoNode] 
(
	[nodeObjectType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
\go
CREATE NONCLUSTERED INDEX [IX_umbracoNodeParentId] ON [dbo].[umbracoNode] 
(
	[parentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
\go
SET IDENTITY_INSERT [dbo].[umbracoNode] ON
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-92, 0, -1, 0, 11, N'-1,-92', 37, N'f0bc4bfb-b499-40d6-ba86-058885a5178c', N'Label', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000957200E73750 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-90, 0, -1, 0, 11, N'-1,-90', 35, N'84c6b441-31df-4ffe-b67e-67d5bc3ae65a', N'Upload', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000957200E73750 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-89, 0, -1, 0, 11, N'-1,-89', 34, N'c6bac0dd-4ab9-45b1-8e30-e4b619ee5da3', N'Textbox multiple', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000957200E73750 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-88, 0, -1, 0, 11, N'-1,-88', 33, N'0cc0eba1-9960-42c9-bf9b-60e150b429ae', N'Textstring', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000957200E73750 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-87, 0, -1, 0, 11, N'-1,-87', 32, N'ca90c950-0aff-4e72-b976-a30b1ac57dad', N'Richtext editor', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000957200E73750 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-51, 0, -1, 0, 11, N'-1,-51', 4, N'2e6d3631-066e-44b8-aec4-96f09099b2b5', N'Numeric', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000957200E73750 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-49, 0, -1, 0, 11, N'-1,-49', 2, N'92897bc6-a5f3-4ffe-ae27-f2e7e33dda49', N'True/false', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000957200E73750 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-43, 0, -1, 0, 1, N'-1,-43', 2, N'fbaf13a8-4036-41f2-93a3-974f678c312a', N'Checkbox list', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000958100E9C10E AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-42, 0, -1, 0, 1, N'-1,-42', 2, N'0b6a45e7-44ba-430d-9da5-4e46060b9e03', N'Dropdown', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000958100E9BAC4 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-41, 0, -1, 0, 1, N'-1,-41', 2, N'5046194e-4237-453c-a547-15db3a07c4e1', N'Date Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000958100E9B543 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-40, 0, -1, 0, 1, N'-1,-40', 2, N'bb5f57c9-ce2b-4bb9-b697-4caca783a805', N'Radiobox', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000958100E9AF58 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-39, 0, -1, 0, 1, N'-1,-39', 2, N'f38f0ac7-1d27-439c-9f3f-089cd8825a53', N'Dropdown multiple', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000958100E9A9C0 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-38, 0, -1, 0, 1, N'-1,-38', 2, N'fd9f1447-6c61-4a7c-9595-5aa39147d318', N'Folder Browser', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000958100E9A102 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-37, 0, -1, 0, 1, N'-1,-37', 2, N'0225af17-b302-49cb-9176-b9f35cab9c17', N'Approved Color', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000958100E99976 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-36, 0, -1, 0, 1, N'-1,-36', 2, N'e4d66c0f-b935-4200-81f0-025f7256b89a', N'Date Picker with time', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000958100E99096 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-21, 0, -1, 0, 0, N'-1,-21', 0, N'bf7c7cbc-952f-4518-97a2-69e9c7b33842', N'Recycle Bin', N'cf3d8e34-1c1c-41e9-ae56-878b57b32113', CAST(0x00009E730167E8BA AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-20, 0, -1, 0, 0, N'-1,-20', 0, N'0f582a79-1e41-4cf0-bfa0-76340651891a', N'Recycle Bin', N'01bb7ff2-24dc-4c0c-95a2-c24ef72bbac8', CAST(0x00009E730167E865 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-1, 0, -1, 0, 0, N'-1', 0, N'916724a5-173d-4619-b97e-b9de133dd6f5', N'SYSTEM DATA: umbraco master root', N'ea7d8624-4cfe-4578-a871-24aa946bf34d', CAST(0x0000957200E73750 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1031, 0, -1, 1, 1, N'-1,1031', 2, N'f38bd2d7-65d0-48e6-95dc-87ce06ec2d3d', N'Folder', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(0x000095B00003C1CF AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1032, 0, -1, 1, 1, N'-1,1032', 2, N'cc07b313-0843-4aa8-bbda-871c8da728c8', N'Image', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(0x000095B00003C551 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1033, 0, -1, 1, 1, N'-1,1033', 2, N'4c52d8ab-54e6-40cd-999c-7a5f24903e4d', N'File', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(0x000095B00003C837 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1034, 0, -1, 0, 1, N'-1,1034', 2, N'a6857c73-d6e9-480c-b6e6-f15f6ad11125', N'Content Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000973E00D84A29 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1035, 0, -1, 0, 1, N'-1,1035', 2, N'93929b9a-93a2-4e2a-b239-d99334440a59', N'Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000973E00D8524B AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1036, 0, -1, 0, 1, N'-1,1036', 2, N'2b24165f-9782-4aa3-b459-1de4a4d21f60', N'Member Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000973E00D8571E AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1038, 0, -1, 0, 1, N'-1,1038', 2, N'1251c96c-185c-4e9b-93f4-b48205573cbd', N'Simple Editor', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000973E00D868AF AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1039, 0, -1, 0, 1, N'-1,1039', 2, N'06f349a9-c949-4b6a-8660-59c10451af42', N'Ultimate Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000973E00D868AF AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1040, 0, -1, 0, 1, N'-1,1040', 2, N'21e798da-e06e-4eda-a511-ed257f78d4fa', N'Related Links', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000973E00D868AF AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1041, 0, -1, 0, 1, N'-1,1041', 2, N'b6b73142-b9c1-4bf8-a16d-e1c23320b549', N'Tags', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000973E00D868AF AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1042, 0, -1, 0, 1, N'-1,1042', 2, N'0a452bd5-83f9-4bc3-8403-1286e13fb77e', N'Macro Container', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000973E00D868AF AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1043, 0, -1, 0, 1, N'-1,1043', 2, N'1df9f033-e6d4-451f-b8d2-e0cbc50a836f', N'Image Cropper', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000973E00D868AF AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1044, 0, -1, 0, 1, N'-1,1044', 31, N'c81a2113-f553-42a4-bc25-4fab6bb75f64', N'Homepage', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x00009E730168C00B AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1045, 0, -1, 0, 1, N'-1,1045', 32, N'f28a231c-b8ba-476e-8cc1-8278e1f0e4bb', N'Starterkit Master', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x00009E730168C06E AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1046, 0, -1, 0, 1, N'-1,1046', 33, N'ce8368a8-c645-4a1b-b0df-88df154b538e', N'Textpage', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x00009E730168C0AB AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1047, 0, -1, 0, 1, N'-1,1047', 34, N'89a58d5b-2308-41c2-8c02-bf1c19764886', N'Homepage', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x00009E730168C16F AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1048, 0, -1, 0, 1, N'-1,1048', 35, N'37b78e5b-0b4d-4b55-b036-27177eab6f27', N'Textpage', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x00009E730168CF19 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1049, 0, -1, 0, 1, N'-1,1049', 36, N'cd893541-60e7-4420-9fbe-aeb4173d04e8', N'Starterkit', N'9f68da4f-a3a8-44c2-8226-dcbd125e4840', CAST(0x00009E730168CF64 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1050, 0, -1, 0, 1, N'-1,1050', 2, N'a00addb2-abaf-40c0-96e9-6332071382aa', N'Simple website', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x00009A9000A2C330 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1051, 0, 1050, 0, 2, N'-1,1050,1051', 1, N'c3550822-aab5-4bf6-adb5-60201f0b9e93', N'Installing modules', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x00009AAE017E9248 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1052, 0, 1050, 0, 2, N'-1,1050,1052', 2, N'70d7cb07-a48a-40f6-ab69-07a79eecc9c3', N'Go further', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x00009AAE017F1C90 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1053, 0, 1050, 0, 2, N'-1,1050,1053', 3, N'de8c2358-6c91-4f31-ab15-1d74d5563fcc', N'Getting started', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x00009AAE017E4E50 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1054, 0, -1, 0, 1, N'-1,1054', 38, N'3c58b7ee-b005-409f-b1f9-140401869781', N'Designit_Green', N'9f68da4f-a3a8-44c2-8226-dcbd125e4840', CAST(0x00009E7301694D69 AS DateTime))
SET IDENTITY_INSERT [dbo].[umbracoNode] OFF
/****** Object:  Table [dbo].[umbracoLog]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[umbracoLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[NodeId] [int] NOT NULL,
	[Datestamp] [datetime] NOT NULL,
	[logHeader] [nvarchar](50) NOT NULL,
	[logComment] [nvarchar](4000) NULL,
 CONSTRAINT [PK_umbracoLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
CREATE NONCLUSTERED INDEX [IX_umbracoLog] ON [dbo].[umbracoLog] 
(
	[NodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
\go
SET IDENTITY_INSERT [dbo].[umbracoLog] ON
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1, 0, -1, CAST(0x00009E730167E99E AS DateTime), N'System', N'Loading content from database...')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2, 0, -1, CAST(0x00009E730167E99E AS DateTime), N'Debug', N'Republishing starting')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (3, 0, -1, CAST(0x00009E730167E9A3 AS DateTime), N'Debug', N'Xml Pages loaded')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (4, 0, -1, CAST(0x00009E730167E9BA AS DateTime), N'Debug', N'Done republishing Xml Index')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (5, 0, -1, CAST(0x00009E730167E9BD AS DateTime), N'Debug', N'Xml saved in 00:00:00.1922006')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (6, 0, -1, CAST(0x00009E730167E9D4 AS DateTime), N'Debug', N'Xml saved in 00:00:00.0968779')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (7, 0, -1, CAST(0x00009E7301687B60 AS DateTime), N'Login', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (8, 0, -1, CAST(0x00009E730168C637 AS DateTime), N'Debug', N'CurrentVersion different from configStatus: ''4.6.1'',''''')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (9, 0, -1, CAST(0x00009E730168C642 AS DateTime), N'System', N'Application started at 2011-01-22 21:53:32')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (10, 0, -1, CAST(0x00009E730168C642 AS DateTime), N'Debug', N'CurrentVersion different from configStatus: ''4.6.1'',''''')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (11, 0, -1, CAST(0x00009E730168C689 AS DateTime), N'System', N'Loading content from disk cache...')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (12, 0, 1050, CAST(0x00009E730168CFD0 AS DateTime), N'New', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (13, 0, 1051, CAST(0x00009E730168E91F AS DateTime), N'New', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (14, 0, 1052, CAST(0x00009E730168E94A AS DateTime), N'New', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (15, 0, 1053, CAST(0x00009E730168E976 AS DateTime), N'New', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (16, 0, -1, CAST(0x00009E730168E995 AS DateTime), N'Debug', N'&lt;Action runat=&quot;install&quot; alias=&quot;publishRootDocument&quot; documentName=&quot;Simple website&quot; /&gt;')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (17, 0, 1050, CAST(0x00009E730168F51E AS DateTime), N'Publish', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (18, 0, 1051, CAST(0x00009E730168F561 AS DateTime), N'Publish', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (19, 0, 1052, CAST(0x00009E730168F56D AS DateTime), N'Publish', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (20, 0, 1053, CAST(0x00009E730168F578 AS DateTime), N'Publish', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (21, 0, -1, CAST(0x00009E730168F58E AS DateTime), N'System', N'Loading content from database...')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (22, 0, -1, CAST(0x00009E730168F59F AS DateTime), N'Debug', N'Republishing starting')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (23, 0, -1, CAST(0x00009E730168F5A0 AS DateTime), N'Debug', N'Xml Pages loaded')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (24, 0, -1, CAST(0x00009E730168F5A1 AS DateTime), N'Debug', N'Done republishing Xml Index')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (25, 0, -1, CAST(0x00009E730168F5C1 AS DateTime), N'Debug', N'Xml saved in 00:00:00.0791080')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (26, 0, -1, CAST(0x00009E730168F5D7 AS DateTime), N'Debug', N'Xml saved in 00:00:00.0878620')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (27, 0, -1, CAST(0x00009E7301694D8E AS DateTime), N'System', N'Loading content from database...')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (28, 0, -1, CAST(0x00009E7301694D94 AS DateTime), N'Debug', N'Republishing starting')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (29, 0, -1, CAST(0x00009E7301694D95 AS DateTime), N'Debug', N'Xml Pages loaded')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (30, 0, -1, CAST(0x00009E7301694D95 AS DateTime), N'Debug', N'Done republishing Xml Index')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (31, 0, -1, CAST(0x00009E7301694DB8 AS DateTime), N'Debug', N'Xml saved in 00:00:00.0868780')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (32, 0, -1, CAST(0x00009E7301694DD1 AS DateTime), N'Debug', N'Xml saved in 00:00:00.0837908')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (33, 0, -1, CAST(0x00009E730169713C AS DateTime), N'System', N'Loading content from disk cache...')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (34, 0, -1, CAST(0x00009E730169713C AS DateTime), N'Custom', N'[UmbracoExamine] Adding examine event handlers for index providers: 2')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (35, 0, -1, CAST(0x00009E730169713D AS DateTime), N'System', N'Application started at 2011-01-22 21:55:58')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (36, 0, -1, CAST(0x00009E730169713D AS DateTime), N'Custom', N'[UmbracoExamine] VSRV4DEV machine is the Executive Indexer with 1 servers in the cluster')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (37, 0, -1, CAST(0x00009E730169713D AS DateTime), N'Custom', N'[UmbracoExamine] VSRV4DEV machine is the Executive Indexer with 1 servers in the cluster')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (38, 0, -1, CAST(0x00009E730169C84F AS DateTime), N'System', N'Loading content from disk cache...')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (39, 0, -1, CAST(0x00009E730169C84F AS DateTime), N'Custom', N'[UmbracoExamine] (InternalMemberIndexer) Index is being optimized')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (40, 0, -1, CAST(0x00009E730169C850 AS DateTime), N'Custom', N'[UmbracoExamine] (InternalIndexer) Index is being optimized')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (41, 0, -1, CAST(0x00009E730169C850 AS DateTime), N'System', N'Application started at 2011-01-22 21:57:12')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (42, 0, -1, CAST(0x00009E730169C850 AS DateTime), N'Custom', N'[UmbracoExamine] Adding examine event handlers for index providers: 2')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (43, 0, -1, CAST(0x00009E73016A7744 AS DateTime), N'NotFound', N'umbraco (from '''')')
SET IDENTITY_INSERT [dbo].[umbracoLog] OFF
/****** Object:  Table [dbo].[umbracoLanguage]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[umbracoLanguage](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[languageISOCode] [nvarchar](10) NULL,
	[languageCultureName] [nvarchar](100) NULL,
 CONSTRAINT [PK_language] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_umbracoLanguage] UNIQUE NONCLUSTERED 
(
	[languageISOCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
SET IDENTITY_INSERT [dbo].[umbracoLanguage] ON
INSERT [dbo].[umbracoLanguage] ([id], [languageISOCode], [languageCultureName]) VALUES (1, N'en-US', N'en-US')
SET IDENTITY_INSERT [dbo].[umbracoLanguage] OFF
/****** Object:  Table [dbo].[cmsMacro]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[cmsMacro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[macroUseInEditor] [bit] NOT NULL,
	[macroRefreshRate] [int] NOT NULL,
	[macroAlias] [nvarchar](255) NOT NULL,
	[macroName] [nvarchar](255) NULL,
	[macroScriptType] [nvarchar](255) NULL,
	[macroScriptAssembly] [nvarchar](255) NULL,
	[macroXSLT] [nvarchar](255) NULL,
	[macroCacheByPage] [bit] NOT NULL,
	[macroCachePersonalized] [bit] NOT NULL,
	[macroDontRender] [bit] NOT NULL,
	[macroPython] [nvarchar](255) NULL,
 CONSTRAINT [PK_macro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
SET IDENTITY_INSERT [dbo].[cmsMacro] ON
INSERT [dbo].[cmsMacro] ([id], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroScriptType], [macroScriptAssembly], [macroXSLT], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroPython]) VALUES (1, 0, 0, N'umb2ndLevelNavigation', N'2nd Level Navigation', N'', N'', N'umb2ndLevelNavigation.xslt', 1, 0, 0, N'')
INSERT [dbo].[cmsMacro] ([id], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroScriptType], [macroScriptAssembly], [macroXSLT], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroPython]) VALUES (2, 0, 0, N'umbTopNavigation', N'Top Navigation', N'', N'', N'umbTopNavigation.xslt', 1, 0, 0, N'')
SET IDENTITY_INSERT [dbo].[cmsMacro] OFF
/****** Object:  Table [dbo].[cmsTags]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
SET ANSI_PADDING ON
\go
CREATE TABLE [dbo].[cmsTags](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tag] [varchar](200) NULL,
	[parentId] [int] NULL,
	[group] [varchar](100) NULL,
 CONSTRAINT [PK_cmsTags] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
SET ANSI_PADDING OFF
\go
/****** Object:  Table [dbo].[cmsDictionary]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[cmsDictionary](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[id] [uniqueidentifier] NOT NULL,
	[parent] [uniqueidentifier] NOT NULL,
	[key] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_cmsDictionary] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_cmsDictionary] UNIQUE NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
/****** Object:  Table [dbo].[cmsMacroPropertyType]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[cmsMacroPropertyType](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[macroPropertyTypeAlias] [nvarchar](50) NULL,
	[macroPropertyTypeRenderAssembly] [nvarchar](255) NULL,
	[macroPropertyTypeRenderType] [nvarchar](255) NULL,
	[macroPropertyTypeBaseType] [nvarchar](255) NULL,
 CONSTRAINT [PK_macroPropertyType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
SET IDENTITY_INSERT [dbo].[cmsMacroPropertyType] ON
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (3, N'mediaCurrent', N'umbraco.macroRenderings', N'media', N'Int32')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (4, N'contentSubs', N'umbraco.macroRenderings', N'content', N'Int32')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (5, N'contentRandom', N'umbraco.macroRenderings', N'content', N'Int32')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (6, N'contentPicker', N'umbraco.macroRenderings', N'content', N'Int32')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (13, N'number', N'umbraco.macroRenderings', N'numeric', N'Int32')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (14, N'bool', N'umbraco.macroRenderings', N'yesNo', N'Boolean')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (16, N'text', N'umbraco.macroRenderings', N'text', N'String')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (17, N'contentTree', N'umbraco.macroRenderings', N'content', N'Int32')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (18, N'contentType', N'umbraco.macroRenderings', N'contentTypeSingle', N'Int32')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (19, N'contentTypeMultiple', N'umbraco.macroRenderings', N'contentTypeMultiple', N'Int32')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (20, N'contentAll', N'umbraco.macroRenderings', N'content', N'Int32')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (21, N'tabPicker', N'umbraco.macroRenderings', N'tabPicker', N'String')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (22, N'tabPickerMultiple', N'umbraco.macroRenderings', N'tabPickerMultiple', N'String')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (23, N'propertyTypePicker', N'umbraco.macroRenderings', N'propertyTypePicker', N'String')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (24, N'propertyTypePickerMultiple', N'umbraco.macroRenderings', N'propertyTypePickerMultiple', N'String')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (25, N'textMultiLine', N'umbraco.macroRenderings', N'textMultiple', N'String')
SET IDENTITY_INSERT [dbo].[cmsMacroPropertyType] OFF
/****** Object:  Table [dbo].[cmsMacroProperty]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[cmsMacroProperty](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[macroPropertyHidden] [bit] NOT NULL,
	[macroPropertyType] [smallint] NOT NULL,
	[macro] [int] NOT NULL,
	[macroPropertySortOrder] [tinyint] NOT NULL,
	[macroPropertyAlias] [nvarchar](50) NOT NULL,
	[macroPropertyName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_macroProperty] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
/****** Object:  Table [dbo].[cmsStylesheetProperty]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[cmsStylesheetProperty](
	[nodeId] [int] NOT NULL,
	[stylesheetPropertyEditor] [bit] NULL,
	[stylesheetPropertyAlias] [nvarchar](50) NULL,
	[stylesheetPropertyValue] [nvarchar](400) NULL,
 CONSTRAINT [PK_cmsStylesheetProperty] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
/****** Object:  Table [dbo].[cmsStylesheet]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[cmsStylesheet](
	[nodeId] [int] NOT NULL,
	[filename] [nvarchar](100) NOT NULL,
	[content] [ntext] NULL,
 CONSTRAINT [PK_cmsStylesheet] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
\go
INSERT [dbo].[cmsStylesheet] ([nodeId], [filename], [content]) VALUES (1049, N'', N'/*LAYOUT*/

body{text-align: left; padding: 0px; margin: 0px; background: #F6F7F9;}

#main{margin: auto; margin-top: 20px; text-align: left; width: 870px;}

#top{border-bottom: 1px solid #CED7DE;}

#top ul{list-style: none; padding: 0px 0px 15px 0px; margin: 0px;}
#top ul li{display: inline; margin: 0px; padding: 0xp;}
#top ul li a{padding: 10px 20px 10px 0px; color: #000}

#top ul li.current a{font-weight: bold}

#body{margin: auto; padding: 2em 0em 2em 0em;}
#footer{padding-top: 5px; clear: both;}

/* Subpages layout */
#content.textpage{text-align: left; float: left; width: 75%;}
#subNavigation{margin-top: 40px; width: 22%; float: right;} 
#subNavigation ul{list-style: none; border: 1px solid #FFE8CD; background: #FFF9D8; display: block; padding: 10px; padding-left: 0px;}
#subNavigation ul li{margin: 0; padding: 0px; padding-right: 10px;}

/* FONTS standards */
body {font-size: 14px; background:#fff; font-family: "Lucida Grande", Arial, sans-serif;}

h1, h2, h3, h4, h5, h6 {color: #426FC8; font-weight: 500;}
h1 {font-size:60px; line-height: 1; margin-bottom:0.5em; font-weight: bold; letter-spacing: -1px; width: auto; color: #666;}
h2 {font-size:25px; margin-bottom:0.75em;}

h3 {font-size: 18px;line-height:1;margin-bottom:1em;}
h4 {font-size:1.2em;line-height:1.25;margin-bottom:1.25em;}
h5 {font-size:1em;font-weight:bold;margin-bottom:1.5em;}
h6 {font-size:1em;font-weight:bold;}
h1 img, h2 img, h3 img, h4 img, h5 img, h6 img {margin:0;}

p {margin:0 0 1.5em; font-size: 16px;}
p img {float:left;margin:1.5em 1.5em 1.5em 0;padding:0;}
p img.right {float:right;margin:1.5em 0 1.5em 1.5em;}

/* LINKS standards */
a:hover {color:#000;}
a {color: #426FC8; text-decoration:underline;}
h1 a{color: #666; text-decoration: none;}

/* ELEMENTS standards */
blockquote {margin:1.5em;color:#666;font-style:italic;}
strong {font-weight:bold;}
em, dfn {font-style:italic;}
dfn {font-weight:bold;}
sup, sub {line-height:0;}
abbr, acronym {border-bottom:1px dotted #666;}
address {margin:0 0 1.5em;font-style:italic;}
del {color:#666;}
pre, code {margin:1.5em 0;white-space:pre;}
pre, code, tt {font:1em ''andale mono'', ''lucida console'', monospace;line-height:1.5;}
li ul, li ol {margin:0 1.5em;}
ul, ol {margin:0 1.5em 1.5em 1.5em;}
ul {list-style-type:disc;}
ol {list-style-type:decimal;}
dl {margin:0 0 1.5em 0;}
dl dt {font-weight:bold;}
dd {margin-left:1.5em;}
table {margin-bottom:1.4em;width:100%;}
th {font-weight:bold;background:#C3D9FF;}
th, td {padding:4px 10px 4px 5px;}
tr.even td {background:#E5ECF9;}
tfoot {font-style:italic;}
caption {background:#eee;}

/* FORM ELEMENTS */
label {font-weight:bold;}
fieldset {padding:1.4em;margin:0 0 1.5em 0;border:1px solid #ccc;}
legend {font-weight:bold;font-size:1.2em;}
input.text, input.title, textarea, select {margin:0.5em 0;border:1px solid #bbb;}
input.text:focus, input.title:focus, textarea:focus, select:focus {border:1px solid #666;}
input.text, input.title {width:300px;padding:5px;}
input.title {font-size:1.5em;}
textarea {width:300px;height:250px;padding:5px;}
.error, .notice, .success {padding:.8em;margin-bottom:1em;border:2px solid #ddd;}
.error {background:#FBE3E4;color:#8a1f11;border-color:#FBC2C4;}
.notice {background:#FFF6BF;color:#514721;border-color:#FFD324;}
.success {background:#E6EFC2;color:#264409;border-color:#C6D880;}
.error a {color:#8a1f11;}
.notice a {color:#514721;}
.success a {color:#264409;}

.error ul{margin-bottom: 0; padding-bottom: 0;}


/*BLOG STYLES */
#content .post{text-align: left;}

/* Clear fix to repleace br clear:both */ 
.clearfix:after {
  content: ".";
  display: block;
  clear: both;
  visibility: hidden;
  line-height: 0;
  height: 0;
}
 
.clearfix {
  display: inline-block;
}
 
html[xmlns] .clearfix {
  display: block;
}
 
* html .clearfix {
  height: 1%;
}





















































')
INSERT [dbo].[cmsStylesheet] ([nodeId], [filename], [content]) VALUES (1054, N'Designit_Green', N'/* incase an inverted custom gradient isn''t specified */
/*
  Mixins are slightly modified from Benjamin Doherty''s first implementations: http://gist.github.com/377912
  rgba-background mixin can now be passed an option $dir variable
*/
/* Reset --------------------------------------------------------------*/
html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, font, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td {
  margin: 0;
  padding: 0;
  border: 0;
  outline: 0;
  font-weight: inherit;
  font-style: inherit;
  font-size: 100%;
  font-family: inherit;
  vertical-align: baseline;
}

body {
  line-height: 1;
  color: black;
  background: white;
}

ol, ul {
  list-style: none;
}

table {
  border-collapse: separate;
  border-spacing: 0;
  vertical-align: middle;
}

caption, th, td {
  text-align: left;
  font-weight: normal;
  vertical-align: middle;
}

q, blockquote {
  quotes: "" "";
}
q:before, q:after, blockquote:before, blockquote:after {
  content: "";
}

a img {
  border: none;
}

/* HTML5 Reset --------------------------------------------------------------*/
article, aside, canvas, details, figcaption, figure, footer, header, hgroup, menu, nav, section, summary {
  display: block;
}

/* Typography
----------------------------------------------------------------------------------------------------*/
html {
  text-rendering: optimizeLegibility;
  -webkit-font-smoothing: antialiased;
}

.serif {
  font-family: Georgia, serif;
  font-weight: bold;
}

.sans, body, #siteDescription, .newsList h3, .hentry h2, .feedList h4 {
  font-family: "Lucida Sans", "Lucida Grande", "Lucida Sans Unicode", Verdana, sans-serif;
}

.mono, pre, code, tt {
  font-family: Monaco, Courier, monospace, sans-serif;
}

/* Body
----------------------------------------------------------------------------------------------------*/
body {
  color: #333333;
}

/* Selected text
----------------------------------------------------------------------------------------------------*/
/* -moz- must be declared separately */
::-moz-selection {
  color: white;
  background: #22ea5f;
  text-shadow: none;
}

::selection {
  color: white;
  background: #22ea5f;
  text-shadow: none;
}

/* Links
----------------------------------------------------------------------------------------------------*/
a:link, a:visited {
  color: #22ea5f;
}
a:link, a:visited, a:hover, a:active {
  outline: none;
}
a:focus, a:hover, a:active {
  color: #0c8030;
  text-decoration: none;
}

h1 a:link, h1 a:visited, h2 a:link, h2 a:visited, h3 a:link, h3 a:visited, h4 a:link, h4 a:visited, h5 a:link, h5 a:visited, h6 a:link, h6 a:visited {
  text-decoration: none;
}

/* Headings
----------------------------------------------------------------------------------------------------*/
h2, h3, h4, h5, h6 {
  font-family: Georgia, serif;
  font-weight: bold;
  margin-bottom: 1.333em;
  color: #22ea5f;
}

h1 {
  font-size: 1.75em;
  line-height: 1.524em;
  margin-bottom: 0.762em;
}

h2 {
  font-size: 1.667em;
  line-height: 1.6em;
  margin-bottom: 0.8em;
  color: #22ea5f;
}

h3 {
  font-size: 1.667em;
  line-height: 1.6em;
  margin-bottom: 0.8em;
  font-weight: bold;
}

h4, h5, h6 {
  color: #333333;
}

/* Inline
----------------------------------------------------------------------------------------------------*/
cite, em, dfn, address, i {
  font-style: italic;
}

strong, dfn, b {
  font-weight: bold;
}

sup, sub {
  font-size: smaller;
  line-height: 0;
}

sup {
  vertical-align: super;
}

sub {
  vertical-align: sub;
}

abbr, acronym {
  border-bottom: 1px dotted;
  cursor: help;
}

ins {
  text-decoration: underline;
}

del {
  text-decoration: line-through;
}

mark {
  background: #FF9;
  background-color: rgba(255, 255, 0, 0.5);
  text-shadow: none;
}

small {
  font-size: 1em;
  line-height: 1.333em;
}

q {
  font-style: italic;
}
q em {
  font-style: normal;
}

/* Block
----------------------------------------------------------------------------------------------------*/
p {
  margin-bottom: 1.333em;
}

pre {
  margin: 1.333em;
  white-space: pre;
  white-space: pre-wrap;
  white-space: pre-line;
  word-wrap: break-word;
}

blockquote {
  margin: 1.333em;
  font-style: italic;
}

/* Lists
----------------------------------------------------------------------------------------------------*/
ol, ul, dl {
  margin-bottom: 1.333em;
  margin-left: 1.333em;
}

ol {
  list-style: decimal;
}

ul {
  list-style: disc;
}
li ul {
  list-style-type: circle;
}

dt {
  margin-top: 1.333em;
  font-style: italic;
}

dd {
  padding-left: 1.333em;
}

/* Tables
----------------------------------------------------------------------------------------------------*/
/* tables still need ''cellspacing="0"'' in the markup */
table {
  margin-bottom: 1.333em;
  width: 100%;
  border-collapse: separate;
  border-spacing: 0;
}

table, td, th {
  vertical-align: top;
}

th, thead th {
  font-weight: bold;
}

th, td, caption {
  padding: 0.667em;
  text-align: left;
  font-weight: normal;
}

table, th {
  border-bottom-style: solid;
  border-bottom-width: 0.083em;
  padding-bottom: 0.583em;
}

tfoot {
  font-size: 1.167em;
  line-height: 1.143em;
}

/* Forms
----------------------------------------------------------------------------------------------------*/
#content fieldset {
  margin-bottom: 1.333em;
  border-style: solid;
  border-width: 0.083em;
  padding: 1.25em;
  -moz-border-radius: 3px;
  -webkit-border-radius: 3px;
  -o-border-radius: 3px;
  -ms-border-radius: 3px;
  -khtml-border-radius: 3px;
  border-radius: 3px;
  background: #CBCBCB;
  border: none;
}
#content fieldset p {
  margin-bottom: 0em;
}

#content legend {
  font-size: 1.167em;
  line-height: 1.143em;
  font-weight: bold;
}

#content input[type="radio"], #content input[type="checkbox"] {
  vertical-align: baseline;
}

#content label,#content  input[type=button],#content  input[type=submit],#content  button {
  cursor: pointer;
}

#content label {
  display: block;
  font-weight: bold;
}

#content .textinput,#content  textarea,#content  input[type=text],#content  input[type=password],#content  input[type=email],#content  input[type=url],#content  input[type=tel],#content  input[type=date],#content input[type=datetime], #content input[type=datetime-local], #content input[type=month], #content input[type=week], #content input[type=time], #content input[type=number], #content input[type=range], #content input[type=search], #content input[type=color] {
  font-family: "Lucida Sans", "Lucida Grande", "Lucida Sans Unicode", Verdana, sans-serif;
  font-size: 1em;
  line-height: 1.333em;
  margin-bottom: 0.667em;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  -ms-box-sizing: border-box;
  box-sizing: border-box;
  background: #FFF;
  background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, color-stop(0%, rgba(0, 0, 0, 0.1)), color-stop(100%, rgba(255, 255, 255, 0.1)));
  background-image: -moz-linear-gradient(top, rgba(0, 0, 0, 0.1) 0%, rgba(255, 255, 255, 0.1) 100%);
  background-image: linear-gradient(top, rgba(0, 0, 0, 0.1) 0%, rgba(255, 255, 255, 0.1) 100%);
  color: gray;
  margin: 0 0 10px 0;
  border: 1px solid #969696;
  border-width: 1px 0 0 1px;
  padding: 8px;
  width: 240px;
}
#content .textinput:focus, #content textarea:focus, #content input[type=text]:focus, #content input[type=password]:focus, #content input[type=email]:focus, #content input[type=url]:focus, #content input[type=tel]:focus, #content input[type=date]:focus, #content input[type=datetime]:focus, #content input[type=datetime-local]:focus, #content input[type=month]:focus, #content input[type=week]:focus, #content input[type=time]:focus, #content input[type=number]:focus, #content input[type=range]:focus, #content input[type=search]:focus, #content input[type=color]:focus {
  color: #333333;
}

#content .button, button, #content input[type="submit"] {
  font-family: "Lucida Grande", Lucida, Arial, sans_serif;
  background: url(''Designit_Green/images/button_bg.png'') repeat-x bottom left;
  margin: 0;
  width: auto;
  overflow: visible;
  display: inline-block;
  cursor: pointer;
  text-decoration: none;
  border-style: solid;
  font-weight: bold;
  -moz-border-radius: 12px;
  -webkit-border-radius: 12px;
  -o-border-radius: 12px;
  -ms-border-radius: 12px;
  -khtml-border-radius: 12px;
  border-radius: 12px;
  font-size: 12px;
  line-height: 14.4px;
  padding: 2px 10px;
  border-width: 1px;
  background-color: #ffae00;
  background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, color-stop(0%, #ffe3a8), color-stop(10%, #ffc64d), color-stop(50%, #f0a400), color-stop(50%, #e09900), color-stop(100%, #ffb414));
  background-image: -moz-linear-gradient(top, #ffe3a8 0%, #ffc64d 10%, #f0a400 50%, #e09900 50%, #ffb414 100%);
  background-image: linear-gradient(top, #ffe3a8 0%, #ffc64d 10%, #f0a400 50%, #e09900 50%, #ffb414 100%);
  border-color: #b37a00;
  text-shadow: #805700 0px 1px 1px;
  padding: 4px 8px;
  border-width: 1px;
}
.#content button::-moz-focus-inner, #content button::-moz-focus-inner, #content input[type="submit"]::-moz-focus-inner {
  border: none;
  padding: 0;
}
.#content button:focus, #content button:focus, #content input[type="submit"]:focus {
  outline: none;
}
.#content button.disabled, #content button.disabled, #content input.disabled[type="submit"], .#content button[disabled], #content button[disabled], #content input[disabled][type="submit"] {
  opacity: 0.7;
  -ms-filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=70);
  filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=70);
}
.#content button.disabled:hover, #content button.disabled:hover, #content input.disabled[type="submit"]:hover, .#content button.disabled:focus, #content button.disabled:focus, #content input.disabled[type="submit"]:focus, .#content button[disabled]:hover, #content button[disabled]:hover, #content input[disabled][type="submit"]:hover, .#content button[disabled]:focus, #content button[disabled]:focus, #content input[disabled][type="submit"]:focus {
  cursor: default;
}
.#content button:active, #content button:active, #content input[type="submit"]:active {
  padding: 1px 9px;
  border-width: 2px;
}
.#content button.disabled:active, #content button.disabled:active, #content input.disabled[type="submit"]:active, .#content button[disabled], #content button[disabled], #content input[disabled][type="submit"] {
  padding: 2px 10px;
  border-width: 1px;
}
.#content button, #content button, #content input[type="submit"], .#content button:visited, #content button:visited, #content input[type="submit"]:visited {
  color: white;
}
.#content button.disabled:active, #content button.disabled:active, #content input.disabled[type="submit"]:active, .#content button.disabled:hover, #content button.disabled:hover, #content input.disabled[type="submit"]:hover, .#content button[disabled]:active, #content button[disabled]:active, #content input[disabled][type="submit"]:active, .#content button[disabled]:hover, #content button[disabled]:hover, #content input[disabled][type="submit"]:hover {
  background-color: #ffae00;
  background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, color-stop(0%, #ffe3a8), color-stop(10%, #ffc64d), color-stop(50%, #f0a400), color-stop(50%, #e09900), color-stop(100%, #ffb414));
  background-image: -moz-linear-gradient(top, #ffe3a8 0%, #ffc64d 10%, #f0a400 50%, #e09900 50%, #ffb414 100%);
  background-image: linear-gradient(top, #ffe3a8 0%, #ffc64d 10%, #f0a400 50%, #e09900 50%, #ffb414 100%);
  border-color: #b37a00;
  text-shadow: #805700 0px 1px 1px;
}
.#content button.disabled:active, #content button.disabled:active, #content input.disabled[type="submit"]:active, .#content button.disabled:active:visited, #content button.disabled:active:visited, #content input.disabled[type="submit"]:active:visited, .#content button.disabled:hover, #content button.disabled:hover, #content input.disabled[type="submit"]:hover, .#content button.disabled:hover:visited, #content button.disabled:hover:visited, #content input.disabled[type="submit"]:hover:visited, .#content button[disabled]:active, #content button[disabled]:active, #content input[disabled][type="submit"]:active, .#content button[disabled]:active:visited, #content button[disabled]:active:visited, #content input[disabled][type="submit"]:active:visited, .#content button[disabled]:hover, #content button[disabled]:hover, #content input[disabled][type="submit"]:hover, .#content button[disabled]:hover:visited, #content button[disabled]:hover:visited, #content input[disabled][type="submit"]:hover:visited {
  color: white;
}
.#content button:hover, #content button:hover, #content input[type="submit"]:hover, .#content button:focus, #content button:focus, #content input[type="submit"]:focus {
  background-color: #f0a400;
  background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, color-stop(0%, #ffdf99), color-stop(10%, #ffc13d), color-stop(50%, #e09900), color-stop(50%, #d18f00), color-stop(100%, #ffb005));
  background-image: -moz-linear-gradient(top, #ffdf99 0%, #ffc13d 10%, #e09900 50%, #d18f00 50%, #ffb005 100%);
  background-image: linear-gradient(top, #ffdf99 0%, #ffc13d 10%, #e09900 50%, #d18f00 50%, #ffb005 100%);
  border-color: #a36f00;
  text-shadow: #704d00 0px 1px 1px;
}
.#content button:hover, #content button:hover, #content input[type="submit"]:hover, .#content button:hover:visited, #content button:hover:visited, #content input[type="submit"]:hover:visited, .#content button:focus, #content button:focus, #content input[type="submit"]:focus, .#content button:focus:visited, #content button:focus:visited, #content input[type="submit"]:focus:visited {
  color: white;
}
.#content button:active, #content button:active, #content input[type="submit"]:active {
  background-color: #e09900;
  background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, color-stop(0%, #e09900), color-stop(30%, #eba000), color-stop(50%, #d69200), color-stop(50%, #c78800), color-stop(100%, #ffb10a));
  background-image: -moz-linear-gradient(top, #e09900 0%, #eba000 30%, #d69200 50%, #c78800 50%, #ffb10a 100%);
  background-image: linear-gradient(top, #e09900 0%, #eba000 30%, #d69200 50%, #c78800 50%, #ffb10a 100%);
  border-color: #946500;
  text-shadow: #614200 0px -1px -1px;
}
.#content button:active, #content button:active, #content input[type="submit"]:active, .#content button:active:visited, #content button:active:visited, #content input[type="submit"]:active:visited {
  color: white;
}
.#content button:active, #content button:active, #content input[type="submit"]:active {
  padding: 3px 7px;
  border-width: 2px;
}
.#content button.disabled:active, #content button.disabled:active, #content input.disabled[type="submit"]:active, .#content button[disabled], #content button[disabled], #content input[disabled][type="submit"] {
  padding: 4px 8px;
  border-width: 1px;
}

#content button, #content input[type="submit"] {
  float: right;
}

#content textarea {
  min-height: 138px;
  height: auto !important;
  height: 138px;
  height: 7.429em;
  vertical-align: text-bottom;
  width: 100%;
}

#content button {
  width: auto;
  overflow: visible;
}

/* Misc
----------------------------------------------------------------------------------------------------*/
.date, .newsList small, .hentry .entry-date, .feedList small {
  -moz-border-radius: 3px;
  -webkit-border-radius: 3px;
  -o-border-radius: 3px;
  -ms-border-radius: 3px;
  -khtml-border-radius: 3px;
  border-radius: 3px;
  background: url(''Designit_Green/images/rgbapng/00000033.png?1290067008'');
  background: rgba(0, 0, 0, 0.2);
  background: rgba(0, 0, 0, 0.2);
  color: #FFF;
  float: left;
  margin-right: 10px;
  margin-left: 30px;
  width: 100px;
}

.hidden {
  display: none;
}

.invisible, #comments h3 {
  position: absolute !important;
  clip: rect(1px 1px 1px 1px);
  /* IE6, IE7 */
  clip: rect(1px, 1px, 1px, 1px);
}

body {
  font-size: 75%;
  line-height: 1.333em;
}

html > body {
  font-size: 12px;
}

/* Layout
----------------------------------------------------------------------------------------------------*/
html {
  background: url(Designit_Green/images/background.jpg) center top repeat-x;
}

body {
  background: url(Designit_Green/images/main.png) center top no-repeat;
  padding-top: 43px;
}

#main {
  margin-top: 2.667em;
  *zoom: 1;
  margin-left: auto;
  margin-right: auto;
  width: 730px;
  max-width: 100%;
  background: url(''Designit_Green/images/rgbapng/ffffffb3.png?1290067007'');
  background: rgba(255, 255, 255, 0.7);
}
#main:after {
  content: "\0020";
  display: block;
  height: 0;
  clear: both;
  overflow: hidden;
  visibility: hidden;
}

#content {
  clear: both;
  margin-right: 4.11%;
  margin-left: 4.11%;
  padding-bottom: 4em;
}

/* Header
----------------------------------------------------------------------------------------------------*/
#top {
  position: relative;
}

#siteName {
  position: absolute;
  left: -147px;
  top: -38px;
  margin: 0;
}
#siteName a {
  text-indent: -119988px;
  overflow: hidden;
  text-align: left;
  background-image: url(''Designit_Green/images/logo.png'');
  background-repeat: no-repeat;
  background-position: 50% 50%;
  width: 117px;
  height: 119px;
  display: block;
}

#siteDescription {
  -moz-box-shadow: rgba(0, 0, 0, 0.3) 0 0 6px 0;
  -webkit-box-shadow: rgba(0, 0, 0, 0.3) 0 0 6px 0;
  -o-box-shadow: rgba(0, 0, 0, 0.3) 0 0 6px 0;
  box-shadow: rgba(0, 0, 0, 0.3) 0 0 6px 0;
  clear: both;
  margin-right: 4.11%;
  margin-left: 4.11%;
  background: url(''Designit_Green/images/header.jpg'') no-repeat;
  border: 4px solid #FFF;
  font-weight: normal;
  position: relative;
  height: 222px;
  width: 662px;
  font-size: 2.667em;
  line-height: 1em;
}
#siteDescription span {
  -moz-border-radius: 5px;
  -webkit-border-radius: 5px;
  -o-border-radius: 5px;
  -ms-border-radius: 5px;
  -khtml-border-radius: 5px;
  border-radius: 5px;
  text-shadow: rgba(0, 0, 0, 0.25) -1px -1px 0;
  background: url(''Designit_Green/images/rgbapng/22ea5fcc.png?1290067008'');
  background: rgba(34, 234, 95, 0.8);
  background-image: url(''Designit_Green/images/pattern.png?1288163556''), -webkit-gradient(linear, 0% 0%, 0% 100%, color-stop(0%, rgba(0, 0, 0, 0.1)), color-stop(100%, rgba(255, 255, 255, 0.1)));
  background-image: url(''Designit_Green/images/pattern.png?1288163556''), -moz-linear-gradient(top, rgba(0, 0, 0, 0.1) 0%, rgba(255, 255, 255, 0.1) 100%);
  background-image: linear-gradient(top, rgba(0, 0, 0, 0.1) 0%, rgba(255, 255, 255, 0.1) 100%);
  color: #FFF;
  padding: 15px;
  position: absolute;
  bottom: 15px;
  left: 15px;
}

/* Navigation
----------------------------------------------------------------------------------------------------*/
#top ul {
  margin: 0;
  padding: 0;
  border: 0;
  outline: 0;
  padding-bottom: 5.333em;
  background: url(Designit_Green/images/nav.png) no-repeat;
  margin-left: -4px;
  width: 738px;
}
#top ul:after {
  content: ".";
  display: block;
  font-size: 0;
  height: 0;
  clear: both;
  visibility: hidden;
}
* html #top ul {
  zoom: 1;
}
*:first-child + html #top ul {
  zoom: 1;
}
#top ul li {
  list-style-image: none;
  list-style-type: none;
  margin-left: 0px;
  white-space: nowrap;
  display: inline;
  float: left;
  padding-left: 0;
  padding-right: 0;
}
#top ul li:first-child, #top ul li.first {
  padding-left: 0px;
}
#top ul li:last-child, #top ul li.last {
  padding-right: 0px;
}
#top ul li {
  background: url(Designit_Green/images/nav-item.png) left top no-repeat;
}
#top ul li:first-child {
  background: none;
  margin-left: 4px;
}
#top ul a:link, #top ul a:visited {
  font-size: 1.333em;
  line-height: 1em;
  text-shadow: rgba(0, 0, 0, 0.25) -1px -1px 0;
  color: #FFF;
  display: block;
  line-height: 2.438em;
  padding: 0 0.938em 3px 0.938em;
  text-align: center;
  text-decoration: none;
}
#top ul a:hover, #top ul a:focus {
  background: url(Designit_Green/images/nav-item-active.png) left top repeat-x;
}
#top ul li.current a {
  background: url(Designit_Green/images/nav-item-active.png) left top repeat-x;
}

#subNavigation {
  margin-bottom: 1.333em;
  -moz-border-radius: 3px;
  -webkit-border-radius: 3px;
  -o-border-radius: 3px;
  -ms-border-radius: 3px;
  -khtml-border-radius: 3px;
  border-radius: 3px;
  background: url(''Designit_Green/images/rgbapng/33333333.png?1290067007'');
  background: rgba(51, 51, 51, 0.2);
  background-image: -webkit-gradient(linear, 0% 100%, 0% 0%, color-stop(0%, rgba(0, 0, 0, 0.25)), color-stop(100%, rgba(255, 255, 255, 0.25)));
  background-image: -moz-linear-gradient(bottom, rgba(0, 0, 0, 0.25) 0%, rgba(255, 255, 255, 0.25) 100%);
  background-image: linear-gradient(bottom, rgba(0, 0, 0, 0.25) 0%, rgba(255, 255, 255, 0.25) 100%);
  padding: 7.5px 15px;
}
#subNavigation ul {
  margin: 0;
  padding: 0;
  border: 0;
  outline: 0;
}
#subNavigation ul:after {
  content: ".";
  display: block;
  font-size: 0;
  height: 0;
  clear: both;
  visibility: hidden;
}
* html #subNavigation ul {
  zoom: 1;
}
*:first-child + html #subNavigation ul {
  zoom: 1;
}
#subNavigation ul li {
  list-style-image: none;
  list-style-type: none;
  margin-left: 0px;
  white-space: nowrap;
  display: inline;
  float: left;
  padding-left: 15px;
  padding-right: 15px;
}
#subNavigation ul li:first-child, #subNavigation ul li.first {
  padding-left: 0px;
}
#subNavigation ul li:last-child, #subNavigation ul li.last {
  padding-right: 0px;
}
#subNavigation li {
  border-right: 1px solid #585858;
}
#subNavigation li:last-child {
  border: none;
}
#subNavigation a:link, #subNavigation a:visited {
  color: #333333;
  display: block;
  text-decoration: none;
}

/* Footer
----------------------------------------------------------------------------------------------------*/
#footer-wrapper {
  min-height: 200px;
  height: auto !important;
  height: 200px;
  background-color: #4B5557;
  background-image: url(''Designit_Green/images/pattern.png?1288163556''), -webkit-gradient(linear, 0% 0%, 0% 100%, color-stop(0%, #4b5557), color-stop(100%, #656f71));
  background-image: url(''Designit_Green/images/pattern.png?1288163556''), -moz-linear-gradient(top, #4b5557 0%, #656f71 100%);
  background-image: linear-gradient(top, #4b5557 0%, #656f71 100%);
  position: relative;
}

#footer {
  *zoom: 1;
  margin-left: auto;
  margin-right: auto;
  width: 730px;
  max-width: 100%;
  font-size: 0.917em;
  line-height: 1.455em;
  background: url(Designit_Green/images/footer.png) center top no-repeat;
  height: 119px;
  width: 694px;
  padding: 60px 30px 0 30px;
  position: relative;
  top: -40px;
}
#footer:after {
  content: "\0020";
  display: block;
  height: 0;
  clear: both;
  overflow: hidden;
  visibility: hidden;
}
#footer .address {
  float: left;
}
#footer ul {
  margin: 0;
  padding: 0;
  border: 0;
  outline: 0;
  float: right;
}
#footer ul:after {
  content: ".";
  display: block;
  font-size: 0;
  height: 0;
  clear: both;
  visibility: hidden;
}
* html #footer ul {
  zoom: 1;
}
*:first-child + html #footer ul {
  zoom: 1;
}
#footer ul li {
  list-style-image: none;
  list-style-type: none;
  margin-left: 0px;
  white-space: nowrap;
  display: inline;
  float: left;
  padding-left: 7.5px;
  padding-right: 7.5px;
}
#footer ul li:first-child, #footer ul li.first {
  padding-left: 0px;
}
#footer ul li:last-child, #footer ul li.last {
  padding-right: 0px;
}
#footer a:link, #footer a:visited {
  color: #333333;
  text-decoration: none;
}
#footer a:hover, #footer a:focus, #footer a:active {
  text-decoration: underline;
}
#footer p {
  margin-bottom: 0em;
}
#footer p strong, #footer p span {
  padding-right: 7.5px;
}
#footer .credits {
  clear: both;
  display: block;
  padding-top: 30px;
}
#footer .credits a {
  color: #999;
}

/* Gallery
----------------------------------------------------------------------------------------------------*/
.runwayGallery {
  list-style: none;
  margin: 0;
  padding: 0;
  border: 0;
  outline: 0;
  margin: 0;
}
.runwayGallery li {
  list-style-image: none;
  list-style-type: none;
  margin-left: 0px;
}
.runwayGallery:after {
  content: ".";
  display: block;
  font-size: 0;
  height: 0;
  clear: both;
  visibility: hidden;
}
* html .runwayGallery {
  zoom: 1;
}
*:first-child + html .runwayGallery {
  zoom: 1;
}
.runwayGallery li {
  list-style-image: none;
  list-style-type: none;
  margin-left: 0px;
  white-space: nowrap;
  display: inline;
  float: left;
  padding-left: 0;
  padding-right: 0;
}
.runwayGallery li:first-child, .runwayGallery li.first {
  padding-left: 0px;
}
.runwayGallery li:last-child, .runwayGallery li.last {
  padding-right: 0px;
}
.runwayGallery li {
  margin: 0 23.333px 23.333px 0;
}
.runwayGallery li:nth-child(4n) {
  margin-right: 0;
}
.runwayGallery a {
  text-decoration: none;
}
.runwayGallery img {
  -moz-box-shadow: rgba(0, 0, 0, 0.5) 0 0 4px 0;
  -webkit-box-shadow: rgba(0, 0, 0, 0.5) 0 0 4px 0;
  -o-box-shadow: rgba(0, 0, 0, 0.5) 0 0 4px 0;
  box-shadow: rgba(0, 0, 0, 0.5) 0 0 4px 0;
  background: #333333;
  border: 2px solid #FFF;
  width: 150px;
  height: 116px;
}

/* News
----------------------------------------------------------------------------------------------------*/
.newsList .newsItem {
  -moz-border-radius: 3px;
  -webkit-border-radius: 3px;
  -o-border-radius: 3px;
  -ms-border-radius: 3px;
  -khtml-border-radius: 3px;
  border-radius: 3px;
  margin-bottom: 2.667em;
  background: url(''Designit_Green/images/rgbapng/00000066.png?1290067007'');
  background: rgba(0, 0, 0, 0.4);
  background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, color-stop(0%, rgba(0, 0, 0, 0.25)), color-stop(100%, rgba(255, 255, 255, 0.25)));
  background-image: -moz-linear-gradient(top, rgba(0, 0, 0, 0.25) 0%, rgba(255, 255, 255, 0.25) 100%);
  background-image: linear-gradient(top, rgba(0, 0, 0, 0.25) 0%, rgba(255, 255, 255, 0.25) 100%);
  color: #FFF;
  padding: 15px;
}
.newsList .newsItem:after {
  content: ".";
  display: block;
  font-size: 0;
  height: 0;
  clear: both;
  visibility: hidden;
}
* html .newsList .newsItem {
  zoom: 1;
}
*:first-child + html .newsList .newsItem {
  zoom: 1;
}
.newsList .newsItem:last-child {
  margin-bottom: 0em;
}
.newsList h3 {
  font-size: 1.167em;
  line-height: 1.143em;
  background: url(Designit_Green/images/news-item-icon.png) left center no-repeat;
  padding-left: 30px;
}
.newsList a {
  color: #FFF;
}
.newsList p {
  margin-bottom: 0em;
  float: left;
  width: 500px;
}

/* Blog
----------------------------------------------------------------------------------------------------*/
.hentry {
  margin-top: 1.333em;
  -moz-border-radius: 3px;
  -webkit-border-radius: 3px;
  -o-border-radius: 3px;
  -ms-border-radius: 3px;
  -khtml-border-radius: 3px;
  border-radius: 3px;
  background: url(''Designit_Green/images/rgbapng/00000066.png?1290067007'');
  background: rgba(0, 0, 0, 0.4);
  background-image: -webkit-gradient(linear, 0% 100%, 0% 0%, color-stop(0%, rgba(0, 0, 0, 0.25)), color-stop(100%, rgba(255, 255, 255, 0.25)));
  background-image: -moz-linear-gradient(bottom, rgba(0, 0, 0, 0.25) 0%, rgba(255, 255, 255, 0.25) 100%);
  background-image: linear-gradient(bottom, rgba(0, 0, 0, 0.25) 0%, rgba(255, 255, 255, 0.25) 100%);
  color: #FFF;
  padding: 15px;
}
.hentry h2 {
  font-size: 1.167em;
  line-height: 1.143em;
  background: url(Designit_Green/images/blog-post-icon.png) left center no-repeat;
  color: #FFF;
  padding-left: 30px;
}
.hentry a {
  color: #FFF;
}
.hentry abbr {
  border: none;
}
.hentry .entry-content {
  float: right;
  width: 500px;
}
.hentry .entry-meta {
  clear: both;
  padding-left: 140px;
  border-top-style: solid;
  border-top-width: 0.083em;
  padding-top: 1.25em;
  border-color: #FFF;
  border-color: rgba(255, 255, 255, 0.4);
}

/* Comments
----------------------------------------------------------------------------------------------------*/
#comments {
  -moz-border-radius: 0 0 3px 3px;
  -webkit-border-radius: 0 0 3px 3px;
  -o-border-radius: 0 0 3px 3px;
  -ms-border-radius: 0 0 3px 3px;
  -khtml-border-radius: 0 0 3px 3px;
  border-radius: 0 0 3px 3px;
  background: url(''Designit_Green/images/rgbapng/00000033.png?1290067008'');
  background: rgba(0, 0, 0, 0.2);
  background: rgba(0, 0, 0, 0.2);
  margin: 0 20px;
}
#comments:after {
  content: ".";
  display: block;
  font-size: 0;
  height: 0;
  clear: both;
  visibility: hidden;
}
* html #comments {
  zoom: 1;
}
*:first-child + html #comments {
  zoom: 1;
}
#comments h3 {
  font-size: 1.167em;
  line-height: 1.143em;
  color: #333333;
  margin-left: 20px;
}

.commentlist {
  list-style: none;
  margin: 0;
}

.comment {
  border-bottom: 1px solid #FFF;
  padding: 20px;
}
.comment p {
  clear: both;
}
.comment p:last-child {
  margin-bottom: 0;
}
.comment a:link, .comment a:visited {
  color: #333333;
}
.comment .comment-author img {
  float: left;
  margin-right: 10px;
}
.comment .comment-meta {
  margin-bottom: 1.333em;
  float: left;
}

#respond {
  padding: 20px;
}
#respond:after {
  content: ".";
  display: block;
  font-size: 0;
  height: 0;
  clear: both;
  visibility: hidden;
}
* html #respond {
  zoom: 1;
}
*:first-child + html #respond {
  zoom: 1;
}

/* Summaries
----------------------------------------------------------------------------------------------------*/
#newsSummary,
#blogSummary,
.feedList {
  -moz-border-radius: 5px;
  -webkit-border-radius: 5px;
  -o-border-radius: 5px;
  -ms-border-radius: 5px;
  -khtml-border-radius: 5px;
  border-radius: 5px;
  list-style: none;
  margin-left: 0;
  background: url(''Designit_Green/images/rgbapng/00000066.png?1290067007'');
  background: rgba(0, 0, 0, 0.4);
  background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, color-stop(0%, rgba(0, 0, 0, 0.25)), color-stop(100%, rgba(255, 255, 255, 0.25)));
  background-image: -moz-linear-gradient(top, rgba(0, 0, 0, 0.25) 0%, rgba(255, 255, 255, 0.25) 100%);
  background-image: linear-gradient(top, rgba(0, 0, 0, 0.25) 0%, rgba(255, 255, 255, 0.25) 100%);
  color: #FFF;
}
#newsSummary li,
#blogSummary li,
.feedList li {
  list-style-image: none;
  list-style-type: none;
  margin-left: 0px;
}
#newsSummary li,
#blogSummary li,
.feedList li {
  border-top: 1px solid #C4C5C5;
  border-bottom: 1px solid #808181;
  padding: 7.5px 15px;
}
#newsSummary li:after,
#blogSummary li:after,
.feedList li:after {
  content: ".";
  display: block;
  font-size: 0;
  height: 0;
  clear: both;
  visibility: hidden;
}
* html #newsSummary li, * html
#blogSummary li, * html
.feedList li {
  zoom: 1;
}
*:first-child + html #newsSummary li, *:first-child + html
#blogSummary li, *:first-child + html
.feedList li {
  zoom: 1;
}
#newsSummary li:first-child,
#blogSummary li:first-child,
.feedList li:first-child {
  border-top: none;
}
#newsSummary li:last-child,
#blogSummary li:last-child,
.feedList li:last-child {
  border-bottom: none;
}
#newsSummary a,
#blogSummary a,
.feedList a {
  background: url(Designit_Green/images/news-item-icon.png) left center no-repeat;
  color: #FFF;
  display: block;
  font-weight: bold;
  padding-left: 30px;
  text-decoration: none;
}
#newsSummary a:hover, #newsSummary a:focus, #newsSummary a:active,
#blogSummary a:hover,
#blogSummary a:focus,
#blogSummary a:active,
.feedList a:hover,
.feedList a:focus,
.feedList a:active {
  text-decoration: underline;
}

#blogSummary a {
  background-image: url(Designit_Green/images/blog-post-icon.png);
}

.feedList {
  background: #ffae00;
  background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, color-stop(0%, #ffae00), color-stop(100%, #b37a00));
  background-image: -moz-linear-gradient(top, #ffae00 0%, #b37a00 100%);
  background-image: linear-gradient(top, #ffae00 0%, #b37a00 100%);
}
.feedList li {
  border-top-color: #fbca66;
  border-bottom-color: #c68600;
  border-top-color: rgba(255, 255, 255, 0.4);
  border-bottom-color: rgba(0, 0, 0, 0.2);
}
.feedList a {
  background-image: url(Designit_Green/images/feed-item-icon.png);
}
.feedList p {
  margin-bottom: 0em;
  float: right;
  width: 500px;
}
')
/****** Object:  Table [dbo].[cmsTagRelationship]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[cmsTagRelationship](
	[nodeId] [int] NOT NULL,
	[tagId] [int] NOT NULL,
 CONSTRAINT [PK_cmsTagRelationship] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC,
	[tagId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
/****** Object:  Table [dbo].[cmsContentType]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[cmsContentType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[alias] [nvarchar](255) NULL,
	[icon] [nvarchar](255) NULL,
	[thumbnail] [nvarchar](255) NOT NULL,
	[description] [nvarchar](1500) NULL,
	[masterContentType] [int] NULL,
 CONSTRAINT [PK_cmsContentType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_cmsContentType] UNIQUE NONCLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
CREATE NONCLUSTERED INDEX [IX_Icon] ON [dbo].[cmsContentType] 
(
	[nodeId] ASC,
	[icon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
\go
SET IDENTITY_INSERT [dbo].[cmsContentType] ON
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [masterContentType]) VALUES (532, 1031, N'Folder', N'folder.gif', N'folder.png', NULL, NULL)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [masterContentType]) VALUES (533, 1032, N'Image', N'mediaPhoto.gif', N'folder.png', NULL, NULL)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [masterContentType]) VALUES (534, 1033, N'File', N'mediaMulti.gif', N'folder.png', NULL, NULL)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [masterContentType]) VALUES (535, 1047, N'umbHomepage', N'.sprTreeFolder', N'folder.png', N'The homepage of a starter kit website.', 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [masterContentType]) VALUES (536, 1048, N'umbTextpage', N'.sprTreeDoc', N'doc.png', N'This is the standard content page for a starter kit website.', 0)
SET IDENTITY_INSERT [dbo].[cmsContentType] OFF
/****** Object:  Table [dbo].[cmsContent]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[cmsContent](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[contentType] [int] NOT NULL,
 CONSTRAINT [PK_cmsContent] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_cmsContent] UNIQUE NONCLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
SET IDENTITY_INSERT [dbo].[cmsContent] ON
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (1, 1050, 1047)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (2, 1051, 1048)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (3, 1052, 1048)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (4, 1053, 1048)
SET IDENTITY_INSERT [dbo].[cmsContent] OFF
/****** Object:  Table [dbo].[cmsDataType]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
SET ANSI_PADDING ON
\go
CREATE TABLE [dbo].[cmsDataType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[controlId] [uniqueidentifier] NOT NULL,
	[dbType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_cmsDataType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_cmsDataType] UNIQUE NONCLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
SET ANSI_PADDING OFF
\go
SET IDENTITY_INSERT [dbo].[cmsDataType] ON
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (4, -49, N'38b352c1-e9f8-4fd8-9324-9a2eab06d97a', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (6, -51, N'1413afcb-d19a-4173-8e9a-68288d2a73b8', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (8, -87, N'5e9b75ae-face-41c8-b47e-5f4b0fd82f83', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (9, -88, N'ec15c1e5-9d90-422a-aa52-4f7622c63bea', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (10, -89, N'67db8357-ef57-493e-91ac-936d305e0f2a', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (11, -90, N'5032a6e6-69e3-491d-bb28-cd31cd11086c', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (13, -92, N'6c738306-4c17-4d88-b9bd-6546f3771597', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (14, -36, N'b6fb1622-afa5-4bbf-a3cc-d9672a442222', N'Date')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (15, -37, N'f8d60f68-ec59-4974-b43b-c46eb5677985', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (16, -38, N'cccd4ae9-f399-4ed2-8038-2e88d19e810c', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (17, -39, N'928639ed-9c73-4028-920c-1e55dbb68783', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (18, -40, N'a52c7c1c-c330-476e-8605-d63d3b84b6a6', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (19, -41, N'23e93522-3200-44e2-9f29-e61a6fcbb79a', N'Date')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (20, -42, N'a74ea9c9-8e18-4d2a-8cf6-73c6206c5da6', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (21, -43, N'b4471851-82b6-4c75-afa4-39fa9c6a75e9', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (31, 1034, N'158aa029-24ed-4948-939e-c3da209e5fba', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (32, 1035, N'ead69342-f06d-4253-83ac-28000225583b', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (33, 1036, N'39f533e4-0551-4505-a64b-e0425c5ce775', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (35, 1038, N'60b7dabf-99cd-41eb-b8e9-4d2e669bbde9', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (36, 1039, N'cdbf0b5d-5cb2-445f-bc12-fcaaec07cf2c', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (37, 1040, N'71b8ad1a-8dc2-425c-b6b8-faa158075e63', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (38, 1041, N'4023e540-92f5-11dd-ad8b-0800200c9a66', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (39, 1042, N'474fcff8-9d2d-11de-abc6-ad7a56d89593', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (40, 1043, N'7a2d436c-34c2-410f-898f-4a23b3d79f54', N'Ntext')
SET IDENTITY_INSERT [dbo].[cmsDataType] OFF
/****** Object:  Table [dbo].[cmsLanguageText]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[cmsLanguageText](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[languageId] [int] NOT NULL,
	[UniqueId] [uniqueidentifier] NOT NULL,
	[value] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_cmsLanguageText] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
/****** Object:  Table [dbo].[umbracoDomains]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[umbracoDomains](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[domainDefaultLanguage] [int] NULL,
	[domainRootStructureID] [int] NULL,
	[domainName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_domains] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
/****** Object:  Table [dbo].[umbracoAppTree]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[umbracoAppTree](
	[treeSilent] [bit] NOT NULL,
	[treeInitialize] [bit] NOT NULL,
	[treeSortOrder] [tinyint] NOT NULL,
	[appAlias] [nvarchar](50) NOT NULL,
	[treeAlias] [nvarchar](150) NOT NULL,
	[treeTitle] [nvarchar](255) NOT NULL,
	[treeIconClosed] [nvarchar](255) NOT NULL,
	[treeIconOpen] [nvarchar](255) NOT NULL,
	[treeHandlerAssembly] [nvarchar](255) NOT NULL,
	[treeHandlerType] [nvarchar](255) NOT NULL,
	[action] [nvarchar](255) NULL,
 CONSTRAINT [PK_umbracoAppTree] PRIMARY KEY CLUSTERED 
(
	[appAlias] ASC,
	[treeAlias] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (1, 1, 0, N'content', N'content', N'Indhold', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadContent', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 0, 0, N'content', N'contentRecycleBin', N'RecycleBin', N'folder.gif', N'folder_o.gif', N'umbraco', N'cms.presentation.Trees.ContentRecycleBin', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 0, N'developer', N'cacheBrowser', N'CacheBrowser', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadCache', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 0, 0, N'developer', N'CacheItem', N'Cachebrowser', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadCacheItem', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 1, N'developer', N'datatype', N'Datatyper', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadDataTypes', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 2, N'developer', N'macros', N'Macros', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadMacros', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 3, N'developer', N'packager', N'Packages', N'folder.gif', N'folder_o.gif', N'umbraco', N'loadPackager', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 0, 1, N'developer', N'packagerPackages', N'Packager Packages', N'folder.gif', N'folder_o.gif', N'umbraco', N'loadPackages', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 4, N'developer', N'python', N'Python Files', N'folder.gif', N'folder_o.gif', N'umbraco', N'loadPython', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 5, N'developer', N'xslt', N'XSLT Files', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadXslt', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 0, N'media', N'media', N'Medier', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadMedia', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 0, 0, N'media', N'mediaRecycleBin', N'RecycleBin', N'folder.gif', N'folder_o.gif', N'umbraco', N'cms.presentation.Trees.MediaRecycleBin', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 0, N'member', N'member', N'Medlemmer', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadMembers', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 1, N'member', N'memberGroup', N'MemberGroups', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadMemberGroups', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 2, N'member', N'memberType', N'Medlemstyper', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadMemberTypes', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 3, N'settings', N'dictionary', N'Dictionary', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadDictionary', N'openDictionary()')
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 4, N'settings', N'languages', N'Languages', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadLanguages', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 5, N'settings', N'mediaTypes', N'Medietyper', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadMediaTypes', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 6, N'settings', N'nodeTypes', N'Dokumenttyper', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadNodeTypes', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 2, N'settings', N'scripts', N'Scripts', N'folder.gif', N'folder_o.gif', N'umbraco', N'loadScripts', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 0, 0, N'settings', N'stylesheetProperty', N'Stylesheet Property', N'', N'', N'umbraco', N'loadStylesheetProperty', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 0, N'settings', N'stylesheets', N'Stylesheets', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadStylesheets', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 1, N'settings', N'templates', N'Templates', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadTemplates', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 1, N'translation', N'openTasks', N'Tasks assigned to you', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadOpenTasks', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 2, N'translation', N'yourTasks', N'Tasks created by you', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadYourTasks', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 2, N'users', N'userPermissions', N'User Permissions', N'folder.gif', N'folder_o.gif', N'umbraco', N'cms.presentation.Trees.UserPermissions', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 0, N'users', N'users', N'Brugere', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadUsers', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 1, N'users', N'userTypes', N'User Types', N'folder.gif', N'folder_o.gif', N'umbraco', N'cms.presentation.Trees.UserTypes', NULL)
/****** Object:  Table [dbo].[cmsTemplate]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[cmsTemplate](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[master] [int] NULL,
	[alias] [nvarchar](100) NULL,
	[design] [ntext] NOT NULL,
 CONSTRAINT [PK_templates] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_cmsTemplate] UNIQUE NONCLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
\go
SET IDENTITY_INSERT [dbo].[cmsTemplate] ON
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (1, 1044, 1045, N'umbHomepage', N'<%@ Master Language="C#" MasterPageFile="~/masterpages/umbMaster.master" AutoEventWireup="true" %>
<asp:Content ContentPlaceHolderID="cp_content" runat="server">
  <div id="content" class="frontPage">
    <umbraco:Item runat="server" field="bodyText"/>
  </div>
</asp:Content>')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (2, 1045, NULL, N'umbMaster', N'<%@ Master Language="C#" MasterPageFile="~/umbraco/masterpages/default.master" AutoEventWireup="true" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolderDefault" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"[]> 
<html xmlns="http://www.w3.org/1999/xhtml">
  <head id="head" runat="server">
    
  
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
  <title><asp:placeholder runat="server"><umbraco:Item runat="server" field="pageName" /> - <umbraco:Item runat="server" field="siteName" recursive="true" /></asp:placeholder></title>
    
  <link rel="stylesheet" type="text/css" href="/css/Starterkit.css" /> 
  
  <umbraco:Macro Alias="BlogRssFeedLink" runat="server"></umbraco:Macro>
    
  <asp:contentplaceholder id="cp_head" runat="server" />
</head>
  <body>    
    <div id="main">
      
      <asp:contentplaceholder id="cp_top" runat="server">
        <div id="top">
          <h1 id="siteName"><a href="/"><umbraco:Item runat="server" field="siteName" recursive="true" /></a></h1>
          <h2 id="siteDescription"><umbraco:Item runat="server" field="siteDescription" recursive="true" /></h2>
        
          <umbraco:Macro Alias="umbTopNavigation" runat="server" />
        </div>
      </asp:contentplaceholder>
            
      <div id="body" class="clearfix">
          <form id="RunwayMasterForm" runat="server">
            <asp:ContentPlaceHolder ID="cp_content" runat="server"></asp:ContentPlaceHolder>
          </form>
      </div> 
      
      <asp:contentplaceholder id="cp_footer" runat="server">
        <div id="footer"></div>
      </asp:contentplaceholder>
    </div>
  </body>
</html> 
</asp:content>')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (3, 1046, 1045, N'umbTextpage', N'<%@ Master Language="C#" MasterPageFile="~/masterpages/umbMaster.master" AutoEventWireup="true" %>
<asp:Content ContentPlaceHolderID="cp_content" runat="server">

<div id="content" class="textpage">
  
      <div id="contentHeader">  
          <h2><umbraco:Item runat="server" field="pageName"/></h2>
      </div>
      
      <umbraco:Item runat="server" field="bodyText" />
</div>

<div id="subNavigation">
      <umbraco:Macro Alias="umb2ndLevelNavigation" runat="server"></umbraco:Macro>
</div>
  

</asp:Content>')
SET IDENTITY_INSERT [dbo].[cmsTemplate] OFF
/****** Object:  Table [dbo].[umbracoRelation]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[umbracoRelation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parentId] [int] NOT NULL,
	[childId] [int] NOT NULL,
	[relType] [int] NOT NULL,
	[datetime] [datetime] NOT NULL,
	[comment] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_umbracoRelation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
/****** Object:  Table [dbo].[umbracoUser]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[umbracoUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userDisabled] [bit] NOT NULL,
	[userNoConsole] [bit] NOT NULL,
	[userType] [smallint] NOT NULL,
	[startStructureID] [int] NOT NULL,
	[startMediaID] [int] NULL,
	[userName] [nvarchar](255) NOT NULL,
	[userLogin] [nvarchar](125) NOT NULL,
	[userPassword] [nvarchar](125) NOT NULL,
	[userEmail] [nvarchar](255) NOT NULL,
	[userDefaultPermissions] [nvarchar](50) NULL,
	[userLanguage] [nvarchar](10) NULL,
	[defaultToLiveEditing] [bit] NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_umbracoUser] UNIQUE NONCLUSTERED 
(
	[userLogin] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
SET IDENTITY_INSERT [dbo].[umbracoUser] ON
INSERT [dbo].[umbracoUser] ([id], [userDisabled], [userNoConsole], [userType], [startStructureID], [startMediaID], [userName], [userLogin], [userPassword], [userEmail], [userDefaultPermissions], [userLanguage], [defaultToLiveEditing]) VALUES (0, 0, 0, 1, -1, -1, N'atomia-admin-name', N'atomia-admin-user', N'atomia-admin-pass', N'atomia-site-email@example.com', NULL, N'en', 0)
SET IDENTITY_INSERT [dbo].[umbracoUser] OFF
/****** Object:  Table [dbo].[umbracoUser2NodePermission]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
SET ANSI_PADDING ON
\go
CREATE TABLE [dbo].[umbracoUser2NodePermission](
	[userId] [int] NOT NULL,
	[nodeId] [int] NOT NULL,
	[permission] [char](1) NOT NULL,
 CONSTRAINT [PK_umbracoUser2NodePermission] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[nodeId] ASC,
	[permission] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
SET ANSI_PADDING OFF
\go
/****** Object:  Table [dbo].[umbracoUser2NodeNotify]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
SET ANSI_PADDING ON
\go
CREATE TABLE [dbo].[umbracoUser2NodeNotify](
	[userId] [int] NOT NULL,
	[nodeId] [int] NOT NULL,
	[action] [char](1) NOT NULL,
 CONSTRAINT [PK_umbracoUser2NodeNotify] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[nodeId] ASC,
	[action] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
SET ANSI_PADDING OFF
\go
/****** Object:  Table [dbo].[umbracoUser2app]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[umbracoUser2app](
	[user] [int] NOT NULL,
	[app] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_user2app] PRIMARY KEY CLUSTERED 
(
	[user] ASC,
	[app] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'content')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'developer')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'media')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'member')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'settings')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'users')
/****** Object:  Table [dbo].[cmsTask]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[cmsTask](
	[closed] [bit] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[taskTypeId] [tinyint] NOT NULL,
	[nodeId] [int] NOT NULL,
	[parentUserId] [int] NOT NULL,
	[userId] [int] NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[Comment] [nvarchar](500) NULL,
 CONSTRAINT [PK_cmsTask] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
/****** Object:  Table [dbo].[cmsDocumentType]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[cmsDocumentType](
	[contentTypeNodeId] [int] NOT NULL,
	[templateNodeId] [int] NOT NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_cmsDocumentType] PRIMARY KEY CLUSTERED 
(
	[contentTypeNodeId] ASC,
	[templateNodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1047, 1044, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1048, 1046, 1)
/****** Object:  Table [dbo].[cmsDocument]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[cmsDocument](
	[nodeId] [int] NOT NULL,
	[published] [bit] NOT NULL,
	[documentUser] [int] NOT NULL,
	[versionId] [uniqueidentifier] NOT NULL,
	[text] [nvarchar](255) NOT NULL,
	[releaseDate] [datetime] NULL,
	[expireDate] [datetime] NULL,
	[updateDate] [datetime] NOT NULL,
	[templateId] [int] NULL,
	[alias] [nvarchar](255) NULL,
	[newest] [bit] NOT NULL,
 CONSTRAINT [PK_cmsDocument] PRIMARY KEY CLUSTERED 
(
	[versionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_cmsDocument] UNIQUE NONCLUSTERED 
(
	[nodeId] ASC,
	[versionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1053, 1, 0, N'98d85064-01c2-4eb2-bae5-21a35c90f2ae', N'Getting started', NULL, NULL, CAST(0x00009E730168E998 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1050, 1, 0, N'6dd4c3d1-f418-4377-a56a-2f55db46a5de', N'Simple website', NULL, NULL, CAST(0x00009E730168E919 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1052, 0, 0, N'436f501b-2e1d-40d9-8cd5-4c2e8d4abbac', N'Go further', NULL, NULL, CAST(0x00009E730168F56E AS DateTime), 1046, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1050, 0, 0, N'b9e5039f-c941-49a6-ab60-6836e648ab60', N'Simple website', NULL, NULL, CAST(0x00009E730168F51F AS DateTime), 1044, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1051, 0, 0, N'46efa808-7e92-4a23-97a5-7321e276e1ae', N'Installing modules', NULL, NULL, CAST(0x00009E730168F561 AS DateTime), 1046, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1051, 1, 0, N'9d6dd7db-9d0d-4bcf-9b70-93739f97bbc2', N'Installing modules', NULL, NULL, CAST(0x00009E730168E93A AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1053, 0, 0, N'6fce4a54-4e96-4ef1-a7e8-a48e0a5436c7', N'Getting started', NULL, NULL, CAST(0x00009E730168F579 AS DateTime), 1046, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1052, 1, 0, N'43185b92-ba63-4da6-a2de-b3d8515bdabb', N'Go further', NULL, NULL, CAST(0x00009E730168E972 AS DateTime), NULL, NULL, 0)
/****** Object:  Table [dbo].[cmsContentXml]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[cmsContentXml](
	[nodeId] [int] NOT NULL,
	[xml] [ntext] NOT NULL,
 CONSTRAINT [PK_cmsContentXml] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
\go
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1050, N'<umbHomepage id="1050" parentID="-1" level="1" writerID="0" creatorID="0" nodeType="1047" template="1044" sortOrder="2" createDate="2008-05-02T09:52:36" updateDate="2011-01-22T21:54:12" nodeName="Simple website" urlName="simple-website" writerName="atomia-admin-name" creatorName="atomia-admin-name" path="-1,1050" isDoc=""><bodyText><![CDATA[
<p>The Simple Starter Kit gives you a bare-bones website that
introduces you to a set of well-defined conventions for building an
Umbraco website.</p>

<p>The Simple website is very basic in form and provided without
any design or functionality - unless you add a Skin, of course. By
installing the Simple Starter Kit, you''ll begin with a minimal site
built on best practices. You''ll also enjoy the benefits of speaking
the same "language" as the rest of the Umbraco community by using
common properties and naming conventions.</p>

<p>Now that you know what the Simple site is, it is time to get
started using Umbraco.</p>
]]></bodyText><siteName>Simple website</siteName><siteDescription><![CDATA[Off to a great start]]></siteDescription></umbHomepage>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1051, N'<umbTextpage id="1051" parentID="1050" level="2" writerID="0" creatorID="0" nodeType="1048" template="1046" sortOrder="1" createDate="2008-06-01T23:12:54" updateDate="2011-01-22T21:54:12" nodeName="Installing modules" urlName="installing-modules" writerName="atomia-admin-name" creatorName="atomia-admin-name" path="-1,1050,1051" isDoc=""><bodyText><![CDATA[
<p>Umbraco modules encapsulate specific bits of advanced
functionality that are easily added to your website.</p>

<p>Once installed, Umbraco modules are open source and easy to
customize if you want to modify the behavior for your specific
needs.<br />
 Because Umbraco modules are provided under the MIT license you are
free to use and modify them any way you want, with no strings
attached.</p>

<p>To add Umbraco modules to your website, go to the
<strong>Settings</strong> section, expand the
<strong>Templates</strong> item, select the <strong>Starterkit
Master</strong> template, then click the <strong>Customize
Skin</strong> button on the toolbar.</p>

<p>Umbraco modules are available for various kinds of navigation, a
sitemap, social media feeds, and a contact form. The list of
available Umbraco modules is growing rapidly and is automatically
updated from a central source, always fresh and current.</p>

<p><a href="http://umbraco.org/get-started"
title="Get Started with Umbraco">Get more information</a> about the
umbraco way.</p>
]]></bodyText><umbracoNaviHide>0</umbracoNaviHide></umbTextpage>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1052, N'<umbTextpage id="1052" parentID="1050" level="2" writerID="0" creatorID="0" nodeType="1048" template="1046" sortOrder="2" createDate="2008-06-01T23:14:52" updateDate="2011-01-22T21:54:12" nodeName="Go further" urlName="go-further" writerName="atomia-admin-name" creatorName="atomia-admin-name" path="-1,1050,1052" isDoc=""><bodyText><![CDATA[
<p>The Simple Starter Kit only scratches the surface of what''s
possible with Umbraco. Below the Simple Starter Kit and its modules
lies a great architecture that lets you implement whatever you
need.</p>

<p>With Umbraco you''ve finally got a solid, open and reliable
platform for websites as basic as the Simple site, and Umbraco can
be rapidly expanded to support multi-language websites,
collaboration platforms and intra/extranets, to name just a
few.</p>

<p>Advanced functionality is created with Umbraco macros, built
with XSLT and Umbraco''s award-winning .NET integration, including
full support for any .NET User or Custom control. Create and
integrate your own .NET macros in mere minutes with point and click
simplicity. Simply copy your controls to the Umbraco website, go to
the <strong>Developer</strong> section and create a new macro,
selecting your control from the list.</p>

<p>You can also use <a
href="http://umbraco.org/help-and-support/video-tutorials/getting-started/working-with-webmatrix"
 title="Working with Razor">Microsoft''s Razor</a> syntax to quickly
add dynamic functionality to your site.</p>

<p>We''ve also gathered the best community macros into a repository
that''s also accessed from the <strong>Developer</strong> section,
in the <strong>Packages</strong> area. You can find more
information <a
href="http://umbraco.org/help-and-support/video-tutorials/introduction-to-umbraco/sitebuilder-introduction/what-are-macros"
 title="About creating Umbraco macros">about creating macros</a>,
on the Umbraco website.</p>

<p>The sky is the limit with Umbraco, and you have the benefit a
friendly community, training, and guaranteed support. Find out how
to <a href="http://umbraco.org/help-and-support"
title="Get Umbraco Support">get help</a>.</p>
]]></bodyText><umbracoNaviHide>0</umbracoNaviHide></umbTextpage>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1053, N'<umbTextpage id="1053" parentID="1050" level="2" writerID="0" creatorID="0" nodeType="1048" template="1046" sortOrder="3" createDate="2008-06-01T23:11:56" updateDate="2011-01-22T21:54:12" nodeName="Getting started" urlName="getting-started" writerName="atomia-admin-name" creatorName="atomia-admin-name" path="-1,1050,1053" isDoc=""><bodyText><![CDATA[
<p>You''ve installed Umbraco and the basic Simple website.</p>

<p>Edit the text on the homepage and create a site structure by
adding new texpages to your site. This is all done in the
<strong>Content</strong> section.</p>

<p>If you find the editing options provided by the Simple site too
limited for you needs, simply add more properties to the page by
going to the <strong>Settings</strong> section, expanding the
<strong>Document Types</strong> item and adding new properties on
the <strong>Generic Properties</strong> tab. You can find more
information about <a
href="http://umbraco.org/help-and-support/video-tutorials/introduction-to-umbraco/sitebuilder-introduction/document-types"
 title="About Umbraco Document Types">document types and
properties</a> at the <a href="http://umbraco.org"
title="The Umbraco Website">Umbraco website</a>.</p>

<p>You''ll probably want to personalize your site by changing the
current design. This is also done in the <strong>Settings</strong>
section, either by editing the CSS styles and HTML templates or by
selecting and applying a Skin. Umbraco uses master templates, so
the main, common markup is placed in the <strong>Starterkit
Master</strong> template, while the Homeage and Textpage have
separate templates for their unique layouts. You can find more
information about <a
href="http://umbraco.org/help-and-support/video-tutorials/introduction-to-umbraco/sitebuilder-introduction/templates"
 title="Umbraco Templates and Stylesheets">templates and css</a> in
umbraco at the umbraco website.</p>

<p>Once you''re happy with your site''s design, you might want to add
more functionality, such as automated navigation. This is done by
<a
href="http://umbraco.org/help-and-support/video-tutorials/getting-started"
 title="Umbraco Modules">installing Umbraco modules</a>.</p>
]]></bodyText><umbracoNaviHide>0</umbracoNaviHide></umbTextpage>')
/****** Object:  Table [dbo].[cmsContentVersion]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[cmsContentVersion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ContentId] [int] NOT NULL,
	[VersionId] [uniqueidentifier] NOT NULL,
	[VersionDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_cmsContentVersion] UNIQUE NONCLUSTERED 
(
	[VersionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
SET IDENTITY_INSERT [dbo].[cmsContentVersion] ON
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (1, 1050, N'6dd4c3d1-f418-4377-a56a-2f55db46a5de', CAST(0x00009E730168CFBE AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (2, 1051, N'9d6dd7db-9d0d-4bcf-9b70-93739f97bbc2', CAST(0x00009E730168E91D AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (3, 1052, N'43185b92-ba63-4da6-a2de-b3d8515bdabb', CAST(0x00009E730168E947 AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (4, 1053, N'98d85064-01c2-4eb2-bae5-21a35c90f2ae', CAST(0x00009E730168E973 AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (5, 1050, N'b9e5039f-c941-49a6-ab60-6836e648ab60', CAST(0x00009E730168F51C AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (6, 1051, N'46efa808-7e92-4a23-97a5-7321e276e1ae', CAST(0x00009E730168F560 AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (7, 1052, N'436f501b-2e1d-40d9-8cd5-4c2e8d4abbac', CAST(0x00009E730168F56C AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (8, 1053, N'6fce4a54-4e96-4ef1-a7e8-a48e0a5436c7', CAST(0x00009E730168F577 AS DateTime))
SET IDENTITY_INSERT [dbo].[cmsContentVersion] OFF
/****** Object:  Table [dbo].[cmsContentTypeAllowedContentType]    Script Date: 01/23/2011 21:15:12 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[cmsContentTypeAllowedContentType](
	[Id] [int] NOT NULL,
	[AllowedId] [int] NOT NULL,
 CONSTRAINT [PK_cmsContentTypeAllowedContentType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[AllowedId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId]) VALUES (1031, 1031)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId]) VALUES (1031, 1032)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId]) VALUES (1031, 1033)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId]) VALUES (1047, 1048)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId]) VALUES (1048, 1048)
/****** Object:  Table [dbo].[cmsTab]    Script Date: 01/23/2011 21:15:13 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[cmsTab](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[contenttypeNodeId] [int] NOT NULL,
	[text] [nvarchar](255) NOT NULL,
	[sortorder] [int] NOT NULL,
 CONSTRAINT [PK_cmsTab] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
SET IDENTITY_INSERT [dbo].[cmsTab] ON
INSERT [dbo].[cmsTab] ([id], [contenttypeNodeId], [text], [sortorder]) VALUES (3, 1032, N'Image', 1)
INSERT [dbo].[cmsTab] ([id], [contenttypeNodeId], [text], [sortorder]) VALUES (4, 1033, N'File', 1)
INSERT [dbo].[cmsTab] ([id], [contenttypeNodeId], [text], [sortorder]) VALUES (5, 1031, N'Contents', 1)
INSERT [dbo].[cmsTab] ([id], [contenttypeNodeId], [text], [sortorder]) VALUES (6, 1047, N'Site', 1)
INSERT [dbo].[cmsTab] ([id], [contenttypeNodeId], [text], [sortorder]) VALUES (7, 1047, N'Content', 2)
INSERT [dbo].[cmsTab] ([id], [contenttypeNodeId], [text], [sortorder]) VALUES (8, 1048, N'Content', 1)
SET IDENTITY_INSERT [dbo].[cmsTab] OFF
/****** Object:  Table [dbo].[cmsDataTypePreValues]    Script Date: 01/23/2011 21:15:13 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[cmsDataTypePreValues](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[datatypeNodeId] [int] NOT NULL,
	[value] [nvarchar](2500) NULL,
	[sortorder] [int] NOT NULL,
	[alias] [nvarchar](50) NULL,
 CONSTRAINT [PK_cmsDataTypePreValues] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
SET IDENTITY_INSERT [dbo].[cmsDataTypePreValues] ON
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (3, -87, N',code,undo,redo,cut,copy,mcepasteword,stylepicker,bold,italic,bullist,numlist,outdent,indent,mcelink,unlink,mceinsertanchor,mceimage,umbracomacro,mceinserttable,mcecharmap,|1|1,2,3,|0|500,400|1049,|', 0, N'')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (4, 1041, N'default', 0, N'group')
SET IDENTITY_INSERT [dbo].[cmsDataTypePreValues] OFF
/****** Object:  Table [dbo].[cmsMember]    Script Date: 01/23/2011 21:15:13 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[cmsMember](
	[nodeId] [int] NOT NULL,
	[Email] [nvarchar](1000) NOT NULL,
	[LoginName] [nvarchar](1000) NOT NULL,
	[Password] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_cmsMember] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
/****** Object:  Table [dbo].[cmsMemberType]    Script Date: 01/23/2011 21:15:13 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[cmsMemberType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[NodeId] [int] NOT NULL,
	[propertytypeId] [int] NOT NULL,
	[memberCanEdit] [bit] NOT NULL,
	[viewOnProfile] [bit] NOT NULL,
 CONSTRAINT [PK_cmsMemberType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
/****** Object:  Table [dbo].[cmsPreviewXml]    Script Date: 01/23/2011 21:15:13 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[cmsPreviewXml](
	[nodeId] [int] NOT NULL,
	[versionId] [uniqueidentifier] NOT NULL,
	[timestamp] [datetime] NOT NULL,
	[xml] [ntext] NOT NULL,
 CONSTRAINT [PK_cmsContentPreviewXml] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC,
	[versionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
\go
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1050, N'6dd4c3d1-f418-4377-a56a-2f55db46a5de', CAST(0x00009E730168E91E AS DateTime), N'<umbHomepage id="1050" parentID="-1" level="1" writerID="0" creatorID="0" nodeType="1047" template="1044" sortOrder="2" createDate="2008-05-02T09:52:36" updateDate="2011-01-22T21:53:40" nodeName="Simple website" urlName="simple-website" writerName="atomia-admin-name" creatorName="atomia-admin-name" path="-1,1050" isDoc=""><bodyText><![CDATA[
<p>The Simple Starter Kit gives you a bare-bones website that
introduces you to a set of well-defined conventions for building an
Umbraco website.</p>

<p>The Simple website is very basic in form and provided without
any design or functionality - unless you add a Skin, of course. By
installing the Simple Starter Kit, you''ll begin with a minimal site
built on best practices. You''ll also enjoy the benefits of speaking
the same "language" as the rest of the Umbraco community by using
common properties and naming conventions.</p>

<p>Now that you know what the Simple site is, it is time to get
started using Umbraco.</p>
]]></bodyText><siteName>Simple website</siteName><siteDescription><![CDATA[Off to a great start]]></siteDescription></umbHomepage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1051, N'9d6dd7db-9d0d-4bcf-9b70-93739f97bbc2', CAST(0x00009E730168E93A AS DateTime), N'<umbTextpage id="1051" parentID="1050" level="2" writerID="0" creatorID="0" nodeType="1048" template="1046" sortOrder="1" createDate="2008-06-01T23:12:54" updateDate="2011-01-22T21:54:02" nodeName="Installing modules" urlName="installing-modules" writerName="atomia-admin-name" creatorName="atomia-admin-name" path="-1,1050,1051" isDoc=""><bodyText><![CDATA[
<p>Umbraco modules encapsulate specific bits of advanced
functionality that are easily added to your website.</p>

<p>Once installed, Umbraco modules are open source and easy to
customize if you want to modify the behavior for your specific
needs.<br />
 Because Umbraco modules are provided under the MIT license you are
free to use and modify them any way you want, with no strings
attached.</p>

<p>To add Umbraco modules to your website, go to the
<strong>Settings</strong> section, expand the
<strong>Templates</strong> item, select the <strong>Starterkit
Master</strong> template, then click the <strong>Customize
Skin</strong> button on the toolbar.</p>

<p>Umbraco modules are available for various kinds of navigation, a
sitemap, social media feeds, and a contact form. The list of
available Umbraco modules is growing rapidly and is automatically
updated from a central source, always fresh and current.</p>

<p><a href="http://umbraco.org/get-started"
title="Get Started with Umbraco">Get more information</a> about the
umbraco way.</p>
]]></bodyText><umbracoNaviHide>0</umbracoNaviHide></umbTextpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1052, N'43185b92-ba63-4da6-a2de-b3d8515bdabb', CAST(0x00009E730168E972 AS DateTime), N'<umbTextpage id="1052" parentID="1050" level="2" writerID="0" creatorID="0" nodeType="1048" template="1046" sortOrder="2" createDate="2008-06-01T23:14:52" updateDate="2011-01-22T21:54:02" nodeName="Go further" urlName="go-further" writerName="atomia-admin-name" creatorName="atomia-admin-name" path="-1,1050,1052" isDoc=""><bodyText><![CDATA[
<p>The Simple Starter Kit only scratches the surface of what''s
possible with Umbraco. Below the Simple Starter Kit and its modules
lies a great architecture that lets you implement whatever you
need.</p>

<p>With Umbraco you''ve finally got a solid, open and reliable
platform for websites as basic as the Simple site, and Umbraco can
be rapidly expanded to support multi-language websites,
collaboration platforms and intra/extranets, to name just a
few.</p>

<p>Advanced functionality is created with Umbraco macros, built
with XSLT and Umbraco''s award-winning .NET integration, including
full support for any .NET User or Custom control. Create and
integrate your own .NET macros in mere minutes with point and click
simplicity. Simply copy your controls to the Umbraco website, go to
the <strong>Developer</strong> section and create a new macro,
selecting your control from the list.</p>

<p>You can also use <a
href="http://umbraco.org/help-and-support/video-tutorials/getting-started/working-with-webmatrix"
 title="Working with Razor">Microsoft''s Razor</a> syntax to quickly
add dynamic functionality to your site.</p>

<p>We''ve also gathered the best community macros into a repository
that''s also accessed from the <strong>Developer</strong> section,
in the <strong>Packages</strong> area. You can find more
information <a
href="http://umbraco.org/help-and-support/video-tutorials/introduction-to-umbraco/sitebuilder-introduction/what-are-macros"
 title="About creating Umbraco macros">about creating macros</a>,
on the Umbraco website.</p>

<p>The sky is the limit with Umbraco, and you have the benefit a
friendly community, training, and guaranteed support. Find out how
to <a href="http://umbraco.org/help-and-support"
title="Get Umbraco Support">get help</a>.</p>
]]></bodyText><umbracoNaviHide>0</umbracoNaviHide></umbTextpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1053, N'98d85064-01c2-4eb2-bae5-21a35c90f2ae', CAST(0x00009E730168E998 AS DateTime), N'<umbTextpage id="1053" parentID="1050" level="2" writerID="0" creatorID="0" nodeType="1048" template="1046" sortOrder="3" createDate="2008-06-01T23:11:56" updateDate="2011-01-22T21:54:02" nodeName="Getting started" urlName="getting-started" writerName="atomia-admin-name" creatorName="atomia-admin-name" path="-1,1050,1053" isDoc=""><bodyText><![CDATA[
<p>You''ve installed Umbraco and the basic Simple website.</p>

<p>Edit the text on the homepage and create a site structure by
adding new texpages to your site. This is all done in the
<strong>Content</strong> section.</p>

<p>If you find the editing options provided by the Simple site too
limited for you needs, simply add more properties to the page by
going to the <strong>Settings</strong> section, expanding the
<strong>Document Types</strong> item and adding new properties on
the <strong>Generic Properties</strong> tab. You can find more
information about <a
href="http://umbraco.org/help-and-support/video-tutorials/introduction-to-umbraco/sitebuilder-introduction/document-types"
 title="About Umbraco Document Types">document types and
properties</a> at the <a href="http://umbraco.org"
title="The Umbraco Website">Umbraco website</a>.</p>

<p>You''ll probably want to personalize your site by changing the
current design. This is also done in the <strong>Settings</strong>
section, either by editing the CSS styles and HTML templates or by
selecting and applying a Skin. Umbraco uses master templates, so
the main, common markup is placed in the <strong>Starterkit
Master</strong> template, while the Homeage and Textpage have
separate templates for their unique layouts. You can find more
information about <a
href="http://umbraco.org/help-and-support/video-tutorials/introduction-to-umbraco/sitebuilder-introduction/templates"
 title="Umbraco Templates and Stylesheets">templates and css</a> in
umbraco at the umbraco website.</p>

<p>Once you''re happy with your site''s design, you might want to add
more functionality, such as automated navigation. This is done by
<a
href="http://umbraco.org/help-and-support/video-tutorials/getting-started"
 title="Umbraco Modules">installing Umbraco modules</a>.</p>
]]></bodyText><umbracoNaviHide>0</umbracoNaviHide></umbTextpage>')
/****** Object:  Table [dbo].[cmsMember2MemberGroup]    Script Date: 01/23/2011 21:15:13 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[cmsMember2MemberGroup](
	[Member] [int] NOT NULL,
	[MemberGroup] [int] NOT NULL,
 CONSTRAINT [PK_cmsMember2MemberGroup] PRIMARY KEY CLUSTERED 
(
	[Member] ASC,
	[MemberGroup] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
/****** Object:  Table [dbo].[cmsPropertyType]    Script Date: 01/23/2011 21:15:13 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[cmsPropertyType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataTypeId] [int] NOT NULL,
	[contentTypeId] [int] NOT NULL,
	[tabId] [int] NULL,
	[Alias] [nvarchar](255) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[helpText] [nvarchar](1000) NULL,
	[sortOrder] [int] NOT NULL,
	[mandatory] [bit] NOT NULL,
	[validationRegExp] [nvarchar](255) NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_cmsPropertyType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
\go
SET IDENTITY_INSERT [dbo].[cmsPropertyType] ON
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (6, -90, 1032, 3, N'umbracoFile', N'Upload image', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (7, -92, 1032, 3, N'umbracoWidth', N'Width', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (8, -92, 1032, 3, N'umbracoHeight', N'Height', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (9, -92, 1032, 3, N'umbracoBytes', N'Size', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (10, -92, 1032, 3, N'umbracoExtension', N'Type', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (24, -90, 1033, 4, N'umbracoFile', N'Upload file', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (25, -92, 1033, 4, N'umbracoExtension', N'Type', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (26, -92, 1033, 4, N'umbracoBytes', N'Size', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (27, -38, 1031, 5, N'contents', N'Contents:', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (28, -87, 1047, 7, N'bodyText', N'Body text', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (29, -88, 1047, 6, N'siteName', N'Site Name', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (30, -89, 1047, 6, N'siteDescription', N'Site Description', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (31, -87, 1048, 8, N'bodyText', N'Body Text', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (32, -49, 1048, NULL, N'umbracoNaviHide', N'Hide in navigation', NULL, 0, 0, N'', N'')
SET IDENTITY_INSERT [dbo].[cmsPropertyType] OFF
/****** Object:  Table [dbo].[cmsPropertyData]    Script Date: 01/23/2011 21:15:13 ******/
SET ANSI_NULLS ON
\go
SET QUOTED_IDENTIFIER ON
\go
CREATE TABLE [dbo].[cmsPropertyData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[contentNodeId] [int] NOT NULL,
	[versionId] [uniqueidentifier] NULL,
	[propertytypeid] [int] NOT NULL,
	[dataInt] [int] NULL,
	[dataDate] [datetime] NULL,
	[dataNvarchar] [nvarchar](500) NULL,
	[dataNtext] [ntext] NULL,
 CONSTRAINT [PK_cmsPropertyData] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
\go
CREATE NONCLUSTERED INDEX [IX_cmsPropertyData] ON [dbo].[cmsPropertyData] 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
\go
CREATE NONCLUSTERED INDEX [IX_cmsPropertyData_1] ON [dbo].[cmsPropertyData] 
(
	[contentNodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
\go
CREATE NONCLUSTERED INDEX [IX_cmsPropertyData_2] ON [dbo].[cmsPropertyData] 
(
	[versionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
\go
CREATE NONCLUSTERED INDEX [IX_cmsPropertyData_3] ON [dbo].[cmsPropertyData] 
(
	[propertytypeid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
\go
SET IDENTITY_INSERT [dbo].[cmsPropertyData] ON
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1, 1050, N'6dd4c3d1-f418-4377-a56a-2f55db46a5de', 28, NULL, NULL, NULL, N'
<p>The Simple Starter Kit gives you a bare-bones website that
introduces you to a set of well-defined conventions for building an
Umbraco website.</p>

<p>The Simple website is very basic in form and provided without
any design or functionality - unless you add a Skin, of course. By
installing the Simple Starter Kit, you''ll begin with a minimal site
built on best practices. You''ll also enjoy the benefits of speaking
the same "language" as the rest of the Umbraco community by using
common properties and naming conventions.</p>

<p>Now that you know what the Simple site is, it is time to get
started using Umbraco.</p>
')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (2, 1050, N'6dd4c3d1-f418-4377-a56a-2f55db46a5de', 29, NULL, NULL, N'Simple website', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (3, 1050, N'6dd4c3d1-f418-4377-a56a-2f55db46a5de', 30, NULL, NULL, NULL, N'Off to a great start')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (4, 1051, N'9d6dd7db-9d0d-4bcf-9b70-93739f97bbc2', 31, NULL, NULL, NULL, N'
<p>Umbraco modules encapsulate specific bits of advanced
functionality that are easily added to your website.</p>

<p>Once installed, Umbraco modules are open source and easy to
customize if you want to modify the behavior for your specific
needs.<br />
 Because Umbraco modules are provided under the MIT license you are
free to use and modify them any way you want, with no strings
attached.</p>

<p>To add Umbraco modules to your website, go to the
<strong>Settings</strong> section, expand the
<strong>Templates</strong> item, select the <strong>Starterkit
Master</strong> template, then click the <strong>Customize
Skin</strong> button on the toolbar.</p>

<p>Umbraco modules are available for various kinds of navigation, a
sitemap, social media feeds, and a contact form. The list of
available Umbraco modules is growing rapidly and is automatically
updated from a central source, always fresh and current.</p>

<p><a href="http://umbraco.org/get-started"
title="Get Started with Umbraco">Get more information</a> about the
umbraco way.</p>
')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (5, 1051, N'9d6dd7db-9d0d-4bcf-9b70-93739f97bbc2', 32, 0, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (6, 1052, N'43185b92-ba63-4da6-a2de-b3d8515bdabb', 31, NULL, NULL, NULL, N'
<p>The Simple Starter Kit only scratches the surface of what''s
possible with Umbraco. Below the Simple Starter Kit and its modules
lies a great architecture that lets you implement whatever you
need.</p>

<p>With Umbraco you''ve finally got a solid, open and reliable
platform for websites as basic as the Simple site, and Umbraco can
be rapidly expanded to support multi-language websites,
collaboration platforms and intra/extranets, to name just a
few.</p>

<p>Advanced functionality is created with Umbraco macros, built
with XSLT and Umbraco''s award-winning .NET integration, including
full support for any .NET User or Custom control. Create and
integrate your own .NET macros in mere minutes with point and click
simplicity. Simply copy your controls to the Umbraco website, go to
the <strong>Developer</strong> section and create a new macro,
selecting your control from the list.</p>

<p>You can also use <a
href="http://umbraco.org/help-and-support/video-tutorials/getting-started/working-with-webmatrix"
 title="Working with Razor">Microsoft''s Razor</a> syntax to quickly
add dynamic functionality to your site.</p>

<p>We''ve also gathered the best community macros into a repository
that''s also accessed from the <strong>Developer</strong> section,
in the <strong>Packages</strong> area. You can find more
information <a
href="http://umbraco.org/help-and-support/video-tutorials/introduction-to-umbraco/sitebuilder-introduction/what-are-macros"
 title="About creating Umbraco macros">about creating macros</a>,
on the Umbraco website.</p>

<p>The sky is the limit with Umbraco, and you have the benefit a
friendly community, training, and guaranteed support. Find out how
to <a href="http://umbraco.org/help-and-support"
title="Get Umbraco Support">get help</a>.</p>
')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (7, 1052, N'43185b92-ba63-4da6-a2de-b3d8515bdabb', 32, 0, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (8, 1053, N'98d85064-01c2-4eb2-bae5-21a35c90f2ae', 31, NULL, NULL, NULL, N'
<p>You''ve installed Umbraco and the basic Simple website.</p>

<p>Edit the text on the homepage and create a site structure by
adding new texpages to your site. This is all done in the
<strong>Content</strong> section.</p>

<p>If you find the editing options provided by the Simple site too
limited for you needs, simply add more properties to the page by
going to the <strong>Settings</strong> section, expanding the
<strong>Document Types</strong> item and adding new properties on
the <strong>Generic Properties</strong> tab. You can find more
information about <a
href="http://umbraco.org/help-and-support/video-tutorials/introduction-to-umbraco/sitebuilder-introduction/document-types"
 title="About Umbraco Document Types">document types and
properties</a> at the <a href="http://umbraco.org"
title="The Umbraco Website">Umbraco website</a>.</p>

<p>You''ll probably want to personalize your site by changing the
current design. This is also done in the <strong>Settings</strong>
section, either by editing the CSS styles and HTML templates or by
selecting and applying a Skin. Umbraco uses master templates, so
the main, common markup is placed in the <strong>Starterkit
Master</strong> template, while the Homeage and Textpage have
separate templates for their unique layouts. You can find more
information about <a
href="http://umbraco.org/help-and-support/video-tutorials/introduction-to-umbraco/sitebuilder-introduction/templates"
 title="Umbraco Templates and Stylesheets">templates and css</a> in
umbraco at the umbraco website.</p>

<p>Once you''re happy with your site''s design, you might want to add
more functionality, such as automated navigation. This is done by
<a
href="http://umbraco.org/help-and-support/video-tutorials/getting-started"
 title="Umbraco Modules">installing Umbraco modules</a>.</p>
')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (9, 1053, N'98d85064-01c2-4eb2-bae5-21a35c90f2ae', 32, 0, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (10, 1050, N'b9e5039f-c941-49a6-ab60-6836e648ab60', 28, NULL, NULL, NULL, N'
<p>The Simple Starter Kit gives you a bare-bones website that
introduces you to a set of well-defined conventions for building an
Umbraco website.</p>

<p>The Simple website is very basic in form and provided without
any design or functionality - unless you add a Skin, of course. By
installing the Simple Starter Kit, you''ll begin with a minimal site
built on best practices. You''ll also enjoy the benefits of speaking
the same "language" as the rest of the Umbraco community by using
common properties and naming conventions.</p>

<p>Now that you know what the Simple site is, it is time to get
started using Umbraco.</p>
')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11, 1050, N'b9e5039f-c941-49a6-ab60-6836e648ab60', 29, NULL, NULL, N'Simple website', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (12, 1050, N'b9e5039f-c941-49a6-ab60-6836e648ab60', 30, NULL, NULL, NULL, N'Off to a great start')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (13, 1051, N'46efa808-7e92-4a23-97a5-7321e276e1ae', 31, NULL, NULL, NULL, N'
<p>Umbraco modules encapsulate specific bits of advanced
functionality that are easily added to your website.</p>

<p>Once installed, Umbraco modules are open source and easy to
customize if you want to modify the behavior for your specific
needs.<br />
 Because Umbraco modules are provided under the MIT license you are
free to use and modify them any way you want, with no strings
attached.</p>

<p>To add Umbraco modules to your website, go to the
<strong>Settings</strong> section, expand the
<strong>Templates</strong> item, select the <strong>Starterkit
Master</strong> template, then click the <strong>Customize
Skin</strong> button on the toolbar.</p>

<p>Umbraco modules are available for various kinds of navigation, a
sitemap, social media feeds, and a contact form. The list of
available Umbraco modules is growing rapidly and is automatically
updated from a central source, always fresh and current.</p>

<p><a href="http://umbraco.org/get-started"
title="Get Started with Umbraco">Get more information</a> about the
umbraco way.</p>
')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (14, 1051, N'46efa808-7e92-4a23-97a5-7321e276e1ae', 32, 0, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (15, 1052, N'436f501b-2e1d-40d9-8cd5-4c2e8d4abbac', 31, NULL, NULL, NULL, N'
<p>The Simple Starter Kit only scratches the surface of what''s
possible with Umbraco. Below the Simple Starter Kit and its modules
lies a great architecture that lets you implement whatever you
need.</p>

<p>With Umbraco you''ve finally got a solid, open and reliable
platform for websites as basic as the Simple site, and Umbraco can
be rapidly expanded to support multi-language websites,
collaboration platforms and intra/extranets, to name just a
few.</p>

<p>Advanced functionality is created with Umbraco macros, built
with XSLT and Umbraco''s award-winning .NET integration, including
full support for any .NET User or Custom control. Create and
integrate your own .NET macros in mere minutes with point and click
simplicity. Simply copy your controls to the Umbraco website, go to
the <strong>Developer</strong> section and create a new macro,
selecting your control from the list.</p>

<p>You can also use <a
href="http://umbraco.org/help-and-support/video-tutorials/getting-started/working-with-webmatrix"
 title="Working with Razor">Microsoft''s Razor</a> syntax to quickly
add dynamic functionality to your site.</p>

<p>We''ve also gathered the best community macros into a repository
that''s also accessed from the <strong>Developer</strong> section,
in the <strong>Packages</strong> area. You can find more
information <a
href="http://umbraco.org/help-and-support/video-tutorials/introduction-to-umbraco/sitebuilder-introduction/what-are-macros"
 title="About creating Umbraco macros">about creating macros</a>,
on the Umbraco website.</p>

<p>The sky is the limit with Umbraco, and you have the benefit a
friendly community, training, and guaranteed support. Find out how
to <a href="http://umbraco.org/help-and-support"
title="Get Umbraco Support">get help</a>.</p>
')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (16, 1052, N'436f501b-2e1d-40d9-8cd5-4c2e8d4abbac', 32, 0, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (17, 1053, N'6fce4a54-4e96-4ef1-a7e8-a48e0a5436c7', 31, NULL, NULL, NULL, N'
<p>You''ve installed Umbraco and the basic Simple website.</p>

<p>Edit the text on the homepage and create a site structure by
adding new texpages to your site. This is all done in the
<strong>Content</strong> section.</p>

<p>If you find the editing options provided by the Simple site too
limited for you needs, simply add more properties to the page by
going to the <strong>Settings</strong> section, expanding the
<strong>Document Types</strong> item and adding new properties on
the <strong>Generic Properties</strong> tab. You can find more
information about <a
href="http://umbraco.org/help-and-support/video-tutorials/introduction-to-umbraco/sitebuilder-introduction/document-types"
 title="About Umbraco Document Types">document types and
properties</a> at the <a href="http://umbraco.org"
title="The Umbraco Website">Umbraco website</a>.</p>

<p>You''ll probably want to personalize your site by changing the
current design. This is also done in the <strong>Settings</strong>
section, either by editing the CSS styles and HTML templates or by
selecting and applying a Skin. Umbraco uses master templates, so
the main, common markup is placed in the <strong>Starterkit
Master</strong> template, while the Homeage and Textpage have
separate templates for their unique layouts. You can find more
information about <a
href="http://umbraco.org/help-and-support/video-tutorials/introduction-to-umbraco/sitebuilder-introduction/templates"
 title="Umbraco Templates and Stylesheets">templates and css</a> in
umbraco at the umbraco website.</p>

<p>Once you''re happy with your site''s design, you might want to add
more functionality, such as automated navigation. This is done by
<a
href="http://umbraco.org/help-and-support/video-tutorials/getting-started"
 title="Umbraco Modules">installing Umbraco modules</a>.</p>
')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (18, 1053, N'6fce4a54-4e96-4ef1-a7e8-a48e0a5436c7', 32, 0, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[cmsPropertyData] OFF
/****** Object:  Default [DF_app_sortOrder]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[umbracoApp] ADD  CONSTRAINT [DF_app_sortOrder]  DEFAULT ((0)) FOR [sortOrder]
\go
/****** Object:  Default [DF_umbracoNode_trashed]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[umbracoNode] ADD  CONSTRAINT [DF_umbracoNode_trashed]  DEFAULT ((0)) FOR [trashed]
\go
/****** Object:  Default [DF_umbracoNode_createDate]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[umbracoNode] ADD  CONSTRAINT [DF_umbracoNode_createDate]  DEFAULT (getdate()) FOR [createDate]
\go
/****** Object:  Default [DF_umbracoLog_Datestamp]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[umbracoLog] ADD  CONSTRAINT [DF_umbracoLog_Datestamp]  DEFAULT (getdate()) FOR [Datestamp]
\go
/****** Object:  Default [DF_macro_macroUseInEditor]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_macro_macroUseInEditor]  DEFAULT ((0)) FOR [macroUseInEditor]
\go
/****** Object:  Default [DF_macro_macroRefreshRate]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_macro_macroRefreshRate]  DEFAULT ((0)) FOR [macroRefreshRate]
\go
/****** Object:  Default [DF_cmsMacro_macroCacheByPage]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroCacheByPage]  DEFAULT ((1)) FOR [macroCacheByPage]
\go
/****** Object:  Default [DF_cmsMacro_macroCachePersonalized]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroCachePersonalized]  DEFAULT ((0)) FOR [macroCachePersonalized]
\go
/****** Object:  Default [DF_cmsMacro_macroDontRender]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroDontRender]  DEFAULT ((0)) FOR [macroDontRender]
\go
/****** Object:  Default [DF_macroProperty_macroPropertyHidden]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsMacroProperty] ADD  CONSTRAINT [DF_macroProperty_macroPropertyHidden]  DEFAULT ((0)) FOR [macroPropertyHidden]
\go
/****** Object:  Default [DF_macroProperty_macroPropertySortOrder]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsMacroProperty] ADD  CONSTRAINT [DF_macroProperty_macroPropertySortOrder]  DEFAULT ((0)) FOR [macroPropertySortOrder]
\go
/****** Object:  Default [DF_cmsContentType_thumbnail]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_thumbnail]  DEFAULT ('folder.png') FOR [thumbnail]
\go
/****** Object:  Default [DF_cmsContentType_masterContentType]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_masterContentType]  DEFAULT ((0)) FOR [masterContentType]
\go
/****** Object:  Default [DF_umbracoAppTree_treeSilent]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[umbracoAppTree] ADD  CONSTRAINT [DF_umbracoAppTree_treeSilent]  DEFAULT ((0)) FOR [treeSilent]
\go
/****** Object:  Default [DF_umbracoAppTree_treeInitialize]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[umbracoAppTree] ADD  CONSTRAINT [DF_umbracoAppTree_treeInitialize]  DEFAULT ((1)) FOR [treeInitialize]
\go
/****** Object:  Default [DF_umbracoRelation_datetime]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[umbracoRelation] ADD  CONSTRAINT [DF_umbracoRelation_datetime]  DEFAULT (getdate()) FOR [datetime]
\go
/****** Object:  Default [DF_umbracoUser_userDisabled]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_userDisabled]  DEFAULT ((0)) FOR [userDisabled]
\go
/****** Object:  Default [DF_umbracoUser_userNoConsole]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_userNoConsole]  DEFAULT ((0)) FOR [userNoConsole]
\go
/****** Object:  Default [DF_umbracoUser_defaultToLiveEditing]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_defaultToLiveEditing]  DEFAULT ((0)) FOR [defaultToLiveEditing]
\go
/****** Object:  Default [DF__cmsTask__closed__04E4BC85]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsTask] ADD  CONSTRAINT [DF__cmsTask__closed__04E4BC85]  DEFAULT ((0)) FOR [closed]
\go
/****** Object:  Default [DF__cmsTask__DateTim__05D8E0BE]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsTask] ADD  CONSTRAINT [DF__cmsTask__DateTim__05D8E0BE]  DEFAULT (getdate()) FOR [DateTime]
\go
/****** Object:  Default [DF_cmsDocumentType_IsDefault]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsDocumentType] ADD  CONSTRAINT [DF_cmsDocumentType_IsDefault]  DEFAULT ((0)) FOR [IsDefault]
\go
/****** Object:  Default [DF_cmsDocument_updateDate]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsDocument] ADD  CONSTRAINT [DF_cmsDocument_updateDate]  DEFAULT (getdate()) FOR [updateDate]
\go
/****** Object:  Default [DF_cmsDocument_newest]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsDocument] ADD  CONSTRAINT [DF_cmsDocument_newest]  DEFAULT ((0)) FOR [newest]
\go
/****** Object:  Default [DF_cmsContentVersion_VersionDate]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsContentVersion] ADD  CONSTRAINT [DF_cmsContentVersion_VersionDate]  DEFAULT (getdate()) FOR [VersionDate]
\go
/****** Object:  Default [DF_cmsMember_Email]    Script Date: 01/23/2011 21:15:13 ******/
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_Email]  DEFAULT ('') FOR [Email]
\go
/****** Object:  Default [DF_cmsMember_LoginName]    Script Date: 01/23/2011 21:15:13 ******/
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_LoginName]  DEFAULT ('') FOR [LoginName]
\go
/****** Object:  Default [DF_cmsMember_Password]    Script Date: 01/23/2011 21:15:13 ******/
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_Password]  DEFAULT ('') FOR [Password]
\go
/****** Object:  Default [DF_cmsMemberType_memberCanEdit]    Script Date: 01/23/2011 21:15:13 ******/
ALTER TABLE [dbo].[cmsMemberType] ADD  CONSTRAINT [DF_cmsMemberType_memberCanEdit]  DEFAULT ((0)) FOR [memberCanEdit]
\go
/****** Object:  Default [DF_cmsMemberType_viewOnProfile]    Script Date: 01/23/2011 21:15:13 ******/
ALTER TABLE [dbo].[cmsMemberType] ADD  CONSTRAINT [DF_cmsMemberType_viewOnProfile]  DEFAULT ((0)) FOR [viewOnProfile]
\go
/****** Object:  Default [DF__cmsProper__sortO__1EA48E88]    Script Date: 01/23/2011 21:15:13 ******/
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF__cmsProper__sortO__1EA48E88]  DEFAULT ((0)) FOR [sortOrder]
\go
/****** Object:  Default [DF__cmsProper__manda__2180FB33]    Script Date: 01/23/2011 21:15:13 ******/
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF__cmsProper__manda__2180FB33]  DEFAULT ((0)) FOR [mandatory]
\go
/****** Object:  ForeignKey [FK_umbracoNode_umbracoNode]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[umbracoNode]  WITH CHECK ADD  CONSTRAINT [FK_umbracoNode_umbracoNode] FOREIGN KEY([parentID])
REFERENCES [dbo].[umbracoNode] ([id])
\go
ALTER TABLE [dbo].[umbracoNode] CHECK CONSTRAINT [FK_umbracoNode_umbracoNode]
\go
/****** Object:  ForeignKey [FK_cmsMacroProperty_cmsMacro]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsMacroProperty]  WITH CHECK ADD  CONSTRAINT [FK_cmsMacroProperty_cmsMacro] FOREIGN KEY([macro])
REFERENCES [dbo].[cmsMacro] ([id])
\go
ALTER TABLE [dbo].[cmsMacroProperty] CHECK CONSTRAINT [FK_cmsMacroProperty_cmsMacro]
\go
/****** Object:  ForeignKey [FK_umbracoMacroProperty_umbracoMacroPropertyType]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsMacroProperty]  WITH CHECK ADD  CONSTRAINT [FK_umbracoMacroProperty_umbracoMacroPropertyType] FOREIGN KEY([macroPropertyType])
REFERENCES [dbo].[cmsMacroPropertyType] ([id])
\go
ALTER TABLE [dbo].[cmsMacroProperty] CHECK CONSTRAINT [FK_umbracoMacroProperty_umbracoMacroPropertyType]
\go
/****** Object:  ForeignKey [FK_cmsStylesheetProperty_umbracoNode]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsStylesheetProperty]  WITH CHECK ADD  CONSTRAINT [FK_cmsStylesheetProperty_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
\go
ALTER TABLE [dbo].[cmsStylesheetProperty] CHECK CONSTRAINT [FK_cmsStylesheetProperty_umbracoNode]
\go
/****** Object:  ForeignKey [FK_cmsStylesheet_umbracoNode]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsStylesheet]  WITH CHECK ADD  CONSTRAINT [FK_cmsStylesheet_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
\go
ALTER TABLE [dbo].[cmsStylesheet] CHECK CONSTRAINT [FK_cmsStylesheet_umbracoNode]
\go
/****** Object:  ForeignKey [cmsTags_cmsTagRelationship]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [cmsTags_cmsTagRelationship] FOREIGN KEY([tagId])
REFERENCES [dbo].[cmsTags] ([id])
ON DELETE CASCADE
\go
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [cmsTags_cmsTagRelationship]
\go
/****** Object:  ForeignKey [umbracoNode_cmsTagRelationship]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [umbracoNode_cmsTagRelationship] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
ON DELETE CASCADE
\go
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [umbracoNode_cmsTagRelationship]
\go
/****** Object:  ForeignKey [FK_cmsContentType_umbracoNode]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
\go
ALTER TABLE [dbo].[cmsContentType] CHECK CONSTRAINT [FK_cmsContentType_umbracoNode]
\go
/****** Object:  ForeignKey [FK_cmsContent_umbracoNode]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsContent]  WITH CHECK ADD  CONSTRAINT [FK_cmsContent_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
\go
ALTER TABLE [dbo].[cmsContent] CHECK CONSTRAINT [FK_cmsContent_umbracoNode]
\go
/****** Object:  ForeignKey [FK_cmsDataType_umbracoNode]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsDataType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDataType_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
\go
ALTER TABLE [dbo].[cmsDataType] CHECK CONSTRAINT [FK_cmsDataType_umbracoNode]
\go
/****** Object:  ForeignKey [FK_cmsLanguageText_cmsDictionary]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsLanguageText]  WITH CHECK ADD  CONSTRAINT [FK_cmsLanguageText_cmsDictionary] FOREIGN KEY([UniqueId])
REFERENCES [dbo].[cmsDictionary] ([id])
\go
ALTER TABLE [dbo].[cmsLanguageText] CHECK CONSTRAINT [FK_cmsLanguageText_cmsDictionary]
\go
/****** Object:  ForeignKey [FK_umbracoDomains_umbracoNode]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[umbracoDomains]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDomains_umbracoNode] FOREIGN KEY([domainRootStructureID])
REFERENCES [dbo].[umbracoNode] ([id])
\go
ALTER TABLE [dbo].[umbracoDomains] CHECK CONSTRAINT [FK_umbracoDomains_umbracoNode]
\go
/****** Object:  ForeignKey [FK_umbracoAppTree_umbracoApp]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[umbracoAppTree]  WITH CHECK ADD  CONSTRAINT [FK_umbracoAppTree_umbracoApp] FOREIGN KEY([appAlias])
REFERENCES [dbo].[umbracoApp] ([appAlias])
\go
ALTER TABLE [dbo].[umbracoAppTree] CHECK CONSTRAINT [FK_umbracoAppTree_umbracoApp]
\go
/****** Object:  ForeignKey [FK_cmsTemplate_cmsTemplate]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsTemplate]  WITH CHECK ADD  CONSTRAINT [FK_cmsTemplate_cmsTemplate] FOREIGN KEY([master])
REFERENCES [dbo].[cmsTemplate] ([nodeId])
\go
ALTER TABLE [dbo].[cmsTemplate] CHECK CONSTRAINT [FK_cmsTemplate_cmsTemplate]
\go
/****** Object:  ForeignKey [FK_cmsTemplate_umbracoNode]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsTemplate]  WITH CHECK ADD  CONSTRAINT [FK_cmsTemplate_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
\go
ALTER TABLE [dbo].[cmsTemplate] CHECK CONSTRAINT [FK_cmsTemplate_umbracoNode]
\go
/****** Object:  ForeignKey [FK_umbracoRelation_umbracoNode]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[umbracoRelation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoNode] FOREIGN KEY([parentId])
REFERENCES [dbo].[umbracoNode] ([id])
\go
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoNode]
\go
/****** Object:  ForeignKey [FK_umbracoRelation_umbracoNode1]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[umbracoRelation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoNode1] FOREIGN KEY([childId])
REFERENCES [dbo].[umbracoNode] ([id])
\go
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoNode1]
\go
/****** Object:  ForeignKey [FK_umbracoRelation_umbracoRelationType]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[umbracoRelation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoRelationType] FOREIGN KEY([relType])
REFERENCES [dbo].[umbracoRelationType] ([id])
\go
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoRelationType]
\go
/****** Object:  ForeignKey [FK_user_userType]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[umbracoUser]  WITH CHECK ADD  CONSTRAINT [FK_user_userType] FOREIGN KEY([userType])
REFERENCES [dbo].[umbracoUserType] ([id])
\go
ALTER TABLE [dbo].[umbracoUser] CHECK CONSTRAINT [FK_user_userType]
\go
/****** Object:  ForeignKey [FK_umbracoUser2NodePermission_umbracoNode]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[umbracoUser2NodePermission]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodePermission_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
\go
ALTER TABLE [dbo].[umbracoUser2NodePermission] CHECK CONSTRAINT [FK_umbracoUser2NodePermission_umbracoNode]
\go
/****** Object:  ForeignKey [FK_umbracoUser2NodePermission_umbracoUser]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[umbracoUser2NodePermission]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodePermission_umbracoUser] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
\go
ALTER TABLE [dbo].[umbracoUser2NodePermission] CHECK CONSTRAINT [FK_umbracoUser2NodePermission_umbracoUser]
\go
/****** Object:  ForeignKey [FK_umbracoUser2NodeNotify_umbracoNode]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[umbracoUser2NodeNotify]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
\go
ALTER TABLE [dbo].[umbracoUser2NodeNotify] CHECK CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoNode]
\go
/****** Object:  ForeignKey [FK_umbracoUser2NodeNotify_umbracoUser]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[umbracoUser2NodeNotify]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoUser] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
\go
ALTER TABLE [dbo].[umbracoUser2NodeNotify] CHECK CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoUser]
\go
/****** Object:  ForeignKey [FK_umbracoUser2app_umbracoApp]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[umbracoUser2app]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2app_umbracoApp] FOREIGN KEY([app])
REFERENCES [dbo].[umbracoApp] ([appAlias])
\go
ALTER TABLE [dbo].[umbracoUser2app] CHECK CONSTRAINT [FK_umbracoUser2app_umbracoApp]
\go
/****** Object:  ForeignKey [FK_umbracoUser2app_umbracoUser]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[umbracoUser2app]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2app_umbracoUser] FOREIGN KEY([user])
REFERENCES [dbo].[umbracoUser] ([id])
\go
ALTER TABLE [dbo].[umbracoUser2app] CHECK CONSTRAINT [FK_umbracoUser2app_umbracoUser]
\go
/****** Object:  ForeignKey [FK_cmsTask_cmsTaskType]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsTask]  WITH CHECK ADD  CONSTRAINT [FK_cmsTask_cmsTaskType] FOREIGN KEY([taskTypeId])
REFERENCES [dbo].[cmsTaskType] ([id])
\go
ALTER TABLE [dbo].[cmsTask] CHECK CONSTRAINT [FK_cmsTask_cmsTaskType]
\go
/****** Object:  ForeignKey [FK_cmsTask_umbracoNode]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsTask]  WITH CHECK ADD  CONSTRAINT [FK_cmsTask_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
\go
ALTER TABLE [dbo].[cmsTask] CHECK CONSTRAINT [FK_cmsTask_umbracoNode]
\go
/****** Object:  ForeignKey [FK_cmsTask_umbracoUser]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsTask]  WITH CHECK ADD  CONSTRAINT [FK_cmsTask_umbracoUser] FOREIGN KEY([parentUserId])
REFERENCES [dbo].[umbracoUser] ([id])
\go
ALTER TABLE [dbo].[cmsTask] CHECK CONSTRAINT [FK_cmsTask_umbracoUser]
\go
/****** Object:  ForeignKey [FK_cmsTask_umbracoUser1]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsTask]  WITH CHECK ADD  CONSTRAINT [FK_cmsTask_umbracoUser1] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
\go
ALTER TABLE [dbo].[cmsTask] CHECK CONSTRAINT [FK_cmsTask_umbracoUser1]
\go
/****** Object:  ForeignKey [FK_cmsDocumentType_cmsContentType]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_cmsContentType] FOREIGN KEY([contentTypeNodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
\go
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_cmsContentType]
\go
/****** Object:  ForeignKey [FK_cmsDocumentType_cmsTemplate]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_cmsTemplate] FOREIGN KEY([templateNodeId])
REFERENCES [dbo].[cmsTemplate] ([nodeId])
\go
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_cmsTemplate]
\go
/****** Object:  ForeignKey [FK_cmsDocumentType_umbracoNode]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_umbracoNode] FOREIGN KEY([contentTypeNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
\go
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_umbracoNode]
\go
/****** Object:  ForeignKey [FK_cmsDocument_cmsContent]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsDocument]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocument_cmsContent] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
\go
ALTER TABLE [dbo].[cmsDocument] CHECK CONSTRAINT [FK_cmsDocument_cmsContent]
\go
/****** Object:  ForeignKey [FK_cmsDocument_cmsTemplate]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsDocument]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocument_cmsTemplate] FOREIGN KEY([templateId])
REFERENCES [dbo].[cmsTemplate] ([nodeId])
\go
ALTER TABLE [dbo].[cmsDocument] CHECK CONSTRAINT [FK_cmsDocument_cmsTemplate]
\go
/****** Object:  ForeignKey [FK_cmsDocument_umbracoNode]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsDocument]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocument_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
\go
ALTER TABLE [dbo].[cmsDocument] CHECK CONSTRAINT [FK_cmsDocument_umbracoNode]
\go
/****** Object:  ForeignKey [FK_cmsContentXml_cmsContent]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsContentXml]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentXml_cmsContent] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
\go
ALTER TABLE [dbo].[cmsContentXml] CHECK CONSTRAINT [FK_cmsContentXml_cmsContent]
\go
/****** Object:  ForeignKey [FK_cmsContentVersion_cmsContent]    Script Date: 01/23/2011 21:15:12 ******/
ALTER TABLE [dbo].[cmsContentVersion]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentVersion_cmsContent] FOREIGN KEY([ContentId])
REFERENCES [dbo].[cmsContent] ([nodeId])
\go
ALTER TABLE [dbo].[cmsContentVersion] CHECK CONSTRAINT [FK_cmsContentVersion_cmsContent]
\go
/****** Object:  ForeignKey [FK_cmsContentTypeAllowedContentType_cmsContentType]    Script Date: 01/23/2011 21:15:13 ******/
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType] FOREIGN KEY([Id])
REFERENCES [dbo].[cmsContentType] ([nodeId])
\go
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] CHECK CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType]
\go
/****** Object:  ForeignKey [FK_cmsContentTypeAllowedContentType_cmsContentType1]    Script Date: 01/23/2011 21:15:13 ******/
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType1] FOREIGN KEY([AllowedId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
\go
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] CHECK CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType1]
\go
/****** Object:  ForeignKey [FK_cmsTab_cmsContentType]    Script Date: 01/23/2011 21:15:13 ******/
ALTER TABLE [dbo].[cmsTab]  WITH CHECK ADD  CONSTRAINT [FK_cmsTab_cmsContentType] FOREIGN KEY([contenttypeNodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
\go
ALTER TABLE [dbo].[cmsTab] CHECK CONSTRAINT [FK_cmsTab_cmsContentType]
\go
/****** Object:  ForeignKey [FK_cmsDataTypePreValues_cmsDataType]    Script Date: 01/23/2011 21:15:13 ******/
ALTER TABLE [dbo].[cmsDataTypePreValues]  WITH CHECK ADD  CONSTRAINT [FK_cmsDataTypePreValues_cmsDataType] FOREIGN KEY([datatypeNodeId])
REFERENCES [dbo].[cmsDataType] ([nodeId])
\go
ALTER TABLE [dbo].[cmsDataTypePreValues] CHECK CONSTRAINT [FK_cmsDataTypePreValues_cmsDataType]
\go
/****** Object:  ForeignKey [FK_cmsMember_cmsContent]    Script Date: 01/23/2011 21:15:13 ******/
ALTER TABLE [dbo].[cmsMember]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember_cmsContent] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
\go
ALTER TABLE [dbo].[cmsMember] CHECK CONSTRAINT [FK_cmsMember_cmsContent]
\go
/****** Object:  ForeignKey [FK_cmsMember_umbracoNode]    Script Date: 01/23/2011 21:15:13 ******/
ALTER TABLE [dbo].[cmsMember]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
\go
ALTER TABLE [dbo].[cmsMember] CHECK CONSTRAINT [FK_cmsMember_umbracoNode]
\go
/****** Object:  ForeignKey [FK_cmsMemberType_cmsContentType]    Script Date: 01/23/2011 21:15:13 ******/
ALTER TABLE [dbo].[cmsMemberType]  WITH CHECK ADD  CONSTRAINT [FK_cmsMemberType_cmsContentType] FOREIGN KEY([NodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
\go
ALTER TABLE [dbo].[cmsMemberType] CHECK CONSTRAINT [FK_cmsMemberType_cmsContentType]
\go
/****** Object:  ForeignKey [FK_cmsMemberType_umbracoNode]    Script Date: 01/23/2011 21:15:13 ******/
ALTER TABLE [dbo].[cmsMemberType]  WITH CHECK ADD  CONSTRAINT [FK_cmsMemberType_umbracoNode] FOREIGN KEY([NodeId])
REFERENCES [dbo].[umbracoNode] ([id])
\go
ALTER TABLE [dbo].[cmsMemberType] CHECK CONSTRAINT [FK_cmsMemberType_umbracoNode]
\go
/****** Object:  ForeignKey [FK_cmsPreviewXml_cmsContent]    Script Date: 01/23/2011 21:15:13 ******/
ALTER TABLE [dbo].[cmsPreviewXml]  WITH CHECK ADD  CONSTRAINT [FK_cmsPreviewXml_cmsContent] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
\go
ALTER TABLE [dbo].[cmsPreviewXml] CHECK CONSTRAINT [FK_cmsPreviewXml_cmsContent]
\go
/****** Object:  ForeignKey [FK_cmsPreviewXml_cmsContentVersion]    Script Date: 01/23/2011 21:15:13 ******/
ALTER TABLE [dbo].[cmsPreviewXml]  WITH CHECK ADD  CONSTRAINT [FK_cmsPreviewXml_cmsContentVersion] FOREIGN KEY([versionId])
REFERENCES [dbo].[cmsContentVersion] ([VersionId])
\go
ALTER TABLE [dbo].[cmsPreviewXml] CHECK CONSTRAINT [FK_cmsPreviewXml_cmsContentVersion]
\go
/****** Object:  ForeignKey [FK_cmsMember2MemberGroup_cmsMember]    Script Date: 01/23/2011 21:15:13 ******/
ALTER TABLE [dbo].[cmsMember2MemberGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember2MemberGroup_cmsMember] FOREIGN KEY([Member])
REFERENCES [dbo].[cmsMember] ([nodeId])
\go
ALTER TABLE [dbo].[cmsMember2MemberGroup] CHECK CONSTRAINT [FK_cmsMember2MemberGroup_cmsMember]
\go
/****** Object:  ForeignKey [FK_cmsMember2MemberGroup_umbracoNode]    Script Date: 01/23/2011 21:15:13 ******/
ALTER TABLE [dbo].[cmsMember2MemberGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember2MemberGroup_umbracoNode] FOREIGN KEY([MemberGroup])
REFERENCES [dbo].[umbracoNode] ([id])
\go
ALTER TABLE [dbo].[cmsMember2MemberGroup] CHECK CONSTRAINT [FK_cmsMember2MemberGroup_umbracoNode]
\go
/****** Object:  ForeignKey [FK_cmsPropertyType_cmsContentType]    Script Date: 01/23/2011 21:15:13 ******/
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_cmsContentType] FOREIGN KEY([contentTypeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
\go
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_cmsContentType]
\go
/****** Object:  ForeignKey [FK_cmsPropertyType_cmsDataType]    Script Date: 01/23/2011 21:15:13 ******/
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_cmsDataType] FOREIGN KEY([dataTypeId])
REFERENCES [dbo].[cmsDataType] ([nodeId])
\go
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_cmsDataType]
\go
/****** Object:  ForeignKey [FK_cmsPropertyType_cmsTab]    Script Date: 01/23/2011 21:15:13 ******/
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_cmsTab] FOREIGN KEY([tabId])
REFERENCES [dbo].[cmsTab] ([id])
\go
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_cmsTab]
\go
/****** Object:  ForeignKey [FK_cmsPropertyData_cmsPropertyType]    Script Date: 01/23/2011 21:15:13 ******/
ALTER TABLE [dbo].[cmsPropertyData]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyData_cmsPropertyType] FOREIGN KEY([propertytypeid])
REFERENCES [dbo].[cmsPropertyType] ([id])
\go
ALTER TABLE [dbo].[cmsPropertyData] CHECK CONSTRAINT [FK_cmsPropertyData_cmsPropertyType]
\go
/****** Object:  ForeignKey [FK_cmsPropertyData_umbracoNode]    Script Date: 01/23/2011 21:15:13 ******/
ALTER TABLE [dbo].[cmsPropertyData]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyData_umbracoNode] FOREIGN KEY([contentNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
\go
ALTER TABLE [dbo].[cmsPropertyData] CHECK CONSTRAINT [FK_cmsPropertyData_umbracoNode]
\go
