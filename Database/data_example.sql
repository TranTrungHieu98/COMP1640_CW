GO
INSERT [dbo].[asp_Role] ([name], [description], [status]) VALUES (N'0', N'Admin', 0)
GO
INSERT [dbo].[asp_Role] ([name], [description], [status]) VALUES (N'1', N'Create Report', 0)
GO
INSERT [dbo].[asp_Role] ([name], [description], [status]) VALUES (N'2', N'Review Report', 0)
GO
INSERT [dbo].[asp_Role] ([name], [description], [status]) VALUES (N'3', N'Approved Report', 0)
GO
INSERT [dbo].[asp_Group] ([id], [name], [description], [status]) VALUES (1, N'Admin', N'Super Admin', 1)
GO
INSERT [dbo].[asp_Group] ([id], [name], [description], [status]) VALUES (2, N'PVC', N'Pro-Vice Chancellor', 1)
GO
INSERT [dbo].[asp_Group] ([id], [name], [description], [status]) VALUES (3, N'DLT', N'Director of Learning and Quanlity', 1)
GO
INSERT [dbo].[asp_Group] ([id], [name], [description], [status]) VALUES (4, N'CM', N'Course Moderator', 1)
GO
INSERT [dbo].[asp_Group] ([id], [name], [description], [status]) VALUES (5, N'CL', N'Course Leader', 1)
GO
INSERT [dbo].[asp_Group] ([id], [name], [description], [status]) VALUES (6, N'GU', N'Guest', 1)
GO
INSERT [dbo].[asp_Group] ([id], [name], [description], [status]) VALUES (7, N'FC', N'Faculty', 1)
GO
INSERT [dbo].[asp_Group_Role] ([roleName], [groupid]) VALUES (N'3', 7)
GO
INSERT [dbo].[asp_User] ([account], [password], [userName], [email]) VALUES (N'Admin', N'e3afed0047b08059d0fada10f400c1e5', N'Admin', N'thanhnxgt00410@fpt.edu.vn')
GO
INSERT [dbo].[asp_User] ([account], [password], [userName], [email]) VALUES (N'CL', N'5bc574a47246f122016869b32a6aa6f0', N'CL', N'CL@gmail.com')
GO
INSERT [dbo].[asp_User] ([account], [password], [userName], [email]) VALUES (N'CM', N'707354872d4e8210a2a573b99721b1fb', N'CM', N'CM@gmail.com')
GO
INSERT [dbo].[asp_User] ([account], [password], [userName], [email]) VALUES (N'DLT', N'23309bb06584c564b83d35190d50d787', N'DLT', N'DLT@gmail.com')
GO
INSERT [dbo].[asp_User] ([account], [password], [userName], [email]) VALUES (N'Faculty1', N'443b42f06e081d282d1020017482711f', N'Faculty1', N'Faculty1@gmail.com')
GO
INSERT [dbo].[asp_User] ([account], [password], [userName], [email]) VALUES (N'PVC', N'49d0329c205f116869ae407ef2217222', N'PVC', N'PVC@gmail.com')
GO
INSERT [dbo].[asp_User_Group] ([userid], [groupid]) VALUES (N'Admin', 1)
GO
INSERT [dbo].[asp_User_Group] ([userid], [groupid]) VALUES (N'CL', 5)
GO
INSERT [dbo].[asp_User_Group] ([userid], [groupid]) VALUES (N'CM', 4)
GO
INSERT [dbo].[asp_User_Group] ([userid], [groupid]) VALUES (N'DLT', 3)
GO
INSERT [dbo].[asp_User_Group] ([userid], [groupid]) VALUES (N'Faculty1', 7)
GO
INSERT [dbo].[asp_User_Group] ([userid], [groupid]) VALUES (N'PVC', 2)
GO
SET IDENTITY_INSERT [dbo].[Report] ON 

GO
INSERT [dbo].[Report] ([ID], [CourseID], [Studentcount], [StatisticalData], [GradeDistributionData], [Status], [CLID], [CMID], [PVCID], [DLTID], [Created], [Modified]) VALUES (1, 1, 200, N'<table border="1" cellpadding="0" cellspacing="0" style="width: 100%">
        <tbody>
            <tr>
                <td colspan="7" style="width:568px;">
                    <p><strong>Statistical Data</strong></p>
                </td>
            </tr>
            <tr>
                <td style="width:81px;height:21px;">
                    <p>&nbsp;</p>
                </td>
                <td style="width:81px;height:21px;">
                    <p>CW1</p>
                </td>
                <td style="width:81px;height:21px;">
                    <p>CW2</p>
                </td>
                <td style="width:81px;height:21px;">
                    <p>CW3</p>
                </td>
                <td style="width:81px;height:21px;">
                    <p>CW4</p>
                </td>
                <td style="width:81px;height:21px;">
                    <p>EXAM</p>
                </td>
                <td style="width:81px;height:21px;">
                    <p>OVERALL</p>
                </td>
            </tr>
            <tr>
                <td style="width:81px;">
                    <p>Mean</p>
                </td>
                <td style="width:81px;">
                    <p>&nbsp;</p>
                </td>
                <td style="width:81px;">
                    <p>&nbsp;</p>
                </td>
                <td style="width:81px;">
                    <p>&nbsp;</p>
                </td>
                <td style="width:81px;">
                    <p>&nbsp;</p>
                </td>
                <td style="width:81px;">
                    <p>&nbsp;</p>
                </td>
                <td style="width:81px;">
                    <p>&nbsp;</p>
                </td>
            </tr>
            <tr>
                <td style="width:81px;">
                    <p>Median</p>
                </td>
                <td style="width:81px;">
                    <p>&nbsp;</p>
                </td>
                <td style="width:81px;">
                    <p>&nbsp;</p>
                </td>
                <td style="width:81px;">
                    <p>&nbsp;</p>
                </td>
                <td style="width:81px;">
                    <p>&nbsp;</p>
                </td>
                <td style="width:81px;">
                    <p>&nbsp;</p>
                </td>
                <td style="width:81px;">
                    <p>&nbsp;</p>
                </td>
            </tr>
            <tr>
                <td style="width:81px;">
                    <p>Standard Deviation</p>
                </td>
                <td style="width:81px;">
                    <p>&nbsp;</p>
                </td>
                <td style="width:81px;">
                    <p>&nbsp;</p>
                </td>
                <td style="width:81px;">
                    <p>&nbsp;</p>
                </td>
                <td style="width:81px;">
                    <p>&nbsp;</p>
                </td>
                <td style="width:81px;">
                    <p>&nbsp;</p>
                </td>
                <td style="width:81px;">
                    <p>&nbsp;</p>
                </td>
            </tr>
        </tbody>
    </table>', N'<table border="1" cellpadding="0" cellspacing="0" style="width: 100%">
        <tbody>
            <tr>
                <td colspan="11" style="width:568px;">
                    <p><strong>Grade Distribution Data</strong></p>
                </td>
            </tr>
            <tr>
                <td style="width:52px;">
                    <p>&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">0 &ndash; 9</p>
                </td>
                <td style="width:52px;">
                    <p align="center">10 -19</p>
                </td>
                <td style="width:52px;">
                    <p align="center">20 -29</p>
                </td>
                <td style="width:52px;">
                    <p align="center">30 -39</p>
                </td>
                <td style="width:52px;">
                    <p align="center">40 - &nbsp;49</p>
                </td>
                <td style="width:52px;">
                    <p align="center">50 - 59</p>
                </td>
                <td style="width:52px;">
                    <p align="center">60 - 69</p>
                </td>
                <td style="width:52px;">
                    <p align="center">70 - 79</p>
                </td>
                <td style="width:52px;">
                    <p align="center">80 - 89</p>
                </td>
                <td style="width:52px;">
                    <p align="center">90+</p>
                </td>
            </tr>
            <tr>
                <td style="width:52px;">
                    <p>CW1</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
            </tr>
            <tr>
                <td style="width:52px;">
                    <p>CW2</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
            </tr>
            <tr>
                <td style="width:52px;">
                    <p>CW3</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
            </tr>
            <tr>
                <td style="width:52px;">
                    <p>CW4</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
            </tr>
            <tr>
                <td style="width:52px;">
                    <p>EX</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
            </tr>
            <tr>
                <td style="width:52px;">
                    <p>OVERALL</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
                <td style="width:52px;">
                    <p align="center">&nbsp;</p>
                </td>
            </tr>
        </tbody>
    </table>', 1, N'CL', N'CM', NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Report] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

GO
INSERT [dbo].[Course] ([IDCourse], [CMID], [Dates], [Credits], [Days], [BTime], [ETime], [Location], [FID], [CLID]) VALUES (1, N'CM', N'2016-02-01 00:00:00.000', 30, 30, CAST(0x0000A59F00000000 AS DateTime), CAST(0x0000A5BB00000000 AS DateTime), N'Ha noi - VN', N'Faculty1', N'CL')
GO
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
