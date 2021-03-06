USE [ann77429_DB]

GO
INSERT [asp_User] ([account], [password], [userName], [email]) VALUES (N'Admin', N'e3afed0047b08059d0fada10f400c1e5', N'Admin', N'ducamobile@gmail.com')
INSERT [asp_User] ([account], [password], [userName], [email]) VALUES (N'Bigo92', N'c59e95d40affc8b6b916517b5d04263f', N'Nguyen Van Duc', N'ducnv.viss@gmail.com')
SET IDENTITY_INSERT [asp_Group] ON 

INSERT [asp_Group] ([id], [name], [description], [status]) VALUES (1, N'Admin', N'Ban Quản trị có đầy đủ quyền', 1)
INSERT [asp_Group] ([id], [name], [description], [status]) VALUES (2, N'Kiểm duyệt câu hỏi', N'Kiểm duyệt các câu hỏi', 1)
INSERT [asp_Group] ([id], [name], [description], [status]) VALUES (4, N'Tạo cậu hỏi', N'Tạo mới các câu hỏi', 0)
SET IDENTITY_INSERT [asp_Group] OFF
INSERT [asp_User_Group] ([userid], [groupid]) VALUES (N'Admin', 1)
INSERT [asp_User_Group] ([userid], [groupid]) VALUES (N'Bigo92', 4)
INSERT [asp_Role] ([name], [description], [status]) VALUES (N'0', N'Admin', 0)
INSERT [asp_Role] ([name], [description], [status]) VALUES (N'1', N'Cấu hình quảng cáo', 0)
INSERT [asp_Role] ([name], [description], [status]) VALUES (N'2', N'Cấu hình Game', 0)
INSERT [asp_Role] ([name], [description], [status]) VALUES (N'3', N'Cấu hình Notification', 0)
INSERT [asp_Role] ([name], [description], [status]) VALUES (N'4', N'Tạo câu hỏi', 0)
INSERT [asp_Role] ([name], [description], [status]) VALUES (N'5', N'Kiểm duyệt câu hỏi', 0)
INSERT [asp_Role] ([name], [description], [status]) VALUES (N'6', N'Quản lý câu hỏi đã kiểm duyệt', 0)
INSERT [asp_Role] ([name], [description], [status]) VALUES (N'7', N'Quản lý chủ đề', 0)
INSERT [asp_Role] ([name], [description], [status]) VALUES (N'8', N'Quản lý quyền hệ thông', 0)
INSERT [asp_Group_Role] ([roleName], [groupid]) VALUES (N'0', 1)
INSERT [asp_Group_Role] ([roleName], [groupid]) VALUES (N'4', 4)
INSERT [asp_Group_Role] ([roleName], [groupid]) VALUES (N'5', 2)



GO
SET IDENTITY_INSERT [HangFire].[Job] ON 

GO
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (100, 777, N'Succeeded', N'{"Type":"CMSCMV5.Hangfire.JobBackgroud, CMSCMV5, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"SentMailToAdmin","ParameterTypes":"[\"System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089\"]","Arguments":"[\"\\\"Nguyen Văn Đức Đã đặt oder mã:88\\\"\"]"}', N'["\"Nguyen Văn Đức Đã đặt oder mã:88\""]', CAST(0x0000A54C011D6A1B AS DateTime), CAST(0x0000A54D011D732D AS DateTime))
GO
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (101, 778, N'Succeeded', N'{"Type":"CMSCMV5.Hangfire.JobBackgroud, CMSCMV5, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"SentMailToCustomer","ParameterTypes":"[\"System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089\",\"System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089\",\"System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089\"]","Arguments":"[\"\\\"<table style=\\\\\\\"background-color:white;border:solid 5px #ffffff\\\\\\\" width=\\\\\\\"800px\\\\\\\" align=\\\\\\\"center\\\\\\\" border=\\\\\\\"0\\\\\\\" cellpadding=\\\\\\\"10\\\\\\\" cellspacing=\\\\\\\"0\\\\\\\">\\\\r\\\\n    <tbody>\\\\r\\\\n        <tr>\\\\r\\\\n            <td style=\\\\\\\"background-color:#9CD05E;color:White;font-weight:bold;font-size:20px;font-family:Arial\\\\\\\">\\\\r\\\\n                Booking Confirmation - Catba Station Travel\\\\r\\\\n            </td>\\\\r\\\\n            <td style=\\\\\\\"background-color:#9CD05E;color:White;font-size:12px;font-family:Arial\\\\\\\">\\\\r\\\\n                Date: 11/11/2015 (dd/mm/yyyy) - Email auto not reply\\\\r\\\\n            </td>\\\\r\\\\n        </tr>\\\\r\\\\n        <tr>\\\\r\\\\n            <td style=\\\\\\\"border-bottom:dotted 1px #ddd;padding-bottom:20px\\\\\\\" colspan=\\\\\\\"2\\\\\\\">\\\\r\\\\n                <img src=\\\\\\\"http://www.catbastation.com/Upload/images/Logo/logoresize.png\\\\\\\" alt=\\\\\\\"CATBASTATION\\\\\\\" height=\\\\\\\"100\\\\\\\" border=\\\\\\\"0\\\\\\\" class=\\\\\\\"CToWUd\\\\\\\">\\\\r\\\\n            </td>\\\\r\\\\n        </tr>\\\\r\\\\n        <tr>\\\\r\\\\n            <td style=\\\\\\\"font-size:12px;line-height:1.5;font-family:Arial\\\\\\\" colspan=\\\\\\\"2\\\\\\\">\\\\r\\\\n                <table width=\\\\\\\"100%\\\\\\\" cellpadding=\\\\\\\"2\\\\\\\" cellspacing=\\\\\\\"0\\\\\\\">\\\\r\\\\n                    <tbody>\\\\r\\\\n                        <tr>\\\\r\\\\n                            <td colspan=\\\\\\\"2\\\\\\\" style=\\\\\\\"font-family:Arial;font-size:20px;text-align:center;\\\\\\\" valign=\\\\\\\"top\\\\\\\" width=\\\\\\\"50%\\\\\\\">\\\\r\\\\n                                <b>BOOKING CONFIRMATION</b><br />\\\\r\\\\n                                    <span style=\\\\\\\"font-size: 16px;color: #F00;\\\\\\\">\\\\r\\\\n                                        (chưa thanh toán)\\\\r\\\\n                                    </span>\\\\r\\\\n                            </td>\\\\r\\\\n                        </tr>\\\\r\\\\n                    </tbody>\\\\r\\\\n                </table>\\\\r\\\\n            </td>\\\\r\\\\n        </tr>\\\\r\\\\n        <tr>\\\\r\\\\n            <td colspan=\\\\\\\"2\\\\\\\">\\\\r\\\\n                <div style=\\\\\\\"line-height:1.5;text-align:center\\\\\\\">\\\\r\\\\n                    ------------------------------<wbr>------------------------------<wbr>------------------------------<wbr>----------\\\\r\\\\n                </div>\\\\r\\\\n            </td>\\\\r\\\\n        </tr>\\\\r\\\\n        <tr>\\\\r\\\\n            <td colspan=\\\\\\\"2\\\\\\\" style=\\\\\\\"padding:10px;background-color:#f3ebc3;line-height:1.5;font-size:13px;font-family:Arial\\\\\\\">\\\\r\\\\n                <strong>Hi! Nguyen Văn Đức</strong>\\\\r\\\\n                <br><br/>\\\\r\\\\n                Thanks for scheduling your trip with Catba Station Travel. We would like to reserve 1 spot for you in our <a href=\\\\\\\"http://www.catbastation.com/tour/3\\\\\\\">http://www.catbastation.com/tour/3</a> on 12/11/2015 (dd/MM/yyyy).\\\\r\\\\n                <br>\\\\r\\\\n                <br>\\\\r\\\\n                &nbsp; &nbsp; &nbsp; &nbsp;- ID Oder: <strong>88</strong><br>\\\\r\\\\n                &nbsp; &nbsp; &nbsp; &nbsp;- Tour Name: <strong>Exploring local culture in Cat Ba Island</strong><br>\\\\r\\\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Time set: <strong>12/11/2015 (dd/mm/yyyy)</strong><br>\\\\r\\\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Invoice Type:\\\\r\\\\n                    <strong>\\\\r\\\\n                        Invoice to booking person/Gửi hóa đơn cho người đặt tour\\\\r\\\\n                    </strong>\\\\r\\\\n                <br />\\\\r\\\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Tour package: <strong style=\\\\\\\"color:red;\\\\\\\">160 $</strong><br>\\\\r\\\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Total Price: (1 Person): <strong style=\\\\\\\"color:red;\\\\\\\">160 $</strong><br>\\\\r\\\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Payment Type:\\\\r\\\\n                    <strong>\\\\r\\\\n                        Prepay/Thanh toán trước trước\\\\r\\\\n                    </strong><br>\\\\r\\\\n                    &nbsp; &nbsp; &nbsp;&nbsp; - Trang thanh toán trả trước:(Thanh toán) <a href=\\\\\\\"http://catbastation.com/onpay/88\\\\\\\" target=\\\\\\\"_blank\\\\\\\">http://catbastation.com/onpay/88</a><br>\\\\r\\\\n            </td>\\\\r\\\\n        </tr>\\\\r\\\\n\\\\r\\\\n        <tr>\\\\r\\\\n            <td colspan=\\\\\\\"2\\\\\\\" style=\\\\\\\"padding:10px;background-color:#D2D2D2;line-height:1.5;font-size:13px;font-family:Arial\\\\\\\">\\\\r\\\\n                &nbsp; &nbsp; &nbsp; &nbsp;- \\\\r\\\\n                    Representative/Tên Trưởng Nhóm:\\\\r\\\\n                 <strong>Nguyen Văn Đức</strong><br>\\\\r\\\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Gender/Giới tính: <strong>MALE</strong><br>\\\\r\\\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Nationality/Quốc tịch : <strong>Việt Nam</strong><br>\\\\r\\\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Passport Number/Số hộ chiếu hoặc CMND: <strong>0152654655</strong><br>\\\\r\\\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Phone/Số điện thoại: <strong>01693489360</strong><br>\\\\r\\\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Email: <strong>ducnv.viss@gmail.com</strong><br>\\\\r\\\\n                &nbsp; &nbsp; &nbsp;&nbsp; - birthday: <strong>04/03/1992 (dd/mm/yyyy)</strong><br>\\\\r\\\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Note/Nghi chú: <strong></strong><br>\\\\r\\\\n            </td>\\\\r\\\\n        </tr>        \\\\r\\\\n\\\\r\\\\n\\\\r\\\\n        <tr>\\\\r\\\\n            <td>\\\\r\\\\n                &nbsp;\\\\r\\\\n            </td>\\\\r\\\\n        </tr>\\\\r\\\\n        <tr>\\\\r\\\\n            <td colspan=\\\\\\\"2\\\\\\\" style=\\\\\\\"padding:10px;background-color:#F3CCC3;line-height:1.5;font-size:13px;font-family:Arial\\\\\\\">\\\\r\\\\n                Please find attached the invoice and the booking conditions for your reference.<br/>\\\\r\\\\n                The booking will be completely confirmed once an upfront payment in full is made within 72 hours from this confirmation receipt via the following payment gateway:\\\\r\\\\n                <a href=\\\\\\\"http://catbastation.com/onpay/88\\\\\\\" target=\\\\\\\"_blank\\\\\\\">http://catbastation.com/onpay/88</a><br />\\\\r\\\\n                and booking conditions : http://www.catbastation.com/help/data1/booking-conditions <br /><br />\\\\r\\\\n\\\\r\\\\n                We will get back with the final confirmation as soon as your payment is gone through.<br />\\\\r\\\\n                Looking forward to hearing from you soon within an absolutely  journey with Catba Station Travel.<br />\\\\r\\\\n                Thanks with best regards\\\\r\\\\n            </td>\\\\r\\\\n        </tr>\\\\r\\\\n        <tr>\\\\r\\\\n            <td colspan=\\\\\\\"2\\\\\\\">\\\\r\\\\n                <div style=\\\\\\\"line-height:1.5;text-align:center\\\\\\\">\\\\r\\\\n                    ------------------------------<wbr>------------------------------<wbr>------------------------------<wbr>----------\\\\r\\\\n                </div>\\\\r\\\\n            </td>\\\\r\\\\n        </tr>\\\\r\\\\n        <tr>\\\\r\\\\n            <td colspan=\\\\\\\"2\\\\\\\" style=\\\\\\\"padding:10px;line-height:1.5;font-size:13px;font-family:Arial\\\\\\\">\\\\r\\\\n                <b>YOUNG PASSION LIMITED COMPANY CATBA STATION TRAVEL</b><br /><br/>\\\\r\\\\n                <strong>Ha Noi Office</strong><br />\\\\r\\\\n                Address : 58 Le Duan Street, Ho Guom District, Ha Noi city, Vietnam<br /><br />\\\\r\\\\n                <strong>Cat Ba Office</strong><br />\\\\r\\\\n                Address: 231 Cai Beo street, Cat Ba town, Hai Phong city, VietNam\\\\r\\\\n                <br /><br />                \\\\r\\\\n                Email : <a style=\\\\\\\"color:Black;font-size:13px;text-decoration:none\\\\\\\" href=\\\\\\\"mailto:catbastation@gmail.com?subject=Hello\\\\\\\" target=\\\\\\\"_blank\\\\\\\">catbastation@gmail.com</a><br/>\\\\r\\\\n                Hotline : <span style=\\\\\\\"color:#ed1c24\\\\\\\"><strong>+84.165 682 8143</strong></span>  ( Mr.Binh) / <span style=\\\\\\\"color:#ed1c24\\\\\\\"><strong>964 595 159</strong></span>  ( Ms.Thuy)\\\\r\\\\n            </td>\\\\r\\\\n        </tr>\\\\r\\\\n    </tbody>\\\\r\\\\n</table>\\\\r\\\\n\\\"\",\"\\\"ducnv.viss@gmail.com\\\"\",\"\\\"Booking Confirmation\\\"\"]"}', N'["\"<table style=\\\"background-color:white;border:solid 5px #ffffff\\\" width=\\\"800px\\\" align=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"10\\\" cellspacing=\\\"0\\\">\\r\\n    <tbody>\\r\\n        <tr>\\r\\n            <td style=\\\"background-color:#9CD05E;color:White;font-weight:bold;font-size:20px;font-family:Arial\\\">\\r\\n                Booking Confirmation - Catba Station Travel\\r\\n            </td>\\r\\n            <td style=\\\"background-color:#9CD05E;color:White;font-size:12px;font-family:Arial\\\">\\r\\n                Date: 11/11/2015 (dd/mm/yyyy) - Email auto not reply\\r\\n            </td>\\r\\n        </tr>\\r\\n        <tr>\\r\\n            <td style=\\\"border-bottom:dotted 1px #ddd;padding-bottom:20px\\\" colspan=\\\"2\\\">\\r\\n                <img src=\\\"http://www.catbastation.com/Upload/images/Logo/logoresize.png\\\" alt=\\\"CATBASTATION\\\" height=\\\"100\\\" border=\\\"0\\\" class=\\\"CToWUd\\\">\\r\\n            </td>\\r\\n        </tr>\\r\\n        <tr>\\r\\n            <td style=\\\"font-size:12px;line-height:1.5;font-family:Arial\\\" colspan=\\\"2\\\">\\r\\n                <table width=\\\"100%\\\" cellpadding=\\\"2\\\" cellspacing=\\\"0\\\">\\r\\n                    <tbody>\\r\\n                        <tr>\\r\\n                            <td colspan=\\\"2\\\" style=\\\"font-family:Arial;font-size:20px;text-align:center;\\\" valign=\\\"top\\\" width=\\\"50%\\\">\\r\\n                                <b>BOOKING CONFIRMATION</b><br />\\r\\n                                    <span style=\\\"font-size: 16px;color: #F00;\\\">\\r\\n                                        (chưa thanh toán)\\r\\n                                    </span>\\r\\n                            </td>\\r\\n                        </tr>\\r\\n                    </tbody>\\r\\n                </table>\\r\\n            </td>\\r\\n        </tr>\\r\\n        <tr>\\r\\n            <td colspan=\\\"2\\\">\\r\\n                <div style=\\\"line-height:1.5;text-align:center\\\">\\r\\n                    ------------------------------<wbr>------------------------------<wbr>------------------------------<wbr>----------\\r\\n                </div>\\r\\n            </td>\\r\\n        </tr>\\r\\n        <tr>\\r\\n            <td colspan=\\\"2\\\" style=\\\"padding:10px;background-color:#f3ebc3;line-height:1.5;font-size:13px;font-family:Arial\\\">\\r\\n                <strong>Hi! Nguyen Văn Đức</strong>\\r\\n                <br><br/>\\r\\n                Thanks for scheduling your trip with Catba Station Travel. We would like to reserve 1 spot for you in our <a href=\\\"http://www.catbastation.com/tour/3\\\">http://www.catbastation.com/tour/3</a> on 12/11/2015 (dd/MM/yyyy).\\r\\n                <br>\\r\\n                <br>\\r\\n                &nbsp; &nbsp; &nbsp; &nbsp;- ID Oder: <strong>88</strong><br>\\r\\n                &nbsp; &nbsp; &nbsp; &nbsp;- Tour Name: <strong>Exploring local culture in Cat Ba Island</strong><br>\\r\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Time set: <strong>12/11/2015 (dd/mm/yyyy)</strong><br>\\r\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Invoice Type:\\r\\n                    <strong>\\r\\n                        Invoice to booking person/Gửi hóa đơn cho người đặt tour\\r\\n                    </strong>\\r\\n                <br />\\r\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Tour package: <strong style=\\\"color:red;\\\">160 $</strong><br>\\r\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Total Price: (1 Person): <strong style=\\\"color:red;\\\">160 $</strong><br>\\r\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Payment Type:\\r\\n                    <strong>\\r\\n                        Prepay/Thanh toán trước trước\\r\\n                    </strong><br>\\r\\n                    &nbsp; &nbsp; &nbsp;&nbsp; - Trang thanh toán trả trước:(Thanh toán) <a href=\\\"http://catbastation.com/onpay/88\\\" target=\\\"_blank\\\">http://catbastation.com/onpay/88</a><br>\\r\\n            </td>\\r\\n        </tr>\\r\\n\\r\\n        <tr>\\r\\n            <td colspan=\\\"2\\\" style=\\\"padding:10px;background-color:#D2D2D2;line-height:1.5;font-size:13px;font-family:Arial\\\">\\r\\n                &nbsp; &nbsp; &nbsp; &nbsp;- \\r\\n                    Representative/Tên Trưởng Nhóm:\\r\\n                 <strong>Nguyen Văn Đức</strong><br>\\r\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Gender/Giới tính: <strong>MALE</strong><br>\\r\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Nationality/Quốc tịch : <strong>Việt Nam</strong><br>\\r\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Passport Number/Số hộ chiếu hoặc CMND: <strong>0152654655</strong><br>\\r\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Phone/Số điện thoại: <strong>01693489360</strong><br>\\r\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Email: <strong>ducnv.viss@gmail.com</strong><br>\\r\\n                &nbsp; &nbsp; &nbsp;&nbsp; - birthday: <strong>04/03/1992 (dd/mm/yyyy)</strong><br>\\r\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Note/Nghi chú: <strong></strong><br>\\r\\n            </td>\\r\\n        </tr>        \\r\\n\\r\\n\\r\\n        <tr>\\r\\n            <td>\\r\\n                &nbsp;\\r\\n            </td>\\r\\n        </tr>\\r\\n        <tr>\\r\\n            <td colspan=\\\"2\\\" style=\\\"padding:10px;background-color:#F3CCC3;line-height:1.5;font-size:13px;font-family:Arial\\\">\\r\\n                Please find attached the invoice and the booking conditions for your reference.<br/>\\r\\n                The booking will be completely confirmed once an upfront payment in full is made within 72 hours from this confirmation receipt via the following payment gateway:\\r\\n                <a href=\\\"http://catbastation.com/onpay/88\\\" target=\\\"_blank\\\">http://catbastation.com/onpay/88</a><br />\\r\\n                and booking conditions : http://www.catbastation.com/help/data1/booking-conditions <br /><br />\\r\\n\\r\\n                We will get back with the final confirmation as soon as your payment is gone through.<br />\\r\\n                Looking forward to hearing from you soon within an absolutely  journey with Catba Station Travel.<br />\\r\\n                Thanks with best regards\\r\\n            </td>\\r\\n        </tr>\\r\\n        <tr>\\r\\n            <td colspan=\\\"2\\\">\\r\\n                <div style=\\\"line-height:1.5;text-align:center\\\">\\r\\n                    ------------------------------<wbr>------------------------------<wbr>------------------------------<wbr>----------\\r\\n                </div>\\r\\n            </td>\\r\\n        </tr>\\r\\n        <tr>\\r\\n            <td colspan=\\\"2\\\" style=\\\"padding:10px;line-height:1.5;font-size:13px;font-family:Arial\\\">\\r\\n                <b>YOUNG PASSION LIMITED COMPANY CATBA STATION TRAVEL</b><br /><br/>\\r\\n                <strong>Ha Noi Office</strong><br />\\r\\n                Address : 58 Le Duan Street, Ho Guom District, Ha Noi city, Vietnam<br /><br />\\r\\n                <strong>Cat Ba Office</strong><br />\\r\\n                Address: 231 Cai Beo street, Cat Ba town, Hai Phong city, VietNam\\r\\n                <br /><br />                \\r\\n                Email : <a style=\\\"color:Black;font-size:13px;text-decoration:none\\\" href=\\\"mailto:catbastation@gmail.com?subject=Hello\\\" target=\\\"_blank\\\">catbastation@gmail.com</a><br/>\\r\\n                Hotline : <span style=\\\"color:#ed1c24\\\"><strong>+84.165 682 8143</strong></span>  ( Mr.Binh) / <span style=\\\"color:#ed1c24\\\"><strong>964 595 159</strong></span>  ( Ms.Thuy)\\r\\n            </td>\\r\\n        </tr>\\r\\n    </tbody>\\r\\n</table>\\r\\n\"","\"ducnv.viss@gmail.com\"","\"Booking Confirmation\""]', CAST(0x0000A54C011D6A33 AS DateTime), CAST(0x0000A54D011D743C AS DateTime))
GO
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (102, 821, N'Failed', N'{"Type":"CMSCMV5.Hangfire.JobBackgroud, CMSCMV5, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"QuerryDRQT","ParameterTypes":"[\"System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089\"]","Arguments":"[\"\\\"fb34e7b724e4ae4f67cf8a9b86b06176\\\"\"]"}', N'["\"fb34e7b724e4ae4f67cf8a9b86b06176\""]', CAST(0x0000A54C011D7315 AS DateTime), NULL)
GO
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (103, 827, N'Succeeded', N'{"Type":"CMSCMV5.Hangfire.JobBackgroud, CMSCMV5, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"SentMailToAdmin","ParameterTypes":"[\"System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089\"]","Arguments":"[\"\\\"ThuyLinh Long Đã đặt oder mã:89\\\"\"]"}', N'["\"ThuyLinh Long Đã đặt oder mã:89\""]', CAST(0x0000A54D00996AAE AS DateTime), CAST(0x0000A54E0099807D AS DateTime))
GO
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (104, 828, N'Succeeded', N'{"Type":"CMSCMV5.Hangfire.JobBackgroud, CMSCMV5, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"SentMailToCustomer","ParameterTypes":"[\"System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089\",\"System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089\",\"System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089\"]","Arguments":"[\"\\\"<table style=\\\\\\\"background-color:white;border:solid 5px #ffffff\\\\\\\" width=\\\\\\\"800px\\\\\\\" align=\\\\\\\"center\\\\\\\" border=\\\\\\\"0\\\\\\\" cellpadding=\\\\\\\"10\\\\\\\" cellspacing=\\\\\\\"0\\\\\\\">\\\\r\\\\n    <tbody>\\\\r\\\\n        <tr>\\\\r\\\\n            <td style=\\\\\\\"background-color:#9CD05E;color:White;font-weight:bold;font-size:20px;font-family:Arial\\\\\\\">\\\\r\\\\n                Booking Confirmation - Catba Station Travel\\\\r\\\\n            </td>\\\\r\\\\n            <td style=\\\\\\\"background-color:#9CD05E;color:White;font-size:12px;font-family:Arial\\\\\\\">\\\\r\\\\n                Date: 11/11/2015 (dd/mm/yyyy) - Email auto not reply\\\\r\\\\n            </td>\\\\r\\\\n        </tr>\\\\r\\\\n        <tr>\\\\r\\\\n            <td style=\\\\\\\"border-bottom:dotted 1px #ddd;padding-bottom:20px\\\\\\\" colspan=\\\\\\\"2\\\\\\\">\\\\r\\\\n                <img src=\\\\\\\"http://www.catbastation.com/Upload/images/Logo/logoresize.png\\\\\\\" alt=\\\\\\\"CATBASTATION\\\\\\\" height=\\\\\\\"100\\\\\\\" border=\\\\\\\"0\\\\\\\" class=\\\\\\\"CToWUd\\\\\\\">\\\\r\\\\n            </td>\\\\r\\\\n        </tr>\\\\r\\\\n        <tr>\\\\r\\\\n            <td style=\\\\\\\"font-size:12px;line-height:1.5;font-family:Arial\\\\\\\" colspan=\\\\\\\"2\\\\\\\">\\\\r\\\\n                <table width=\\\\\\\"100%\\\\\\\" cellpadding=\\\\\\\"2\\\\\\\" cellspacing=\\\\\\\"0\\\\\\\">\\\\r\\\\n                    <tbody>\\\\r\\\\n                        <tr>\\\\r\\\\n                            <td colspan=\\\\\\\"2\\\\\\\" style=\\\\\\\"font-family:Arial;font-size:20px;text-align:center;\\\\\\\" valign=\\\\\\\"top\\\\\\\" width=\\\\\\\"50%\\\\\\\">\\\\r\\\\n                                <b>BOOKING CONFIRMATION</b><br />\\\\r\\\\n                                    <span style=\\\\\\\"font-size: 16px;color: #F00;\\\\\\\">\\\\r\\\\n                                        (chưa thanh toán)\\\\r\\\\n                                    </span>\\\\r\\\\n                            </td>\\\\r\\\\n                        </tr>\\\\r\\\\n                    </tbody>\\\\r\\\\n                </table>\\\\r\\\\n            </td>\\\\r\\\\n        </tr>\\\\r\\\\n        <tr>\\\\r\\\\n            <td colspan=\\\\\\\"2\\\\\\\">\\\\r\\\\n                <div style=\\\\\\\"line-height:1.5;text-align:center\\\\\\\">\\\\r\\\\n                    ------------------------------<wbr>------------------------------<wbr>------------------------------<wbr>----------\\\\r\\\\n                </div>\\\\r\\\\n            </td>\\\\r\\\\n        </tr>\\\\r\\\\n        <tr>\\\\r\\\\n            <td colspan=\\\\\\\"2\\\\\\\" style=\\\\\\\"padding:10px;background-color:#f3ebc3;line-height:1.5;font-size:13px;font-family:Arial\\\\\\\">\\\\r\\\\n                <strong>Hi! ThuyLinh Long</strong>\\\\r\\\\n                <br><br/>\\\\r\\\\n                Thanks for scheduling your trip with Catba Station Travel. We would like to reserve 1 spot for you in our <a href=\\\\\\\"http://www.catbastation.com/tour/3\\\\\\\">http://www.catbastation.com/tour/3</a> on 29/11/2015 (dd/MM/yyyy).\\\\r\\\\n                <br>\\\\r\\\\n                <br>\\\\r\\\\n                &nbsp; &nbsp; &nbsp; &nbsp;- ID Oder: <strong>89</strong><br>\\\\r\\\\n                &nbsp; &nbsp; &nbsp; &nbsp;- Tour Name: <strong>Exploring local culture in Cat Ba Island</strong><br>\\\\r\\\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Time set: <strong>29/11/2015 (dd/mm/yyyy)</strong><br>\\\\r\\\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Invoice Type:\\\\r\\\\n                    <strong>\\\\r\\\\n                        Invoice to booking person/Gửi hóa đơn cho người đặt tour\\\\r\\\\n                    </strong>\\\\r\\\\n                <br />\\\\r\\\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Tour package: <strong style=\\\\\\\"color:red;\\\\\\\">149 $</strong><br>\\\\r\\\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Total Price: (1 Person): <strong style=\\\\\\\"color:red;\\\\\\\">149 $</strong><br>\\\\r\\\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Payment Type:\\\\r\\\\n                    <strong>\\\\r\\\\n                        Prepay/Thanh toán trước trước\\\\r\\\\n                    </strong><br>\\\\r\\\\n                    &nbsp; &nbsp; &nbsp;&nbsp; - Trang thanh toán trả trước:(Thanh toán) <a href=\\\\\\\"http://catbastation.com/onpay/89\\\\\\\" target=\\\\\\\"_blank\\\\\\\">http://catbastation.com/onpay/89</a><br>\\\\r\\\\n            </td>\\\\r\\\\n        </tr>\\\\r\\\\n\\\\r\\\\n        <tr>\\\\r\\\\n            <td colspan=\\\\\\\"2\\\\\\\" style=\\\\\\\"padding:10px;background-color:#D2D2D2;line-height:1.5;font-size:13px;font-family:Arial\\\\\\\">\\\\r\\\\n                &nbsp; &nbsp; &nbsp; &nbsp;- \\\\r\\\\n                    Representative/Tên Trưởng Nhóm:\\\\r\\\\n                 <strong>ThuyLinh Long</strong><br>\\\\r\\\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Gender/Giới tính: <strong>MALE</strong><br>\\\\r\\\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Nationality/Quốc tịch : <strong>Vietnam </strong><br>\\\\r\\\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Passport Number/Số hộ chiếu hoặc CMND: <strong>080080</strong><br>\\\\r\\\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Phone/Số điện thoại: <strong>0964595159</strong><br>\\\\r\\\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Email: <strong>otono.2703@gmail.com</strong><br>\\\\r\\\\n                &nbsp; &nbsp; &nbsp;&nbsp; - birthday: <strong>11/03/1992 (dd/mm/yyyy)</strong><br>\\\\r\\\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Note/Nghi chú: <strong></strong><br>\\\\r\\\\n            </td>\\\\r\\\\n        </tr>        \\\\r\\\\n\\\\r\\\\n\\\\r\\\\n        <tr>\\\\r\\\\n            <td>\\\\r\\\\n                &nbsp;\\\\r\\\\n            </td>\\\\r\\\\n        </tr>\\\\r\\\\n        <tr>\\\\r\\\\n            <td colspan=\\\\\\\"2\\\\\\\" style=\\\\\\\"padding:10px;background-color:#F3CCC3;line-height:1.5;font-size:13px;font-family:Arial\\\\\\\">\\\\r\\\\n                Please find attached the invoice and the booking conditions for your reference.<br/>\\\\r\\\\n                The booking will be completely confirmed once an upfront payment in full is made within 72 hours from this confirmation receipt via the following payment gateway:\\\\r\\\\n                <a href=\\\\\\\"http://catbastation.com/onpay/89\\\\\\\" target=\\\\\\\"_blank\\\\\\\">http://catbastation.com/onpay/89</a><br />\\\\r\\\\n                and booking conditions : http://www.catbastation.com/help/data1/booking-conditions <br /><br />\\\\r\\\\n\\\\r\\\\n                We will get back with the final confirmation as soon as your payment is gone through.<br />\\\\r\\\\n                Looking forward to hearing from you soon within an absolutely  journey with Catba Station Travel.<br />\\\\r\\\\n                Thanks with best regards\\\\r\\\\n            </td>\\\\r\\\\n        </tr>\\\\r\\\\n        <tr>\\\\r\\\\n            <td colspan=\\\\\\\"2\\\\\\\">\\\\r\\\\n                <div style=\\\\\\\"line-height:1.5;text-align:center\\\\\\\">\\\\r\\\\n                    ------------------------------<wbr>------------------------------<wbr>------------------------------<wbr>----------\\\\r\\\\n                </div>\\\\r\\\\n            </td>\\\\r\\\\n        </tr>\\\\r\\\\n        <tr>\\\\r\\\\n            <td colspan=\\\\\\\"2\\\\\\\" style=\\\\\\\"padding:10px;line-height:1.5;font-size:13px;font-family:Arial\\\\\\\">\\\\r\\\\n                <b>YOUNG PASSION LIMITED COMPANY CATBA STATION TRAVEL</b><br /><br/>\\\\r\\\\n                <strong>Ha Noi Office</strong><br />\\\\r\\\\n                Address : 58 Le Duan Street, Ho Guom District, Ha Noi city, Vietnam<br /><br />\\\\r\\\\n                <strong>Cat Ba Office</strong><br />\\\\r\\\\n                Address: 231 Cai Beo street, Cat Ba town, Hai Phong city, VietNam\\\\r\\\\n                <br /><br />                \\\\r\\\\n                Email : <a style=\\\\\\\"color:Black;font-size:13px;text-decoration:none\\\\\\\" href=\\\\\\\"mailto:catbastation@gmail.com?subject=Hello\\\\\\\" target=\\\\\\\"_blank\\\\\\\">catbastation@gmail.com</a><br/>\\\\r\\\\n                Hotline : <span style=\\\\\\\"color:#ed1c24\\\\\\\"><strong>+84.165 682 8143</strong></span>  ( Mr.Binh) / <span style=\\\\\\\"color:#ed1c24\\\\\\\"><strong>964 595 159</strong></span>  ( Ms.Thuy)\\\\r\\\\n            </td>\\\\r\\\\n        </tr>\\\\r\\\\n    </tbody>\\\\r\\\\n</table>\\\\r\\\\n\\\"\",\"\\\"otono.2703@gmail.com\\\"\",\"\\\"Booking Confirmation\\\"\"]"}', N'["\"<table style=\\\"background-color:white;border:solid 5px #ffffff\\\" width=\\\"800px\\\" align=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"10\\\" cellspacing=\\\"0\\\">\\r\\n    <tbody>\\r\\n        <tr>\\r\\n            <td style=\\\"background-color:#9CD05E;color:White;font-weight:bold;font-size:20px;font-family:Arial\\\">\\r\\n                Booking Confirmation - Catba Station Travel\\r\\n            </td>\\r\\n            <td style=\\\"background-color:#9CD05E;color:White;font-size:12px;font-family:Arial\\\">\\r\\n                Date: 11/11/2015 (dd/mm/yyyy) - Email auto not reply\\r\\n            </td>\\r\\n        </tr>\\r\\n        <tr>\\r\\n            <td style=\\\"border-bottom:dotted 1px #ddd;padding-bottom:20px\\\" colspan=\\\"2\\\">\\r\\n                <img src=\\\"http://www.catbastation.com/Upload/images/Logo/logoresize.png\\\" alt=\\\"CATBASTATION\\\" height=\\\"100\\\" border=\\\"0\\\" class=\\\"CToWUd\\\">\\r\\n            </td>\\r\\n        </tr>\\r\\n        <tr>\\r\\n            <td style=\\\"font-size:12px;line-height:1.5;font-family:Arial\\\" colspan=\\\"2\\\">\\r\\n                <table width=\\\"100%\\\" cellpadding=\\\"2\\\" cellspacing=\\\"0\\\">\\r\\n                    <tbody>\\r\\n                        <tr>\\r\\n                            <td colspan=\\\"2\\\" style=\\\"font-family:Arial;font-size:20px;text-align:center;\\\" valign=\\\"top\\\" width=\\\"50%\\\">\\r\\n                                <b>BOOKING CONFIRMATION</b><br />\\r\\n                                    <span style=\\\"font-size: 16px;color: #F00;\\\">\\r\\n                                        (chưa thanh toán)\\r\\n                                    </span>\\r\\n                            </td>\\r\\n                        </tr>\\r\\n                    </tbody>\\r\\n                </table>\\r\\n            </td>\\r\\n        </tr>\\r\\n        <tr>\\r\\n            <td colspan=\\\"2\\\">\\r\\n                <div style=\\\"line-height:1.5;text-align:center\\\">\\r\\n                    ------------------------------<wbr>------------------------------<wbr>------------------------------<wbr>----------\\r\\n                </div>\\r\\n            </td>\\r\\n        </tr>\\r\\n        <tr>\\r\\n            <td colspan=\\\"2\\\" style=\\\"padding:10px;background-color:#f3ebc3;line-height:1.5;font-size:13px;font-family:Arial\\\">\\r\\n                <strong>Hi! ThuyLinh Long</strong>\\r\\n                <br><br/>\\r\\n                Thanks for scheduling your trip with Catba Station Travel. We would like to reserve 1 spot for you in our <a href=\\\"http://www.catbastation.com/tour/3\\\">http://www.catbastation.com/tour/3</a> on 29/11/2015 (dd/MM/yyyy).\\r\\n                <br>\\r\\n                <br>\\r\\n                &nbsp; &nbsp; &nbsp; &nbsp;- ID Oder: <strong>89</strong><br>\\r\\n                &nbsp; &nbsp; &nbsp; &nbsp;- Tour Name: <strong>Exploring local culture in Cat Ba Island</strong><br>\\r\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Time set: <strong>29/11/2015 (dd/mm/yyyy)</strong><br>\\r\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Invoice Type:\\r\\n                    <strong>\\r\\n                        Invoice to booking person/Gửi hóa đơn cho người đặt tour\\r\\n                    </strong>\\r\\n                <br />\\r\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Tour package: <strong style=\\\"color:red;\\\">149 $</strong><br>\\r\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Total Price: (1 Person): <strong style=\\\"color:red;\\\">149 $</strong><br>\\r\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Payment Type:\\r\\n                    <strong>\\r\\n                        Prepay/Thanh toán trước trước\\r\\n                    </strong><br>\\r\\n                    &nbsp; &nbsp; &nbsp;&nbsp; - Trang thanh toán trả trước:(Thanh toán) <a href=\\\"http://catbastation.com/onpay/89\\\" target=\\\"_blank\\\">http://catbastation.com/onpay/89</a><br>\\r\\n            </td>\\r\\n        </tr>\\r\\n\\r\\n        <tr>\\r\\n            <td colspan=\\\"2\\\" style=\\\"padding:10px;background-color:#D2D2D2;line-height:1.5;font-size:13px;font-family:Arial\\\">\\r\\n                &nbsp; &nbsp; &nbsp; &nbsp;- \\r\\n                    Representative/Tên Trưởng Nhóm:\\r\\n                 <strong>ThuyLinh Long</strong><br>\\r\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Gender/Giới tính: <strong>MALE</strong><br>\\r\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Nationality/Quốc tịch : <strong>Vietnam </strong><br>\\r\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Passport Number/Số hộ chiếu hoặc CMND: <strong>080080</strong><br>\\r\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Phone/Số điện thoại: <strong>0964595159</strong><br>\\r\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Email: <strong>otono.2703@gmail.com</strong><br>\\r\\n                &nbsp; &nbsp; &nbsp;&nbsp; - birthday: <strong>11/03/1992 (dd/mm/yyyy)</strong><br>\\r\\n                &nbsp; &nbsp; &nbsp;&nbsp; - Note/Nghi chú: <strong></strong><br>\\r\\n            </td>\\r\\n        </tr>        \\r\\n\\r\\n\\r\\n        <tr>\\r\\n            <td>\\r\\n                &nbsp;\\r\\n            </td>\\r\\n        </tr>\\r\\n        <tr>\\r\\n            <td colspan=\\\"2\\\" style=\\\"padding:10px;background-color:#F3CCC3;line-height:1.5;font-size:13px;font-family:Arial\\\">\\r\\n                Please find attached the invoice and the booking conditions for your reference.<br/>\\r\\n                The booking will be completely confirmed once an upfront payment in full is made within 72 hours from this confirmation receipt via the following payment gateway:\\r\\n                <a href=\\\"http://catbastation.com/onpay/89\\\" target=\\\"_blank\\\">http://catbastation.com/onpay/89</a><br />\\r\\n                and booking conditions : http://www.catbastation.com/help/data1/booking-conditions <br /><br />\\r\\n\\r\\n                We will get back with the final confirmation as soon as your payment is gone through.<br />\\r\\n                Looking forward to hearing from you soon within an absolutely  journey with Catba Station Travel.<br />\\r\\n                Thanks with best regards\\r\\n            </td>\\r\\n        </tr>\\r\\n        <tr>\\r\\n            <td colspan=\\\"2\\\">\\r\\n                <div style=\\\"line-height:1.5;text-align:center\\\">\\r\\n                    ------------------------------<wbr>------------------------------<wbr>------------------------------<wbr>----------\\r\\n                </div>\\r\\n            </td>\\r\\n        </tr>\\r\\n        <tr>\\r\\n            <td colspan=\\\"2\\\" style=\\\"padding:10px;line-height:1.5;font-size:13px;font-family:Arial\\\">\\r\\n                <b>YOUNG PASSION LIMITED COMPANY CATBA STATION TRAVEL</b><br /><br/>\\r\\n                <strong>Ha Noi Office</strong><br />\\r\\n                Address : 58 Le Duan Street, Ho Guom District, Ha Noi city, Vietnam<br /><br />\\r\\n                <strong>Cat Ba Office</strong><br />\\r\\n                Address: 231 Cai Beo street, Cat Ba town, Hai Phong city, VietNam\\r\\n                <br /><br />                \\r\\n                Email : <a style=\\\"color:Black;font-size:13px;text-decoration:none\\\" href=\\\"mailto:catbastation@gmail.com?subject=Hello\\\" target=\\\"_blank\\\">catbastation@gmail.com</a><br/>\\r\\n                Hotline : <span style=\\\"color:#ed1c24\\\"><strong>+84.165 682 8143</strong></span>  ( Mr.Binh) / <span style=\\\"color:#ed1c24\\\"><strong>964 595 159</strong></span>  ( Ms.Thuy)\\r\\n            </td>\\r\\n        </tr>\\r\\n    </tbody>\\r\\n</table>\\r\\n\"","\"otono.2703@gmail.com\"","\"Booking Confirmation\""]', CAST(0x0000A54D00996ACE AS DateTime), CAST(0x0000A54E00998138 AS DateTime))
GO
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (105, 852, N'Scheduled', N'{"Type":"CMSCMV5.Hangfire.JobBackgroud, CMSCMV5, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"QuerryDRND","ParameterTypes":"[\"System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089\"]","Arguments":"[\"\\\"a5f9b2e3f3a56bd877b86d6c9050b478\\\"\"]"}', N'["\"a5f9b2e3f3a56bd877b86d6c9050b478\""]', CAST(0x0000A54D00997BC5 AS DateTime), NULL)
GO
SET IDENTITY_INSERT [HangFire].[Job] OFF
GO
SET IDENTITY_INSERT [HangFire].[State] ON 

GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (772, 100, N'Enqueued', NULL, CAST(0x0000A54C011D6A2E AS DateTime), N'{"EnqueuedAt":"2015-11-10T17:19:09.7291516Z","Queue":"default"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (773, 101, N'Enqueued', NULL, CAST(0x0000A54C011D6A4A AS DateTime), N'{"EnqueuedAt":"2015-11-10T17:19:09.8227517Z","Queue":"default"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (774, 100, N'Processing', NULL, CAST(0x0000A54C011D6E13 AS DateTime), N'{"StartedAt":"2015-11-10T17:19:13.0675574Z","ServerId":"mb2d76:4584:562f3104-9bfd-4723-a61f-aad6ae75d872","WorkerId":"41b1f995-4a99-41d1-99ff-bd56d2ebce47"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (775, 101, N'Processing', NULL, CAST(0x0000A54C011D6E13 AS DateTime), N'{"StartedAt":"2015-11-10T17:19:13.0831575Z","ServerId":"mb2d76:4584:509af213-e368-4555-80ab-26ac204ccb43","WorkerId":"efcfba63-e2dd-4b21-9288-7fd10f9077a8"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (776, 102, N'Scheduled', NULL, CAST(0x0000A54C011D7328 AS DateTime), N'{"EnqueueAt":"2015-11-10T17:39:17.4043650Z","ScheduledAt":"2015-11-10T17:19:17.4043650Z"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (777, 100, N'Succeeded', NULL, CAST(0x0000A54C011D7328 AS DateTime), N'{"SucceededAt":"2015-11-10T17:19:17.4667652Z","PerformanceDuration":"4322","Latency":"3402"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (778, 101, N'Succeeded', NULL, CAST(0x0000A54C011D743C AS DateTime), N'{"SucceededAt":"2015-11-10T17:19:18.3715667Z","PerformanceDuration":"5240","Latency":"3322"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (779, 102, N'Enqueued', N'Triggered by DelayedJobScheduler', CAST(0x0000A54C0136C82F AS DateTime), N'{"EnqueuedAt":"2015-11-10T18:51:31.1864846Z","Queue":"default"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (780, 102, N'Processing', NULL, CAST(0x0000A54C0136D98D AS DateTime), N'{"StartedAt":"2015-11-10T18:51:46.1781110Z","ServerId":"mb2d76:16460:56b9baf4-8123-41d2-bbc3-164684b45800","WorkerId":"0de55524-31cc-4f20-991b-1bd9c0ef5953"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (781, 102, N'Failed', N'An exception occurred during performance of the job.', CAST(0x0000A54C0136DA31 AS DateTime), N'{"FailedAt":"2015-11-10T18:51:46.6929119Z","ExceptionType":"System.NullReferenceException","ExceptionMessage":"Object reference not set to an instance of an object.","ExceptionDetails":"System.NullReferenceException: Object reference not set to an instance of an object.\r\n   at CMSCMV5.Areas.Site.Models.VPCRequest.Process3PartyResponse(NameValueCollection nameValueCollection)\r\n   at CMSCMV5.Hangfire.JobBackgroud.QuerryDRQT(String token)"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (782, 102, N'Scheduled', N'Retry attempt 1 of 10: Object reference not set to an instance of an obj…', CAST(0x0000A54C0136DA31 AS DateTime), N'{"EnqueueAt":"2015-11-10T18:52:02.7085119Z","ScheduledAt":"2015-11-10T18:51:46.7085119Z"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (783, 102, N'Enqueued', N'Triggered by DelayedJobScheduler', CAST(0x0000A54C0136FD00 AS DateTime), N'{"EnqueuedAt":"2015-11-10T18:52:16.4265641Z","Queue":"default"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (784, 102, N'Processing', NULL, CAST(0x0000A54C0136FD62 AS DateTime), N'{"StartedAt":"2015-11-10T18:52:16.7541647Z","ServerId":"mb2d76:16460:56b9baf4-8123-41d2-bbc3-164684b45800","WorkerId":"0de55524-31cc-4f20-991b-1bd9c0ef5953"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (785, 102, N'Failed', N'An exception occurred during performance of the job.', CAST(0x0000A54C0136FD91 AS DateTime), N'{"FailedAt":"2015-11-10T18:52:16.8945649Z","ExceptionType":"System.NullReferenceException","ExceptionMessage":"Object reference not set to an instance of an object.","ExceptionDetails":"System.NullReferenceException: Object reference not set to an instance of an object.\r\n   at CMSCMV5.Areas.Site.Models.VPCRequest.Process3PartyResponse(NameValueCollection nameValueCollection)\r\n   at CMSCMV5.Hangfire.JobBackgroud.QuerryDRQT(String token)"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (786, 102, N'Scheduled', N'Retry attempt 2 of 10: Object reference not set to an instance of an obj…', CAST(0x0000A54C0136FD91 AS DateTime), N'{"EnqueueAt":"2015-11-10T18:52:50.9101649Z","ScheduledAt":"2015-11-10T18:52:16.9101649Z"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (787, 102, N'Enqueued', N'Triggered by DelayedJobScheduler', CAST(0x0000A54C013731C2 AS DateTime), N'{"EnqueuedAt":"2015-11-10T18:53:01.4482432Z","Queue":"default"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (788, 102, N'Processing', NULL, CAST(0x0000A54C01373258 AS DateTime), N'{"StartedAt":"2015-11-10T18:53:01.9474440Z","ServerId":"mb2d76:16460:56b9baf4-8123-41d2-bbc3-164684b45800","WorkerId":"0de55524-31cc-4f20-991b-1bd9c0ef5953"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (789, 102, N'Failed', N'An exception occurred during performance of the job.', CAST(0x0000A54C01373295 AS DateTime), N'{"FailedAt":"2015-11-10T18:53:02.1346444Z","ExceptionType":"System.NullReferenceException","ExceptionMessage":"Object reference not set to an instance of an object.","ExceptionDetails":"System.NullReferenceException: Object reference not set to an instance of an object.\r\n   at CMSCMV5.Areas.Site.Models.VPCRequest.Process3PartyResponse(NameValueCollection nameValueCollection)\r\n   at CMSCMV5.Hangfire.JobBackgroud.QuerryDRQT(String token)"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (790, 102, N'Scheduled', N'Retry attempt 3 of 10: Object reference not set to an instance of an obj…', CAST(0x0000A54C01373295 AS DateTime), N'{"EnqueueAt":"2015-11-10T18:54:48.1502444Z","ScheduledAt":"2015-11-10T18:53:02.1502444Z"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (791, 102, N'Enqueued', N'Triggered by DelayedJobScheduler', CAST(0x0000A54C0137BE78 AS DateTime), N'{"EnqueuedAt":"2015-11-10T18:55:01.5060540Z","Queue":"default"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (792, 102, N'Processing', NULL, CAST(0x0000A54C0137BF4B AS DateTime), N'{"StartedAt":"2015-11-10T18:55:02.2236553Z","ServerId":"mb2d76:16460:56b9baf4-8123-41d2-bbc3-164684b45800","WorkerId":"0de55524-31cc-4f20-991b-1bd9c0ef5953"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (793, 102, N'Failed', N'An exception occurred during performance of the job.', CAST(0x0000A54C0137BF7A AS DateTime), N'{"FailedAt":"2015-11-10T18:55:02.3640555Z","ExceptionType":"System.NullReferenceException","ExceptionMessage":"Object reference not set to an instance of an object.","ExceptionDetails":"System.NullReferenceException: Object reference not set to an instance of an object.\r\n   at CMSCMV5.Areas.Site.Models.VPCRequest.Process3PartyResponse(NameValueCollection nameValueCollection)\r\n   at CMSCMV5.Hangfire.JobBackgroud.QuerryDRQT(String token)"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (794, 102, N'Scheduled', N'Retry attempt 4 of 10: Object reference not set to an instance of an obj…', CAST(0x0000A54C0137BF7A AS DateTime), N'{"EnqueueAt":"2015-11-10T18:56:42.3796556Z","ScheduledAt":"2015-11-10T18:55:02.3796556Z"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (795, 102, N'Enqueued', N'Triggered by DelayedJobScheduler', CAST(0x0000A54C01383994 AS DateTime), N'{"EnqueuedAt":"2015-11-10T18:56:46.5722386Z","Queue":"default"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (796, 102, N'Processing', NULL, CAST(0x0000A54C01383A95 AS DateTime), N'{"StartedAt":"2015-11-10T18:56:47.4302401Z","ServerId":"mb2d76:16460:56b9baf4-8123-41d2-bbc3-164684b45800","WorkerId":"0de55524-31cc-4f20-991b-1bd9c0ef5953"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (797, 102, N'Failed', N'An exception occurred during performance of the job.', CAST(0x0000A54C01383AC4 AS DateTime), N'{"FailedAt":"2015-11-10T18:56:47.5706403Z","ExceptionType":"System.NullReferenceException","ExceptionMessage":"Object reference not set to an instance of an object.","ExceptionDetails":"System.NullReferenceException: Object reference not set to an instance of an object.\r\n   at CMSCMV5.Areas.Site.Models.VPCRequest.Process3PartyResponse(NameValueCollection nameValueCollection)\r\n   at CMSCMV5.Hangfire.JobBackgroud.QuerryDRQT(String token)"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (798, 102, N'Scheduled', N'Retry attempt 5 of 10: Object reference not set to an instance of an obj…', CAST(0x0000A54C01383AC4 AS DateTime), N'{"EnqueueAt":"2015-11-10T19:02:08.5862403Z","ScheduledAt":"2015-11-10T18:56:47.5862403Z"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (799, 102, N'Enqueued', N'Triggered by DelayedJobScheduler', CAST(0x0000A54C0139BC7B AS DateTime), N'{"EnqueuedAt":"2015-11-10T19:02:16.7312185Z","Queue":"default"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (800, 102, N'Processing', NULL, CAST(0x0000A54C0139BDAC AS DateTime), N'{"StartedAt":"2015-11-10T19:02:17.7452202Z","ServerId":"mb2d76:16460:56b9baf4-8123-41d2-bbc3-164684b45800","WorkerId":"0de55524-31cc-4f20-991b-1bd9c0ef5953"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (801, 102, N'Failed', N'An exception occurred during performance of the job.', CAST(0x0000A54C0139BDD6 AS DateTime), N'{"FailedAt":"2015-11-10T19:02:17.8856205Z","ExceptionType":"System.NullReferenceException","ExceptionMessage":"Object reference not set to an instance of an object.","ExceptionDetails":"System.NullReferenceException: Object reference not set to an instance of an object.\r\n   at CMSCMV5.Areas.Site.Models.VPCRequest.Process3PartyResponse(NameValueCollection nameValueCollection)\r\n   at CMSCMV5.Hangfire.JobBackgroud.QuerryDRQT(String token)"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (802, 102, N'Scheduled', N'Retry attempt 6 of 10: Object reference not set to an instance of an obj…', CAST(0x0000A54C0139BDD6 AS DateTime), N'{"EnqueueAt":"2015-11-10T19:14:15.8856205Z","ScheduledAt":"2015-11-10T19:02:17.8856205Z"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (803, 102, N'Enqueued', N'Triggered by DelayedJobScheduler', CAST(0x0000A54C013D08C0 AS DateTime), N'{"EnqueuedAt":"2015-11-10T19:14:17.1716838Z","Queue":"default"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (804, 102, N'Processing', NULL, CAST(0x0000A54C013D08C4 AS DateTime), N'{"StartedAt":"2015-11-10T19:14:17.1872839Z","ServerId":"mb2d76:16460:56b9baf4-8123-41d2-bbc3-164684b45800","WorkerId":"dcb0f872-cc6b-4d8e-8bd0-65032548997c"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (805, 102, N'Failed', N'An exception occurred during performance of the job.', CAST(0x0000A54C013D08F3 AS DateTime), N'{"FailedAt":"2015-11-10T19:14:17.3276841Z","ExceptionType":"System.NullReferenceException","ExceptionMessage":"Object reference not set to an instance of an object.","ExceptionDetails":"System.NullReferenceException: Object reference not set to an instance of an object.\r\n   at CMSCMV5.Areas.Site.Models.VPCRequest.Process3PartyResponse(NameValueCollection nameValueCollection)\r\n   at CMSCMV5.Hangfire.JobBackgroud.QuerryDRQT(String token)"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (806, 102, N'Scheduled', N'Retry attempt 7 of 10: Object reference not set to an instance of an obj…', CAST(0x0000A54C013D08F3 AS DateTime), N'{"EnqueueAt":"2015-11-10T19:36:22.3432841Z","ScheduledAt":"2015-11-10T19:14:17.3432841Z"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (807, 102, N'Enqueued', N'Triggered by DelayedJobScheduler', CAST(0x0000A54C01431AC2 AS DateTime), N'{"EnqueuedAt":"2015-11-10T19:36:22.8779936Z","Queue":"default"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (808, 102, N'Processing', NULL, CAST(0x0000A54C01432BD3 AS DateTime), N'{"StartedAt":"2015-11-10T19:36:37.7510382Z","ServerId":"bigmom:14024:64b4d256-0c34-4391-b5e6-576e101a4e94","WorkerId":"b2fa7094-179f-4b70-9c2a-52e3b6198f4c"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (809, 102, N'Failed', N'An exception occurred during performance of the job.', CAST(0x0000A54C01432CDB AS DateTime), N'{"FailedAt":"2015-11-10T19:36:38.5005695Z","ExceptionType":"System.NullReferenceException","ExceptionMessage":"Object reference not set to an instance of an object.","ExceptionDetails":"System.NullReferenceException: Object reference not set to an instance of an object.\r\n   at CMSCMV5.Areas.Site.Models.VPCRequest.Process3PartyResponse(NameValueCollection nameValueCollection) in c:\\Users\\BIG MOM\\Downloads\\TourMountain\\CMSCMV5\\CMSCMV5\\Areas\\Site\\Models\\VPCRequest.cs:line 114\r\n   at CMSCMV5.Hangfire.JobBackgroud.QuerryDRQT(String token) in c:\\Users\\BIG MOM\\Downloads\\TourMountain\\CMSCMV5\\CMSCMV5\\Hangfire\\JobBackgroud.cs:line 120"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (810, 102, N'Scheduled', N'Retry attempt 8 of 10: Object reference not set to an instance of an obj…', CAST(0x0000A54C01432CFE AS DateTime), N'{"EnqueueAt":"2015-11-10T20:17:18.6180918Z","ScheduledAt":"2015-11-10T19:36:38.6180918Z"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (811, 102, N'Enqueued', N'Triggered by DelayedJobScheduler', CAST(0x0000A54C014E5AB5 AS DateTime), N'{"EnqueuedAt":"2015-11-10T20:17:20.6676581Z","Queue":"default"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (812, 102, N'Processing', NULL, CAST(0x0000A54C014E5B23 AS DateTime), N'{"StartedAt":"2015-11-10T20:17:21.1202704Z","ServerId":"bigmom:14024:64b4d256-0c34-4391-b5e6-576e101a4e94","WorkerId":"b2fa7094-179f-4b70-9c2a-52e3b6198f4c"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (813, 102, N'Failed', N'An exception occurred during performance of the job.', CAST(0x0000A54C014E5BAE AS DateTime), N'{"FailedAt":"2015-11-10T20:17:21.4944160Z","ExceptionType":"System.NullReferenceException","ExceptionMessage":"Object reference not set to an instance of an object.","ExceptionDetails":"System.NullReferenceException: Object reference not set to an instance of an object.\r\n   at CMSCMV5.Areas.Site.Models.VPCRequest.Process3PartyResponse(NameValueCollection nameValueCollection) in c:\\Users\\BIG MOM\\Downloads\\TourMountain\\CMSCMV5\\CMSCMV5\\Areas\\Site\\Models\\VPCRequest.cs:line 114\r\n   at CMSCMV5.Hangfire.JobBackgroud.QuerryDRQT(String token) in c:\\Users\\BIG MOM\\Downloads\\TourMountain\\CMSCMV5\\CMSCMV5\\Hangfire\\JobBackgroud.cs:line 120"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (814, 102, N'Scheduled', N'Retry attempt 9 of 10: Object reference not set to an instance of an obj…', CAST(0x0000A54C014E5BBE AS DateTime), N'{"EnqueueAt":"2015-11-10T21:29:19.5982500Z","ScheduledAt":"2015-11-10T20:17:21.5982500Z"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (815, 102, N'Enqueued', N'Triggered by DelayedJobScheduler', CAST(0x0000A54C01622F47 AS DateTime), N'{"EnqueuedAt":"2015-11-10T21:29:32.5113177Z","Queue":"default"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (816, 102, N'Processing', NULL, CAST(0x0000A54C01622F82 AS DateTime), N'{"StartedAt":"2015-11-10T21:29:32.9436058Z","ServerId":"bigmom:14024:3f2a7b83-901d-4b9e-a660-0d4c1203c772","WorkerId":"702a5db5-9663-466b-a879-888be9396f07"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (817, 102, N'Failed', N'An exception occurred during performance of the job.', CAST(0x0000A54C01623078 AS DateTime), N'{"FailedAt":"2015-11-10T21:29:33.6320656Z","ExceptionType":"System.NullReferenceException","ExceptionMessage":"Object reference not set to an instance of an object.","ExceptionDetails":"System.NullReferenceException: Object reference not set to an instance of an object.\r\n   at CMSCMV5.Areas.Site.Models.VPCRequest.Process3PartyResponse(NameValueCollection nameValueCollection) in c:\\Users\\BIG MOM\\Downloads\\TourMountain\\CMSCMV5\\CMSCMV5\\Areas\\Site\\Models\\VPCRequest.cs:line 114\r\n   at CMSCMV5.Hangfire.JobBackgroud.QuerryDRQT(String token) in c:\\Users\\BIG MOM\\Downloads\\TourMountain\\CMSCMV5\\CMSCMV5\\Hangfire\\JobBackgroud.cs:line 120"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (818, 102, N'Scheduled', N'Retry attempt 10 of 10: Object reference not set to an instance of an obj…', CAST(0x0000A54C016230AC AS DateTime), N'{"EnqueueAt":"2015-11-10T23:20:29.7521532Z","ScheduledAt":"2015-11-10T21:29:33.7521532Z"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (819, 102, N'Enqueued', N'Triggered by DelayedJobScheduler', CAST(0x0000A54C0180B09D AS DateTime), N'{"EnqueuedAt":"2015-11-10T23:20:36.6072420Z","Queue":"default"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (820, 102, N'Processing', NULL, CAST(0x0000A54C0180B1A7 AS DateTime), N'{"StartedAt":"2015-11-10T23:20:37.6029069Z","ServerId":"bigmom:14024:3f2a7b83-901d-4b9e-a660-0d4c1203c772","WorkerId":"702a5db5-9663-466b-a879-888be9396f07"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (821, 102, N'Failed', N'An exception occurred during performance of the job.', CAST(0x0000A54C0180B260 AS DateTime), N'{"FailedAt":"2015-11-10T23:20:38.0862296Z","ExceptionType":"System.NullReferenceException","ExceptionMessage":"Object reference not set to an instance of an object.","ExceptionDetails":"System.NullReferenceException: Object reference not set to an instance of an object.\r\n   at CMSCMV5.Areas.Site.Models.VPCRequest.Process3PartyResponse(NameValueCollection nameValueCollection) in c:\\Users\\BIG MOM\\Downloads\\TourMountain\\CMSCMV5\\CMSCMV5\\Areas\\Site\\Models\\VPCRequest.cs:line 114\r\n   at CMSCMV5.Hangfire.JobBackgroud.QuerryDRQT(String token) in c:\\Users\\BIG MOM\\Downloads\\TourMountain\\CMSCMV5\\CMSCMV5\\Hangfire\\JobBackgroud.cs:line 120"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (822, 103, N'Enqueued', NULL, CAST(0x0000A54D00996AC5 AS DateTime), N'{"EnqueuedAt":"2015-11-11T09:18:34.3606585Z","Queue":"default"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (823, 104, N'Enqueued', NULL, CAST(0x0000A54D00996ACE AS DateTime), N'{"EnqueuedAt":"2015-11-11T09:18:34.5010587Z","Queue":"default"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (824, 103, N'Processing', NULL, CAST(0x0000A54D00997AD7 AS DateTime), N'{"StartedAt":"2015-11-11T09:18:48.1510827Z","ServerId":"mb2d76:11080:45d34e90-3a9f-4f0c-b6fd-9bfede7fc136","WorkerId":"f8d8a80c-ad2e-4715-9cd6-8d01ed4eafe3"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (825, 104, N'Processing', NULL, CAST(0x0000A54D00997AD7 AS DateTime), N'{"StartedAt":"2015-11-11T09:18:48.1510827Z","ServerId":"mb2d76:11080:45d34e90-3a9f-4f0c-b6fd-9bfede7fc136","WorkerId":"b010ebab-8e57-4fdb-a217-70c07953edde"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (826, 105, N'Scheduled', NULL, CAST(0x0000A54D00997BCA AS DateTime), N'{"EnqueueAt":"2015-11-11T09:38:48.9778842Z","ScheduledAt":"2015-11-11T09:18:48.9778842Z"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (827, 103, N'Succeeded', NULL, CAST(0x0000A54D00998078 AS DateTime), N'{"SucceededAt":"2015-11-11T09:18:52.9714912Z","PerformanceDuration":"4783","Latency":"13804"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (828, 104, N'Succeeded', NULL, CAST(0x0000A54D00998138 AS DateTime), N'{"SucceededAt":"2015-11-11T09:18:53.6110923Z","PerformanceDuration":"5422","Latency":"13697"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (829, 105, N'Enqueued', N'Triggered by DelayedJobScheduler', CAST(0x0000A54D00A1B2DE AS DateTime), N'{"EnqueuedAt":"2015-11-11T09:48:43.4646360Z","Queue":"default"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (830, 105, N'Processing', NULL, CAST(0x0000A54D00A1C43C AS DateTime), N'{"StartedAt":"2015-11-11T09:48:58.4406623Z","ServerId":"mb2d76:21436:73c9fd9f-b80a-46b2-80f2-63a4a0fc61a0","WorkerId":"165ff3c8-42e4-4b5d-8db9-92f972827e6c"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (831, 105, N'Failed', N'An exception occurred during performance of the job.', CAST(0x0000A54D00A1C4CD AS DateTime), N'{"FailedAt":"2015-11-11T09:48:58.8930631Z","ExceptionType":"System.AggregateException","ExceptionMessage":"One or more errors occurred.","ExceptionDetails":"System.AggregateException: One or more errors occurred. ---> System.Net.Http.HttpRequestException: An error occurred while sending the request. ---> System.Net.WebException: The underlying connection was closed: An unexpected error occurred on a send. ---> System.IO.IOException: Unable to read data from the transport connection: An existing connection was forcibly closed by the remote host. ---> System.Net.Sockets.SocketException: An existing connection was forcibly closed by the remote host\r\n   at System.Net.Sockets.Socket.EndReceive(IAsyncResult asyncResult)\r\n   at System.Net.Sockets.NetworkStream.EndRead(IAsyncResult asyncResult)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.TlsStream.EndWrite(IAsyncResult asyncResult)\r\n   at System.Net.PooledStream.EndWrite(IAsyncResult asyncResult)\r\n   at System.Net.ConnectStream.WriteHeadersCallback(IAsyncResult ar)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.HttpWebRequest.EndGetResponse(IAsyncResult asyncResult)\r\n   at System.Net.Http.HttpClientHandler.GetResponseCallback(IAsyncResult ar)\r\n   --- End of inner exception stack trace ---\r\n   --- End of inner exception stack trace ---\r\n   at System.Threading.Tasks.Task.ThrowIfExceptional(Boolean includeTaskCanceledExceptions)\r\n   at System.Threading.Tasks.Task`1.GetResultCore(Boolean waitCompletionNotification)\r\n   at System.Threading.Tasks.Task`1.get_Result()\r\n   at CMSCMV5.Hangfire.JobBackgroud.QuerryDRND(String token)\r\n---> (Inner Exception #0) System.Net.Http.HttpRequestException: An error occurred while sending the request. ---> System.Net.WebException: The underlying connection was closed: An unexpected error occurred on a send. ---> System.IO.IOException: Unable to read data from the transport connection: An existing connection was forcibly closed by the remote host. ---> System.Net.Sockets.SocketException: An existing connection was forcibly closed by the remote host\r\n   at System.Net.Sockets.Socket.EndReceive(IAsyncResult asyncResult)\r\n   at System.Net.Sockets.NetworkStream.EndRead(IAsyncResult asyncResult)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.TlsStream.EndWrite(IAsyncResult asyncResult)\r\n   at System.Net.PooledStream.EndWrite(IAsyncResult asyncResult)\r\n   at System.Net.ConnectStream.WriteHeadersCallback(IAsyncResult ar)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.HttpWebRequest.EndGetResponse(IAsyncResult asyncResult)\r\n   at System.Net.Http.HttpClientHandler.GetResponseCallback(IAsyncResult ar)\r\n   --- End of inner exception stack trace ---<---\r\n"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (832, 105, N'Scheduled', N'Retry attempt 1 of 10: One or more errors occurred.', CAST(0x0000A54D00A1C4E9 AS DateTime), N'{"EnqueueAt":"2015-11-11T09:49:29.9086631Z","ScheduledAt":"2015-11-11T09:48:58.9086631Z"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (833, 105, N'Enqueued', N'Triggered by DelayedJobScheduler', CAST(0x0000A54D00A1F93C AS DateTime), N'{"EnqueuedAt":"2015-11-11T09:49:43.6651418Z","Queue":"default"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (834, 105, N'Processing', NULL, CAST(0x0000A54D00A1F9BA AS DateTime), N'{"StartedAt":"2015-11-11T09:49:44.0863425Z","ServerId":"mb2d76:21436:73c9fd9f-b80a-46b2-80f2-63a4a0fc61a0","WorkerId":"165ff3c8-42e4-4b5d-8db9-92f972827e6c"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (835, 105, N'Failed', N'An exception occurred during performance of the job.', CAST(0x0000A54D00A1F9DB AS DateTime), N'{"FailedAt":"2015-11-11T09:49:44.1799427Z","ExceptionType":"System.AggregateException","ExceptionMessage":"One or more errors occurred.","ExceptionDetails":"System.AggregateException: One or more errors occurred. ---> System.Net.Http.HttpRequestException: An error occurred while sending the request. ---> System.Net.WebException: The underlying connection was closed: An unexpected error occurred on a send. ---> System.IO.IOException: Unable to read data from the transport connection: An existing connection was forcibly closed by the remote host. ---> System.Net.Sockets.SocketException: An existing connection was forcibly closed by the remote host\r\n   at System.Net.Sockets.Socket.EndReceive(IAsyncResult asyncResult)\r\n   at System.Net.Sockets.NetworkStream.EndRead(IAsyncResult asyncResult)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.TlsStream.EndWrite(IAsyncResult asyncResult)\r\n   at System.Net.PooledStream.EndWrite(IAsyncResult asyncResult)\r\n   at System.Net.ConnectStream.WriteHeadersCallback(IAsyncResult ar)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.HttpWebRequest.EndGetResponse(IAsyncResult asyncResult)\r\n   at System.Net.Http.HttpClientHandler.GetResponseCallback(IAsyncResult ar)\r\n   --- End of inner exception stack trace ---\r\n   --- End of inner exception stack trace ---\r\n   at System.Threading.Tasks.Task.ThrowIfExceptional(Boolean includeTaskCanceledExceptions)\r\n   at System.Threading.Tasks.Task`1.GetResultCore(Boolean waitCompletionNotification)\r\n   at System.Threading.Tasks.Task`1.get_Result()\r\n   at CMSCMV5.Hangfire.JobBackgroud.QuerryDRND(String token)\r\n---> (Inner Exception #0) System.Net.Http.HttpRequestException: An error occurred while sending the request. ---> System.Net.WebException: The underlying connection was closed: An unexpected error occurred on a send. ---> System.IO.IOException: Unable to read data from the transport connection: An existing connection was forcibly closed by the remote host. ---> System.Net.Sockets.SocketException: An existing connection was forcibly closed by the remote host\r\n   at System.Net.Sockets.Socket.EndReceive(IAsyncResult asyncResult)\r\n   at System.Net.Sockets.NetworkStream.EndRead(IAsyncResult asyncResult)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.TlsStream.EndWrite(IAsyncResult asyncResult)\r\n   at System.Net.PooledStream.EndWrite(IAsyncResult asyncResult)\r\n   at System.Net.ConnectStream.WriteHeadersCallback(IAsyncResult ar)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.HttpWebRequest.EndGetResponse(IAsyncResult asyncResult)\r\n   at System.Net.Http.HttpClientHandler.GetResponseCallback(IAsyncResult ar)\r\n   --- End of inner exception stack trace ---<---\r\n"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (836, 105, N'Scheduled', N'Retry attempt 2 of 10: One or more errors occurred.', CAST(0x0000A54D00A1F9DB AS DateTime), N'{"EnqueueAt":"2015-11-11T09:50:36.1955427Z","ScheduledAt":"2015-11-11T09:49:44.1955427Z"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (837, 105, N'Enqueued', N'Triggered by DelayedJobScheduler', CAST(0x0000A54D00A23F99 AS DateTime), N'{"EnqueuedAt":"2015-11-11T09:50:43.7096472Z","Queue":"default"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (838, 105, N'Processing', NULL, CAST(0x0000A54D00A24033 AS DateTime), N'{"StartedAt":"2015-11-11T09:50:44.2244481Z","ServerId":"mb2d76:21436:73c9fd9f-b80a-46b2-80f2-63a4a0fc61a0","WorkerId":"165ff3c8-42e4-4b5d-8db9-92f972827e6c"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (839, 105, N'Failed', N'An exception occurred during performance of the job.', CAST(0x0000A54D00A24054 AS DateTime), N'{"FailedAt":"2015-11-11T09:50:44.3180483Z","ExceptionType":"System.AggregateException","ExceptionMessage":"One or more errors occurred.","ExceptionDetails":"System.AggregateException: One or more errors occurred. ---> System.Net.Http.HttpRequestException: An error occurred while sending the request. ---> System.Net.WebException: The underlying connection was closed: An unexpected error occurred on a send. ---> System.IO.IOException: Unable to read data from the transport connection: An existing connection was forcibly closed by the remote host. ---> System.Net.Sockets.SocketException: An existing connection was forcibly closed by the remote host\r\n   at System.Net.Sockets.Socket.EndReceive(IAsyncResult asyncResult)\r\n   at System.Net.Sockets.NetworkStream.EndRead(IAsyncResult asyncResult)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.TlsStream.EndWrite(IAsyncResult asyncResult)\r\n   at System.Net.PooledStream.EndWrite(IAsyncResult asyncResult)\r\n   at System.Net.ConnectStream.WriteHeadersCallback(IAsyncResult ar)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.HttpWebRequest.EndGetResponse(IAsyncResult asyncResult)\r\n   at System.Net.Http.HttpClientHandler.GetResponseCallback(IAsyncResult ar)\r\n   --- End of inner exception stack trace ---\r\n   --- End of inner exception stack trace ---\r\n   at System.Threading.Tasks.Task.ThrowIfExceptional(Boolean includeTaskCanceledExceptions)\r\n   at System.Threading.Tasks.Task`1.GetResultCore(Boolean waitCompletionNotification)\r\n   at System.Threading.Tasks.Task`1.get_Result()\r\n   at CMSCMV5.Hangfire.JobBackgroud.QuerryDRND(String token)\r\n---> (Inner Exception #0) System.Net.Http.HttpRequestException: An error occurred while sending the request. ---> System.Net.WebException: The underlying connection was closed: An unexpected error occurred on a send. ---> System.IO.IOException: Unable to read data from the transport connection: An existing connection was forcibly closed by the remote host. ---> System.Net.Sockets.SocketException: An existing connection was forcibly closed by the remote host\r\n   at System.Net.Sockets.Socket.EndReceive(IAsyncResult asyncResult)\r\n   at System.Net.Sockets.NetworkStream.EndRead(IAsyncResult asyncResult)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.TlsStream.EndWrite(IAsyncResult asyncResult)\r\n   at System.Net.PooledStream.EndWrite(IAsyncResult asyncResult)\r\n   at System.Net.ConnectStream.WriteHeadersCallback(IAsyncResult ar)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.HttpWebRequest.EndGetResponse(IAsyncResult asyncResult)\r\n   at System.Net.Http.HttpClientHandler.GetResponseCallback(IAsyncResult ar)\r\n   --- End of inner exception stack trace ---<---\r\n"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (840, 105, N'Scheduled', N'Retry attempt 3 of 10: One or more errors occurred.', CAST(0x0000A54D00A24054 AS DateTime), N'{"EnqueueAt":"2015-11-11T09:52:24.3336483Z","ScheduledAt":"2015-11-11T09:50:44.3336483Z"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (841, 105, N'Enqueued', N'Triggered by DelayedJobScheduler', CAST(0x0000A54D00A2BAC2 AS DateTime), N'{"EnqueuedAt":"2015-11-11T09:52:28.8070318Z","Queue":"default"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (842, 105, N'Processing', NULL, CAST(0x0000A54D00A2BAC7 AS DateTime), N'{"StartedAt":"2015-11-11T09:52:28.8226318Z","ServerId":"mb2d76:21436:ad8866c3-d283-4af9-9c1b-2775d1fbb652","WorkerId":"21ef8751-1d37-44e8-ac66-af89bf136bcc"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (843, 105, N'Failed', N'An exception occurred during performance of the job.', CAST(0x0000A54D00A2BAEC AS DateTime), N'{"FailedAt":"2015-11-11T09:52:28.9474321Z","ExceptionType":"System.AggregateException","ExceptionMessage":"One or more errors occurred.","ExceptionDetails":"System.AggregateException: One or more errors occurred. ---> System.Net.Http.HttpRequestException: An error occurred while sending the request. ---> System.Net.WebException: The underlying connection was closed: An unexpected error occurred on a send. ---> System.IO.IOException: Unable to read data from the transport connection: An existing connection was forcibly closed by the remote host. ---> System.Net.Sockets.SocketException: An existing connection was forcibly closed by the remote host\r\n   at System.Net.Sockets.Socket.EndReceive(IAsyncResult asyncResult)\r\n   at System.Net.Sockets.NetworkStream.EndRead(IAsyncResult asyncResult)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.TlsStream.EndWrite(IAsyncResult asyncResult)\r\n   at System.Net.PooledStream.EndWrite(IAsyncResult asyncResult)\r\n   at System.Net.ConnectStream.WriteHeadersCallback(IAsyncResult ar)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.HttpWebRequest.EndGetResponse(IAsyncResult asyncResult)\r\n   at System.Net.Http.HttpClientHandler.GetResponseCallback(IAsyncResult ar)\r\n   --- End of inner exception stack trace ---\r\n   --- End of inner exception stack trace ---\r\n   at System.Threading.Tasks.Task.ThrowIfExceptional(Boolean includeTaskCanceledExceptions)\r\n   at System.Threading.Tasks.Task`1.GetResultCore(Boolean waitCompletionNotification)\r\n   at System.Threading.Tasks.Task`1.get_Result()\r\n   at CMSCMV5.Hangfire.JobBackgroud.QuerryDRND(String token)\r\n---> (Inner Exception #0) System.Net.Http.HttpRequestException: An error occurred while sending the request. ---> System.Net.WebException: The underlying connection was closed: An unexpected error occurred on a send. ---> System.IO.IOException: Unable to read data from the transport connection: An existing connection was forcibly closed by the remote host. ---> System.Net.Sockets.SocketException: An existing connection was forcibly closed by the remote host\r\n   at System.Net.Sockets.Socket.EndReceive(IAsyncResult asyncResult)\r\n   at System.Net.Sockets.NetworkStream.EndRead(IAsyncResult asyncResult)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.TlsStream.EndWrite(IAsyncResult asyncResult)\r\n   at System.Net.PooledStream.EndWrite(IAsyncResult asyncResult)\r\n   at System.Net.ConnectStream.WriteHeadersCallback(IAsyncResult ar)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.HttpWebRequest.EndGetResponse(IAsyncResult asyncResult)\r\n   at System.Net.Http.HttpClientHandler.GetResponseCallback(IAsyncResult ar)\r\n   --- End of inner exception stack trace ---<---\r\n"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (844, 105, N'Scheduled', N'Retry attempt 4 of 10: One or more errors occurred.', CAST(0x0000A54D00A2BAEC AS DateTime), N'{"EnqueueAt":"2015-11-11T09:55:36.9474321Z","ScheduledAt":"2015-11-11T09:52:28.9474321Z"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (845, 105, N'Enqueued', N'Triggered by DelayedJobScheduler', CAST(0x0000A54D00A39F62 AS DateTime), N'{"EnqueuedAt":"2015-11-11T09:55:43.9009745Z","Queue":"default"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (846, 105, N'Processing', NULL, CAST(0x0000A54D00A39F96 AS DateTime), N'{"StartedAt":"2015-11-11T09:55:44.0725748Z","ServerId":"mb2d76:21436:ad8866c3-d283-4af9-9c1b-2775d1fbb652","WorkerId":"21ef8751-1d37-44e8-ac66-af89bf136bcc"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (847, 105, N'Failed', N'An exception occurred during performance of the job.', CAST(0x0000A54D00A39FB7 AS DateTime), N'{"FailedAt":"2015-11-11T09:55:44.1661749Z","ExceptionType":"System.AggregateException","ExceptionMessage":"One or more errors occurred.","ExceptionDetails":"System.AggregateException: One or more errors occurred. ---> System.Net.Http.HttpRequestException: An error occurred while sending the request. ---> System.Net.WebException: The underlying connection was closed: An unexpected error occurred on a send. ---> System.IO.IOException: Unable to read data from the transport connection: An existing connection was forcibly closed by the remote host. ---> System.Net.Sockets.SocketException: An existing connection was forcibly closed by the remote host\r\n   at System.Net.Sockets.Socket.EndReceive(IAsyncResult asyncResult)\r\n   at System.Net.Sockets.NetworkStream.EndRead(IAsyncResult asyncResult)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.TlsStream.EndWrite(IAsyncResult asyncResult)\r\n   at System.Net.PooledStream.EndWrite(IAsyncResult asyncResult)\r\n   at System.Net.ConnectStream.WriteHeadersCallback(IAsyncResult ar)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.HttpWebRequest.EndGetResponse(IAsyncResult asyncResult)\r\n   at System.Net.Http.HttpClientHandler.GetResponseCallback(IAsyncResult ar)\r\n   --- End of inner exception stack trace ---\r\n   --- End of inner exception stack trace ---\r\n   at System.Threading.Tasks.Task.ThrowIfExceptional(Boolean includeTaskCanceledExceptions)\r\n   at System.Threading.Tasks.Task`1.GetResultCore(Boolean waitCompletionNotification)\r\n   at System.Threading.Tasks.Task`1.get_Result()\r\n   at CMSCMV5.Hangfire.JobBackgroud.QuerryDRND(String token)\r\n---> (Inner Exception #0) System.Net.Http.HttpRequestException: An error occurred while sending the request. ---> System.Net.WebException: The underlying connection was closed: An unexpected error occurred on a send. ---> System.IO.IOException: Unable to read data from the transport connection: An existing connection was forcibly closed by the remote host. ---> System.Net.Sockets.SocketException: An existing connection was forcibly closed by the remote host\r\n   at System.Net.Sockets.Socket.EndReceive(IAsyncResult asyncResult)\r\n   at System.Net.Sockets.NetworkStream.EndRead(IAsyncResult asyncResult)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.TlsStream.EndWrite(IAsyncResult asyncResult)\r\n   at System.Net.PooledStream.EndWrite(IAsyncResult asyncResult)\r\n   at System.Net.ConnectStream.WriteHeadersCallback(IAsyncResult ar)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.HttpWebRequest.EndGetResponse(IAsyncResult asyncResult)\r\n   at System.Net.Http.HttpClientHandler.GetResponseCallback(IAsyncResult ar)\r\n   --- End of inner exception stack trace ---<---\r\n"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (848, 105, N'Scheduled', N'Retry attempt 5 of 10: One or more errors occurred.', CAST(0x0000A54D00A39FB7 AS DateTime), N'{"EnqueueAt":"2015-11-11T10:01:25.1817750Z","ScheduledAt":"2015-11-11T09:55:44.1817750Z"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (849, 105, N'Enqueued', N'Triggered by DelayedJobScheduler', CAST(0x0000A54D00ACD751 AS DateTime), N'{"EnqueuedAt":"2015-11-11T10:29:17.3029108Z","Queue":"default"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (850, 105, N'Processing', NULL, CAST(0x0000A54D00ACE864 AS DateTime), N'{"StartedAt":"2015-11-11T10:29:32.2789371Z","ServerId":"mb2d76:9476:055824a6-0767-4903-bbf9-daebbb4809f1","WorkerId":"426586b3-a8d8-46a9-ba59-cd4a186b63c6"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (851, 105, N'Failed', N'An exception occurred during performance of the job.', CAST(0x0000A54D00ACE91A AS DateTime), N'{"FailedAt":"2015-11-11T10:29:32.8717382Z","ExceptionType":"System.AggregateException","ExceptionMessage":"One or more errors occurred.","ExceptionDetails":"System.AggregateException: One or more errors occurred. ---> System.Net.Http.HttpRequestException: An error occurred while sending the request. ---> System.Net.WebException: The underlying connection was closed: An unexpected error occurred on a send. ---> System.IO.IOException: Unable to read data from the transport connection: An existing connection was forcibly closed by the remote host. ---> System.Net.Sockets.SocketException: An existing connection was forcibly closed by the remote host\r\n   at System.Net.Sockets.Socket.EndReceive(IAsyncResult asyncResult)\r\n   at System.Net.Sockets.NetworkStream.EndRead(IAsyncResult asyncResult)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.TlsStream.EndWrite(IAsyncResult asyncResult)\r\n   at System.Net.PooledStream.EndWrite(IAsyncResult asyncResult)\r\n   at System.Net.ConnectStream.WriteHeadersCallback(IAsyncResult ar)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.HttpWebRequest.EndGetResponse(IAsyncResult asyncResult)\r\n   at System.Net.Http.HttpClientHandler.GetResponseCallback(IAsyncResult ar)\r\n   --- End of inner exception stack trace ---\r\n   --- End of inner exception stack trace ---\r\n   at System.Threading.Tasks.Task.ThrowIfExceptional(Boolean includeTaskCanceledExceptions)\r\n   at System.Threading.Tasks.Task`1.GetResultCore(Boolean waitCompletionNotification)\r\n   at System.Threading.Tasks.Task`1.get_Result()\r\n   at CMSCMV5.Hangfire.JobBackgroud.QuerryDRND(String token)\r\n---> (Inner Exception #0) System.Net.Http.HttpRequestException: An error occurred while sending the request. ---> System.Net.WebException: The underlying connection was closed: An unexpected error occurred on a send. ---> System.IO.IOException: Unable to read data from the transport connection: An existing connection was forcibly closed by the remote host. ---> System.Net.Sockets.SocketException: An existing connection was forcibly closed by the remote host\r\n   at System.Net.Sockets.Socket.EndReceive(IAsyncResult asyncResult)\r\n   at System.Net.Sockets.NetworkStream.EndRead(IAsyncResult asyncResult)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.TlsStream.EndWrite(IAsyncResult asyncResult)\r\n   at System.Net.PooledStream.EndWrite(IAsyncResult asyncResult)\r\n   at System.Net.ConnectStream.WriteHeadersCallback(IAsyncResult ar)\r\n   --- End of inner exception stack trace ---\r\n   at System.Net.HttpWebRequest.EndGetResponse(IAsyncResult asyncResult)\r\n   at System.Net.Http.HttpClientHandler.GetResponseCallback(IAsyncResult ar)\r\n   --- End of inner exception stack trace ---<---\r\n"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (852, 105, N'Scheduled', N'Retry attempt 6 of 10: One or more errors occurred.', CAST(0x0000A54D00ACE91A AS DateTime), N'{"EnqueueAt":"2015-11-11T10:41:12.8717382Z","ScheduledAt":"2015-11-11T10:29:32.8717382Z"}')
GO
SET IDENTITY_INSERT [HangFire].[State] OFF
GO
SET IDENTITY_INSERT [HangFire].[JobParameter] ON 

GO
INSERT [HangFire].[JobParameter] ([Id], [JobId], [Name], [Value]) VALUES (209, 100, N'CurrentCulture', N'"en-US"')
GO
INSERT [HangFire].[JobParameter] ([Id], [JobId], [Name], [Value]) VALUES (210, 100, N'CurrentUICulture', N'"en-US"')
GO
INSERT [HangFire].[JobParameter] ([Id], [JobId], [Name], [Value]) VALUES (211, 101, N'CurrentCulture', N'"en-US"')
GO
INSERT [HangFire].[JobParameter] ([Id], [JobId], [Name], [Value]) VALUES (212, 101, N'CurrentUICulture', N'"en-US"')
GO
INSERT [HangFire].[JobParameter] ([Id], [JobId], [Name], [Value]) VALUES (213, 102, N'CurrentCulture', N'"en-US"')
GO
INSERT [HangFire].[JobParameter] ([Id], [JobId], [Name], [Value]) VALUES (214, 102, N'CurrentUICulture', N'"en-US"')
GO
INSERT [HangFire].[JobParameter] ([Id], [JobId], [Name], [Value]) VALUES (215, 102, N'RetryCount', N'10')
GO
INSERT [HangFire].[JobParameter] ([Id], [JobId], [Name], [Value]) VALUES (216, 103, N'CurrentCulture', N'"en-US"')
GO
INSERT [HangFire].[JobParameter] ([Id], [JobId], [Name], [Value]) VALUES (217, 103, N'CurrentUICulture', N'"en-US"')
GO
INSERT [HangFire].[JobParameter] ([Id], [JobId], [Name], [Value]) VALUES (218, 104, N'CurrentCulture', N'"en-US"')
GO
INSERT [HangFire].[JobParameter] ([Id], [JobId], [Name], [Value]) VALUES (219, 104, N'CurrentUICulture', N'"en-US"')
GO
INSERT [HangFire].[JobParameter] ([Id], [JobId], [Name], [Value]) VALUES (220, 105, N'CurrentCulture', N'"en-US"')
GO
INSERT [HangFire].[JobParameter] ([Id], [JobId], [Name], [Value]) VALUES (221, 105, N'CurrentUICulture', N'"en-US"')
GO
INSERT [HangFire].[JobParameter] ([Id], [JobId], [Name], [Value]) VALUES (222, 105, N'RetryCount', N'6')
GO
SET IDENTITY_INSERT [HangFire].[JobParameter] OFF
GO
SET IDENTITY_INSERT [ann77429_admin].[Tour] ON 

GO
INSERT [ann77429_admin].[Tour] ([Id], [Name], [Desctiption], [Note], [img], [Rate], [Pice], [Has], [Need], [ModTime], [KeyWord], [Pice2], [Pice3], [isHome]) VALUES (2, N'Unique activities tour', N'&lt;strong&gt;&lt;span style=&quot;font-size:14px&quot;&gt;With the combination between mountain and ocean landscape, Cat Ba has its own unique culture and beauty. You can enjoy a night in a stilt house &amp;ndash; a traditional house of minor ethnic of Vietnam. Trekking through the forest, reach the top of mountain, kayaking in one of the most beautiful valley of Cat Ba. We&amp;rsquo;re very pleased to share these moments with you!&lt;/span&gt;&lt;/strong&gt;&lt;br /&gt;
&lt;br /&gt;
&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/BaiViet/CD06.jpg&quot; style=&quot;height:444px; width:600px&quot; /&gt;', N'2 days 1 night', N'/Upload/images/Photo/Vietnam%20food/DSC09922-1024x768%20-%20Sao.jpg', 5, 85.0000, N'&lt;ul&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;Pick up and drop off at Cat Ba island.&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;Delicious Vietnamese traditional food.&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;Entrance fees, kayak.&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;Accommodation in Cat Ba floating village.&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;Enthusiastic English speaking tour guide in day 2&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;
', N'&lt;ul&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;You should take mosquito repellent, swimming stuff, flash light, sunscreen, trekking shoes.&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;In the first night, we provide you a billingual guide book, you have to communicate with local people not only by language but also other ways. We believe it will make your experience more interesting and realistic. If you need a private english speaking guide, you have to pay extra fee.&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;
', CAST(0x0000A548013596D7 AS DateTime), N'unique-activities-tour', 79.0000, 0.0000, 1)
GO
INSERT [ann77429_admin].[Tour] ([Id], [Name], [Desctiption], [Note], [img], [Rate], [Pice], [Has], [Need], [ModTime], [KeyWord], [Pice2], [Pice3], [isHome]) VALUES (3, N'Exploring local culture in Cat Ba Island', N'&lt;strong&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&amp;ldquo;A night on the sea, a night in forest, many outdoor activities, all is very local!&amp;rdquo; The floating village in Lan Ha Bay is one of very unique residential model. A family lives in a floating house and lives with everything around them. Fishing, squid catching, growing fish and scallop&amp;hellip; your trip will be stick with a day life of local people in here. Beside that, you can enjoy a night in a stilt house &amp;ndash; a traditional house of minor ethnic of Vietnam and discover one of the most beautiful valley of Cat Ba. A night on the sea, a night in forest, all is very local, what are you expecting for? Let&amp;rsquo;s discover the beauty of local in Cat Ba with this culture tour!&lt;br /&gt;
&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/Photo/Vietnam%20food/1458706_708666862527931_785618758510849992_n.jpg&quot; style=&quot;height:339px; width:600px&quot; /&gt;&lt;/span&gt;&lt;/strong&gt;', N'3 days 2 nights', N'/Upload/images/Photo/Trekking%20Ha%20Sen%20mountain/11403473_480036155506384_4126811675176902505_n.jpg', 5, 160.0000, N'&lt;ul&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;Pick up and drop off at Cat Ba Island.&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;Delicious Vietnamese traditional food.&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;Entrance fees, kayak, bicycle.&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;Accommodation in Cat Ba floating village and Stilt House.&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;Enthusiastic English speaking tour guide in day 2 and day 3.&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;
', N'&lt;ul&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;You should take mosquito repellent, swimming stuff, flash light, sunscreen, trekking shoes.&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;In the first night, we&amp;rsquo;ll provide you a billingual guide book, you have to communicate with local people not only by language but also other ways. We believe it will make your experience more interesting and realistic. If you need a private english speaking guide, you have to pay extra fee.&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;It may be a little bit noisy at first night because of the sound from generator.&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;
', CAST(0x0000A54801370837 AS DateTime), N'exploring-local-culture-in-cat-ba-island', 149.0000, 0.0000, 1)
GO
INSERT [ann77429_admin].[Tour] ([Id], [Name], [Desctiption], [Note], [img], [Rate], [Pice], [Has], [Need], [ModTime], [KeyWord], [Pice2], [Pice3], [isHome]) VALUES (5, N'Exploring local culture', N'&lt;strong&gt;&lt;span style=&quot;font-size:14px&quot;&gt;With the combination between mountain and ocean landscape, Cat Ba has its own unique culture. The floating village in Lan Ha Bay is one of very unique residential model. A family lives in a floating house and lives with everything around them. Fishing, squid catching, growing fish and scallop&amp;hellip; your trip will be stick with a day life of local people in here. Let&amp;rsquo;s discover the beauty of local in Cat Ba with this culture tour!&lt;br /&gt;
&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/Photo/Thinh%20Linh%20valley/11212725_944715538873401_4422107061443659498_o.jpg&quot; style=&quot;height:338px; width:600px&quot; /&gt;&lt;/span&gt;&lt;/strong&gt;', N'2 days 1 night', N'/Upload/images/Photo/Trekking%20Ha%20Sen%20mountain/12038174_10156047742280203_2287508406361252973_n.jpg', 5, 109.0000, N'&lt;ul&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;Pick up and drop off at Cat Ba island.&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;Delicious Vietnamese traditional food.&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;Entrance fees, kayak.&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;Accommodation in Cat Ba floating village.&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;Enthusiastic English speaking tour guide in day 2&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;div&gt;&amp;nbsp;&lt;/div&gt;
', N'&lt;ul&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;You should take mosquito repellent, swimming stuff, flash light, sunscreen, trekking shoes.&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;In the first night, we provide you a billingual guide book, you have to communicate with local people not only by language but also other ways. We believe it will make your experience more interesting and realistic. If you need a private english speaking guide, you have to pay extra fee.&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;It may be a little bit noisy at night because of the sound from generator.&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;div&gt;&amp;nbsp;&lt;/div&gt;
', CAST(0x0000A54801365C84 AS DateTime), N'exploring-local-culture', 95.0000, 0.0000, 1)
GO
INSERT [ann77429_admin].[Tour] ([Id], [Name], [Desctiption], [Note], [img], [Rate], [Pice], [Has], [Need], [ModTime], [KeyWord], [Pice2], [Pice3], [isHome]) VALUES (7, N'Homestay in floating village', N'&lt;strong&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Homestay is an ideal form of &amp;ldquo;green tourism&amp;rdquo; for people who love exploring culture in new places. When travelling in such a form, instead of staying in hotels or motels, visitors will stay at a host family in order to have a friendly view and closer to their lifestyle and culture. A homestay participant is considered a family member and participates in daily activities and chatting with others. Homestay visitors at Lan Ha fishing village will experience interesting things such as dining out together, sleeping and fishing with fishermen. Moreover, visitors can stay and enjoy the peaceful atmosphere in a boat house, which is surrounded by the ocean with limestone mountains.&lt;br /&gt;
&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/Photo/Cooking%20class/Ch%C6%B0a%20c__%C3%B3%20t%C3%AAn.jpg&quot; style=&quot;height:360px; width:600px&quot; /&gt;&lt;/span&gt;&lt;/strong&gt;', N'2 days 1 night', N'/Upload/images/Photo/Homestay/10547753_873586499321003_5028877704542038465_o.jpg', 5, 1.0000, N'&lt;ul&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;Delicious Vietnamese traditional food.&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;Entrance fees, transport&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;Accommodation in Cat Ba floating village.&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;
', N'&lt;ul&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;You should take mosquito repellent, swimming stuff, flash light, sunscreen,&amp;nbsp;&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;In the first night, we provide you a billingual guide book, you have to communicate with local people not only by language but also other ways. We believe it will make your experience more interesting and realistic. If you need a private english speaking guide, you have to pay extra fee.&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;It may be a little bit noisy at night because of the sound from generator.&lt;/strong&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;
', CAST(0x0000A54D0089583C AS DateTime), N'homestay-in-floating-village', 25.0000, 0.0000, 1)
GO
SET IDENTITY_INSERT [ann77429_admin].[Tour] OFF
GO
SET IDENTITY_INSERT [ann77429_admin].[SceduTour] ON 

GO
INSERT [ann77429_admin].[SceduTour] ([Id], [TourId], [DateName], [Description]) VALUES (71, 5, N'Day 1: Ha Noi – Cat Ba – Lan Ha Ba', N'&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;11:00 &amp;ndash; 16:30&amp;nbsp;&lt;/strong&gt;&lt;br /&gt;
The bus depart from Luong Yen Bus Station in Hanoi to transport you directly to Cat Ba Island.&lt;br /&gt;
&lt;strong&gt;16:30 &amp;ndash; 17:00 &lt;/strong&gt;&lt;br /&gt;
Our staff will welcome you at the bus stop in center town of Cat Ba and take you to Cai Beo Harbour.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;17:00 &amp;ndash; 17:40 &lt;/strong&gt;&lt;br /&gt;
Your trip will be started by a local small boat. The boat will take you from Bai Beo Harbour to floating home-stay house. It will take around 40 minutes and you can enjoy the beauty of nature in Lan Ha Bay.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;18:00 &amp;ndash; 19:00 &lt;/strong&gt;&lt;br /&gt;
Prepare your bed and go to see around the house.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;19:00 &lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Have a dinner with seafood with the host and after that, you can discover their night work by yourself. Fishing, squid catching,&amp;hellip; and if you are a smoker, don&amp;rsquo;t forget to try vietnamese tobaco &amp;ndash; Thuoc Lao!&lt;/span&gt;&lt;/p&gt;
')
GO
INSERT [ann77429_admin].[SceduTour] ([Id], [TourId], [DateName], [Description]) VALUES (72, 5, N'Day 2: (You can customize your tour)', N'&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;Lan Ha Bay &amp;ndash; Hang Vem cave &amp;ndash; Ha Noi&lt;/strong&gt;&lt;br /&gt;
&lt;strong&gt;06:30 &amp;ndash; 07:00 &lt;/strong&gt;&lt;br /&gt;
Have breakfast with the seafood you&amp;rsquo;d catched in the previous night.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;07:15 &amp;ndash; 08:00 &lt;/strong&gt;&lt;br /&gt;
The boat will take you back to Cai Beo harbour.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;08:00 &amp;ndash; 08:15 &lt;/strong&gt;&lt;br /&gt;
Move to Hang Vem cave area. This is a beautiful lake in a valley and you can discover it by kayaking&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;08:30 &amp;ndash; 11:00 &lt;/strong&gt;&lt;br /&gt;
Kayaking time. Enjoy the beauty of landscape of the valley and cave.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;11:00 &amp;ndash; 12:30 &lt;/strong&gt;&lt;br /&gt;
Back to Ben Beo and have lunch.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;12:30 &amp;ndash; 15:00&lt;/strong&gt;&lt;br /&gt;
Free time in center town to discover the market, souvernir shop, coffee shop.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;15:00 &lt;/strong&gt;&lt;br /&gt;
You have to appear at the bus stop on time. The departure time is 15:15.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;19:00 &lt;/strong&gt;&lt;br /&gt;
Arrive Hanoi. Drop you off at Luong Yen bus station. End the trip. Lan Ha Bay &amp;ndash; Ha Sen Mountain &amp;ndash; Hanoi&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;Lan Ha Bay &amp;ndash; Ha Sen Mountain &amp;ndash; Hanoi&lt;/strong&gt;&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;06:30 &amp;ndash; 07:00 &lt;/strong&gt;&lt;br /&gt;
Have breakfast with the seafood you&amp;rsquo;d catched in the previous night.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;07:15 &amp;ndash; 08:00 &lt;/strong&gt;&lt;br /&gt;
The boat will take you back to Cai Beo harbour.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;08:00 &amp;ndash; 10:00 &lt;/strong&gt;&lt;br /&gt;
Trekking on Ha Sen Mountain with experience local guide (4km away from the center town). This is a hard trekking tour which require participant some interest and skills in climbing. When you reach to the top of moutain, you can see the whole island and the bay.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;10:00 &amp;ndash; 12:00 &lt;/strong&gt;&lt;br /&gt;
Move back to stilt house to have lunch.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;12:00 &amp;ndash; 15:00 &lt;/strong&gt;&lt;br /&gt;
Free time in Cat Ba center town to discover the market, souvernir shop, coffee shop.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;15:00 &lt;/strong&gt;&lt;br /&gt;
You have to appear at the bus stop on time. The departure time is 15:15.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;19:00 &lt;/strong&gt;&lt;br /&gt;
Arrive Hanoi. Drop you off at Luong Yen bus station. End the trip.&lt;/span&gt;&lt;/p&gt;
')
GO
INSERT [ann77429_admin].[SceduTour] ([Id], [TourId], [DateName], [Description]) VALUES (77, 2, N'Day 1 : Ha Noi – Cat Ba – Ha Sen mountain', N'&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;7:15 &amp;ndash; 11:30 &lt;/strong&gt;&lt;br /&gt;
The bus depart from Luong Yen Bus Station in Hanoi to transport you directly to Cat Ba Island.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;11:30 &amp;ndash; 12:00 &lt;/strong&gt;&lt;br /&gt;
Our staff will welcome you at the bus stop in center town and pick you to the Stilt house.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;12:00 &lt;/strong&gt;&lt;br /&gt;
Have lunch at stilt house.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;14:00 &amp;ndash; 17:00&lt;/strong&gt;&amp;nbsp;&lt;br /&gt;
Trekking on Ha Sen Moutain with experience local guide (4km away from the center town). This is a hard trekking tour which require participant some interest and skills in climbing. When you reach to the top of moutain, you can see the whole island and the bay.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;19:00 &lt;/strong&gt;&lt;br /&gt;
Enjoy the BBQ at Stilt house&lt;/span&gt;')
GO
INSERT [ann77429_admin].[SceduTour] ([Id], [TourId], [DateName], [Description]) VALUES (78, 2, N'Day 2: (You can customize your tour)', N'&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;Lan Ha Bay &amp;ndash; Hang Vem cave &amp;ndash; Ha Noi&lt;/strong&gt;&lt;br /&gt;
&lt;strong&gt;06:30 &amp;ndash; 07:00 &lt;/strong&gt;&lt;br /&gt;
Have breakfast&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;07:15 &amp;ndash; 08:00 &lt;/strong&gt;&lt;br /&gt;
The boat will take you back to Cai Beo harbour.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;08:00 &amp;ndash; 08:15 &lt;/strong&gt;&lt;br /&gt;
Move to Hang Vem cave area. This is a beautiful lake in a valley and you can discover it by kayaking&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;08:30 &amp;ndash; 11:00 &lt;/strong&gt;&lt;br /&gt;
Kayaking time. Enjoy the beauty of landscape of the valley and cave.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;11:00 &amp;ndash; 12:30 &lt;/strong&gt;&lt;br /&gt;
Back to Ben Beo and have lunch.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;12:30 &amp;ndash; 15:00 &lt;/strong&gt;&lt;br /&gt;
Free time in center town to discover the market, souvernir shop, coffee shop.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;15:00 &lt;/strong&gt;&lt;br /&gt;
You have to appear at the bus stop on time. The departure time is 15:15.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;19:00 &lt;/strong&gt;&lt;br /&gt;
Arrive Hanoi. Drop you off at Luong Yen bus station. End the trip.&lt;/span&gt;')
GO
INSERT [ann77429_admin].[SceduTour] ([Id], [TourId], [DateName], [Description]) VALUES (79, 3, N'Day 1: Ha Noi – Cat Ba – Lan Ha Bay', N'&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;11:00 &amp;ndash; 16:30&amp;nbsp;&lt;/strong&gt;&lt;br /&gt;
The bus depart from Lương Y&amp;ecirc;n Bus Station in Hanoi to transport you directly to C&amp;aacute;t B&amp;agrave; Island.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;16:30 &amp;ndash; 17:00&amp;nbsp;&lt;/strong&gt;&lt;br /&gt;
Our staff will welcome you at the bus stop in center town of Cat Ba and take you to Cai Beo Harbour.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;17:00 &amp;ndash; 17:40&amp;nbsp;&lt;/strong&gt;&lt;br /&gt;
Your trip will be started by a local small boat. The boat will take you from Bai Beo Harbour to floating home-stay house. It will take around 40 minutes and you can enjoy the beauty of nature in Lan Ha Bay.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;18:00 &amp;ndash; 19:00&amp;nbsp;&lt;/strong&gt;&lt;br /&gt;
Prepare your bed and go to see around the house.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;19:00&amp;nbsp;&lt;/strong&gt;&lt;br /&gt;
Have a dinner with seafood with the host and after that, you can discover their night work by yourself. Fishing, squid catching,&amp;hellip; and if you are a smoker, don&amp;rsquo;t forget to try vietnamese tobaco &amp;ndash; Thuoc Lao!&lt;/span&gt;')
GO
INSERT [ann77429_admin].[SceduTour] ([Id], [TourId], [DateName], [Description]) VALUES (80, 3, N'Day 2 :Lan Ha Bay – Ha Sen Moutain – Stilt house', N'&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;06:30 &amp;ndash; 07:00 &lt;/strong&gt;&lt;br /&gt;
Have breakfast with the seafood you&amp;rsquo;d catched in the previous night.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;07:15 &amp;ndash; 08:00 &lt;/strong&gt;&lt;br /&gt;
The boat will take you back to Cai Beo harbour.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;08:00 &amp;ndash; 10:00 &lt;/strong&gt;&lt;br /&gt;
Trekking on Ha Sen Moutain with experience local guide (4km away from the center town). This is a hard trekking tour which require participant some interest and skills in climbing. When you reach to the top of moutain, you can see the whole island and the bay.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;10:00 &amp;ndash; 12:00 &lt;/strong&gt;&lt;br /&gt;
&amp;nbsp;Move back to stilt house to have lunch.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;12:30 &amp;ndash; 18:00 &lt;/strong&gt;&lt;br /&gt;
&amp;nbsp;Free time to discover the market, souvernir shop, coffee shop and the island.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;19:00 &lt;/strong&gt;&lt;br /&gt;
&amp;nbsp;BBQ meal at the stilt house.&lt;/span&gt;&lt;br /&gt;
&amp;nbsp;')
GO
INSERT [ann77429_admin].[SceduTour] ([Id], [TourId], [DateName], [Description]) VALUES (81, 3, N'Day 3 :Stilt house – Hang Vem Cave – Hanoi', N'&lt;br /&gt;
&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;07:00&lt;/strong&gt;&lt;br /&gt;
Have breakfast.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;08:00 &amp;ndash; 08:15 &lt;/strong&gt;&lt;br /&gt;
Move to Hang Vem cave area. This is a beautiful lake in a valley and you can discover it by kayaking.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;08:30 &amp;ndash; 11:00 &lt;/strong&gt;&lt;br /&gt;
Kayaking time. Enjoy the beauty of landscape of the valley and cave.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;12:00 &lt;/strong&gt;&lt;br /&gt;
&amp;nbsp;Have lunch at Stilt house.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;15:30 &lt;/strong&gt;&lt;br /&gt;
&amp;nbsp;The bus will pick you up.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;19:00 &lt;/strong&gt;&lt;br /&gt;
Arrive Hanoi. Drop you off at Luong Yen Bus station. End the trip.&lt;/span&gt;&lt;br /&gt;
&amp;nbsp;')
GO
INSERT [ann77429_admin].[SceduTour] ([Id], [TourId], [DateName], [Description]) VALUES (95, 7, N'Day 1: Cat Ba – Lan Ha Bay', N'&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;16:30 &amp;ndash; 17:00&amp;nbsp;&lt;/strong&gt;&lt;br /&gt;
Our staff will welcome you at &amp;nbsp;at Catba Station office near&amp;nbsp;Cai Beo harbour.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;17:00 &amp;ndash; 17:40&amp;nbsp;&lt;/strong&gt;&lt;br /&gt;
Your trip will be started by a local small boat. The boat will take you from Bai Beo Harbour to floating home-stay house. It will take around 40 minutes and you can enjoy the beauty of nature in Lan Ha Bay.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;18:00 &amp;ndash; 19:00&amp;nbsp;&lt;/strong&gt;&lt;br /&gt;
Prepare your bed and go to see around the house.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Have a dinner with seafood with the host and after that, you can discover their night work by yourself. Fishing, squid catching,&amp;hellip; and if you are a smoker, don&amp;rsquo;t forget to try vietnamese tobaco &amp;ndash; Thuoc Lao!&lt;/span&gt;&lt;/p&gt;
')
GO
INSERT [ann77429_admin].[SceduTour] ([Id], [TourId], [DateName], [Description]) VALUES (96, 7, N'Day 2 :Lan Ha Bay –  Ben Beo harbour', N'&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;07:30 &amp;ndash; 08:00&amp;nbsp;&lt;/strong&gt;&lt;br /&gt;
Have breakfast with the seafood you&amp;rsquo;d catched in the previous night.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;09:00 &amp;ndash; 09:30&amp;nbsp;&lt;/strong&gt;&lt;br /&gt;
The boat will take you back to Cai Beo harbour.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;10:00&amp;nbsp;&amp;ndash; 10:30&lt;/strong&gt;&lt;br /&gt;
Arrive Ben Beo harbour. Our staff will take you back hotel. End trip Homestay in floating village.&lt;/span&gt;&lt;br /&gt;
&lt;br /&gt;
&amp;nbsp;')
GO
SET IDENTITY_INSERT [ann77429_admin].[SceduTour] OFF
GO
SET IDENTITY_INSERT [ann77429_admin].[OderTour] ON 

GO
INSERT [ann77429_admin].[OderTour] ([Id], [TourId], [Description], [Type], [StartDate], [EndDate]) VALUES (1, 2, N'&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;&lt;em&gt;Price:&lt;/em&gt;&lt;/strong&gt;&lt;/span&gt;
&lt;table border=&quot;1&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot;&gt;
	&lt;tbody&gt;
		&lt;tr&gt;
			&lt;td style=&quot;width:156px&quot;&gt;&amp;nbsp;&lt;/td&gt;
			&lt;td style=&quot;width:156px&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Dorm (8 pax/room)&lt;/span&gt;&lt;/td&gt;
			&lt;td style=&quot;width:156px&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Private room&lt;/span&gt;&lt;/td&gt;
			&lt;td style=&quot;width:156px&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Bungalow (family)&lt;/span&gt;&lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td style=&quot;width:156px&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Standard Price&lt;/span&gt;&lt;/td&gt;
			&lt;td style=&quot;width:156px&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;$85&lt;/span&gt;&lt;/td&gt;
			&lt;td style=&quot;width:156px&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;$99&lt;/span&gt;&lt;/td&gt;
			&lt;td style=&quot;width:156px&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;$105&lt;/span&gt;&lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td style=&quot;width:156px&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;*Group Price (&amp;gt;4&amp;nbsp; pax)&lt;/span&gt;&lt;/td&gt;
			&lt;td style=&quot;width:156px&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;$79&lt;/span&gt;&lt;/td&gt;
			&lt;td style=&quot;width:156px&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;$92&lt;/span&gt;&lt;/td&gt;
			&lt;td style=&quot;width:156px&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;$99&lt;/span&gt;&lt;/td&gt;
		&lt;/tr&gt;
	&lt;/tbody&gt;
&lt;/table&gt;
&lt;span style=&quot;font-size:14px&quot;&gt; (*) &lt;em&gt;Private room and bungalow is for 2 people and 4 people respectively, if you want single supply, please pay as standard price.&lt;br /&gt;
&lt;strong&gt;Optional: &lt;/strong&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/em&gt;&lt;br /&gt;
- Motorbike for rent:&amp;nbsp; +$8/bike&lt;br /&gt;
- Bicycle for rent:&amp;nbsp; +$5/bike&lt;br /&gt;
- Trekking Thinh Linh Valley tour in Hang Vem: $10/person&lt;/span&gt;&lt;br /&gt;
&amp;nbsp;', 0, CAST(0x0000A53800871098 AS DateTime), CAST(0x0000A53800871098 AS DateTime))
GO
INSERT [ann77429_admin].[OderTour] ([Id], [TourId], [Description], [Type], [StartDate], [EndDate]) VALUES (2, 3, N'&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;&lt;em&gt;Price:&lt;/em&gt;&lt;/strong&gt;&lt;br /&gt;
&lt;em&gt;*Dorm/private room/Bungalow only apply for stilt house&lt;/em&gt;&lt;br /&gt;
&lt;em&gt;** Private room and bungalow is for 2 people and 4 people respectively, if you want single supply, please pay as standard price.&lt;/em&gt;&lt;/span&gt;
&lt;table border=&quot;1&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot;&gt;
	&lt;tbody&gt;
		&lt;tr&gt;
			&lt;td style=&quot;width:156px&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/td&gt;
			&lt;td style=&quot;width:156px&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Dorm (8 pax/room)&lt;/span&gt;&lt;/td&gt;
			&lt;td style=&quot;width:156px&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Private room&lt;/span&gt;&lt;/td&gt;
			&lt;td style=&quot;width:156px&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Bungalow (family)&lt;/span&gt;&lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td style=&quot;width:156px&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Standard price&lt;/span&gt;&lt;/td&gt;
			&lt;td style=&quot;width:156px&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;$160&lt;/span&gt;&lt;/td&gt;
			&lt;td style=&quot;width:156px&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;$180&lt;/span&gt;&lt;/td&gt;
			&lt;td style=&quot;width:156px&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;$190&lt;/span&gt;&lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td style=&quot;width:156px&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;**Group price (&amp;gt; 4 pax)&lt;/span&gt;&lt;/td&gt;
			&lt;td style=&quot;width:156px&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;$149&lt;/span&gt;&lt;/td&gt;
			&lt;td style=&quot;width:156px&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;$169&lt;/span&gt;&lt;/td&gt;
			&lt;td style=&quot;width:156px&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;$179&lt;/span&gt;&lt;/td&gt;
		&lt;/tr&gt;
	&lt;/tbody&gt;
&lt;/table&gt;
&lt;span style=&quot;font-size:14px&quot;&gt;&amp;nbsp;&lt;br /&gt;
&lt;strong&gt;&lt;em&gt;Optional: &lt;/em&gt;&lt;/strong&gt;&lt;br /&gt;
- Motorbike for rent:&amp;nbsp; +$8/bike&lt;br /&gt;
- Trekking Thinh Linh Valley tour in Hang Vem: $10/person&lt;/span&gt;', 0, CAST(0x0000A5380086A869 AS DateTime), CAST(0x0000A5380086A869 AS DateTime))
GO
INSERT [ann77429_admin].[OderTour] ([Id], [TourId], [Description], [Type], [StartDate], [EndDate]) VALUES (3, 5, N'&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;&lt;em&gt;Price:&lt;/em&gt;&lt;/strong&gt;&lt;/span&gt;
&lt;table border=&quot;1&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot;&gt;
	&lt;tbody&gt;
		&lt;tr&gt;
			&lt;td style=&quot;width:156px&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/td&gt;
			&lt;td style=&quot;width:156px&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Single&lt;/span&gt;&lt;/td&gt;
			&lt;td style=&quot;width:156px&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Group of more than 4&lt;/span&gt;&lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td style=&quot;width:156px&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Price&lt;/span&gt;&lt;/td&gt;
			&lt;td style=&quot;width:156px&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;$109&lt;/span&gt;&lt;/td&gt;
			&lt;td style=&quot;width:156px&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;$95&lt;/span&gt;&lt;/td&gt;
		&lt;/tr&gt;
	&lt;/tbody&gt;
&lt;/table&gt;
&lt;span style=&quot;font-size:14px&quot;&gt;&amp;nbsp;&lt;br /&gt;
&lt;em&gt;&lt;strong&gt;Optional:&lt;/strong&gt; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/em&gt;&lt;br /&gt;
- Motorbike for rent:&amp;nbsp; +$8/bike&lt;br /&gt;
- Bicycle for rent:&amp;nbsp; +$5/bike&lt;br /&gt;
- Trekking Thinh Linh Valley tour in Hang Vem: $10/person&lt;/span&gt;&lt;br /&gt;
&amp;nbsp;', 0, CAST(0x0000A53800886C2D AS DateTime), CAST(0x0000A53800886C2D AS DateTime))
GO
INSERT [ann77429_admin].[OderTour] ([Id], [TourId], [Description], [Type], [StartDate], [EndDate]) VALUES (4, 7, N'&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;&lt;em&gt;&amp;nbsp; Price:&lt;/em&gt;&lt;/strong&gt;&lt;/span&gt;&amp;nbsp;
&lt;table border=&quot;1&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot;&gt;
	&lt;tbody&gt;
		&lt;tr&gt;
			&lt;td&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/td&gt;
			&lt;td&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; Single &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/td&gt;
			&lt;td&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;Group of more than 4 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;Price&lt;/td&gt;
			&lt;td&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;$1&lt;/td&gt;
			&lt;td&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;$25&lt;/td&gt;
		&lt;/tr&gt;
	&lt;/tbody&gt;
&lt;/table&gt;
&lt;br /&gt;
&lt;span style=&quot;font-size:14px&quot;&gt;&lt;em&gt;&lt;strong&gt;&amp;nbsp;Optional:&lt;/strong&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/em&gt;&lt;br /&gt;
- Motorbike for rent:&amp;nbsp; +$8/bike&lt;br /&gt;
- Bicycle for rent:&amp;nbsp; +$5/bike&lt;/span&gt;&lt;br /&gt;
&amp;nbsp;', 0, CAST(0x0000A54D00892C9D AS DateTime), CAST(0x0000A54D00892C9D AS DateTime))
GO
SET IDENTITY_INSERT [ann77429_admin].[OderTour] OFF
GO
SET IDENTITY_INSERT [ann77429_admin].[BookTour] ON 

GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (30, 7, 1, 30.0000, 1, 1, CAST(0x0000A54D00000000 AS DateTime), CAST(0x0000A54500A3381B AS DateTime), 1, N'', CAST(0x0000A54700C9F163 AS DateTime), CAST(0x0000A54700C9FF5B AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (38, 7, 1, 30.0000, 1, 1, CAST(0x0000A54700000000 AS DateTime), CAST(0x0000A54500D9A2C1 AS DateTime), 2, N'a308906a4a7dd0053250ae328c26eabd', CAST(0x0000A54700C9F163 AS DateTime), CAST(0x0000A54700C9FF5B AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (46, 2, 1, 85.0000, 1, 1, CAST(0x0000A54C00000000 AS DateTime), CAST(0x0000A5450160EE41 AS DateTime), 2, N'a93570f0569ad42a0dfc95ddc7f0d896', CAST(0x0000A54700C9F163 AS DateTime), CAST(0x0000A54700C9FF5B AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (51, 5, 1, 109.0000, 1, 1, CAST(0x0000A54700000000 AS DateTime), CAST(0x0000A54600E6CE9F AS DateTime), 2, N'3aae800afc6636216bd162e6e448f6a7', CAST(0x0000A54700C9F163 AS DateTime), CAST(0x0000A54700C9FF5B AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (52, 5, 1, 109.0000, 1, 1, CAST(0x0000A54700000000 AS DateTime), CAST(0x0000A54600EA6CC3 AS DateTime), 2, N'22ba28ea4a023adf8f2feb02c70e6ff0', CAST(0x0000A54700C9F163 AS DateTime), CAST(0x0000A54700C9FF5B AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (53, 7, 1, 30.0000, 1, 1, CAST(0x0000A54700000000 AS DateTime), CAST(0x0000A546017D7B6B AS DateTime), 1, N'', CAST(0x0000A54700C9F163 AS DateTime), CAST(0x0000A54700C9FF5B AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (54, 7, 1, 30.0000, 1, 1, CAST(0x0000A54700000000 AS DateTime), CAST(0x0000A546017DBD0A AS DateTime), 1, N'', CAST(0x0000A54700C9F163 AS DateTime), CAST(0x0000A54700C9FF5B AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (55, 7, 1, 30.0000, 1, 1, CAST(0x0000A54700000000 AS DateTime), CAST(0x0000A546017DED22 AS DateTime), 1, N'', CAST(0x0000A54700C9F163 AS DateTime), CAST(0x0000A54700C9FF5B AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (56, 7, 1, 30.0000, 1, 1, CAST(0x0000A54700000000 AS DateTime), CAST(0x0000A5460182DE96 AS DateTime), 1, N'', CAST(0x0000A54700C9F163 AS DateTime), CAST(0x0000A54700C9FF5B AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (57, 7, 1, 30.0000, 1, 1, CAST(0x0000A54900000000 AS DateTime), CAST(0x0000A54700756A48 AS DateTime), 2, N'c5cb88e6ffb31b92c5a0e65d4b011ebc', CAST(0x0000A54700C9F163 AS DateTime), CAST(0x0000A54700C9FF5B AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (58, 2, 1, 85.0000, 1, 1, CAST(0x0000A54900000000 AS DateTime), CAST(0x0000A5470095C992 AS DateTime), 4, N'e5e5457825571c28d2fe3466162d7bce', CAST(0x0000A54700C9F163 AS DateTime), CAST(0x0000A54700C9FF5B AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (59, 7, 1, 30.0000, 1, 1, CAST(0x0000A54700000000 AS DateTime), CAST(0x0000A547009A2416 AS DateTime), 2, N'b620159d3cd200f798d01c6611201b95', CAST(0x0000A54700C9F163 AS DateTime), CAST(0x0000A54700C9FF5B AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (60, 2, 1, 85.0000, 1, 1, CAST(0x0000A54800000000 AS DateTime), CAST(0x0000A547009BE505 AS DateTime), 2, N'97c4ec4e63dfa75a3ad38ebb08e629ed', CAST(0x0000A54700C9F163 AS DateTime), CAST(0x0000A54700C9FF5B AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (61, 2, 1, 85.0000, 1, 1, CAST(0x0000A54800000000 AS DateTime), CAST(0x0000A54700ABD9EB AS DateTime), 2, N'be4d246e456cb165964d23cc625c5036', CAST(0x0000A54700C9F163 AS DateTime), CAST(0x0000A54700C9FF5B AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (62, 7, 1, 30.0000, 1, 1, CAST(0x0000A54800000000 AS DateTime), CAST(0x0000A54700B5B8F7 AS DateTime), 2, N'52c1bf4d254cf690d8a8c3c946aa0140', CAST(0x0000A54700C9F163 AS DateTime), CAST(0x0000A54700C9FF5B AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (63, 5, 1, 109.0000, 1, 1, CAST(0x0000A55600000000 AS DateTime), CAST(0x0000A54700D5CA71 AS DateTime), 4, N'efb2644faa969791a6ab46a8b5ff9d3f', CAST(0x0000A54700D4DAA6 AS DateTime), CAST(0x0000A54700D4E8B0 AS DateTime), 242852000.0000, N'1513067', 22280.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (64, 5, 1, 109.0000, 1, 1, CAST(0x0000A54900000000 AS DateTime), CAST(0x0000A54700E96AA2 AS DateTime), 2, N'1a29452781ad593503a4cb7de825bb9b', CAST(0x0000A54700E91C35 AS DateTime), CAST(0x0000A54700E96AA2 AS DateTime), 0.0000, NULL, 22280.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (65, 2, 2, 85.0000, 1, 1, CAST(0x0000A54800000000 AS DateTime), CAST(0x0000A54700EA11DF AS DateTime), 4, N'7102c1d2994a427bda3a26803456f7b4', CAST(0x0000A54700E98E31 AS DateTime), CAST(0x0000A54700E99C36 AS DateTime), 3787600.0000, N'1513075', 22280.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (66, 2, 1, 85.0000, 1, 1, CAST(0x0000A55000000000 AS DateTime), CAST(0x0000A5470112D375 AS DateTime), 2, N'd61195bdcc5b0deb8b0a9176c03397a0', CAST(0x0000A54701127001 AS DateTime), CAST(0x0000A5470112D375 AS DateTime), 0.0000, NULL, 22285.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (67, 7, 1, 30.0000, 1, 1, CAST(0x0000A55C00000000 AS DateTime), CAST(0x0000A54B00ADE2C7 AS DateTime), 1, N'', CAST(0x0000A54B00ADE2C7 AS DateTime), CAST(0x0000A54B00ADE2C7 AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (68, 7, 1, 30.0000, 1, 1, CAST(0x0000A55C00000000 AS DateTime), CAST(0x0000A54B00AE6574 AS DateTime), 1, N'', CAST(0x0000A54B00AE6574 AS DateTime), CAST(0x0000A54B00AE6574 AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (69, 7, 1, 30.0000, 1, 1, CAST(0x0000A54E00000000 AS DateTime), CAST(0x0000A54B00AE954B AS DateTime), 1, N'', CAST(0x0000A54B00AE954B AS DateTime), CAST(0x0000A54B00AE954B AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (70, 7, 1, 30.0000, 1, 1, CAST(0x0000A55C00000000 AS DateTime), CAST(0x0000A54B00AE9EF2 AS DateTime), 1, N'', CAST(0x0000A54B00AE9EF2 AS DateTime), CAST(0x0000A54B00AE9EF2 AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (71, 7, 1, 30.0000, 1, 1, CAST(0x0000A54E00000000 AS DateTime), CAST(0x0000A54B00AE9FB2 AS DateTime), 1, N'', CAST(0x0000A54B00AE9FB2 AS DateTime), CAST(0x0000A54B00AE9FB2 AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (72, 7, 1, 30.0000, 1, 1, CAST(0x0000A54E00000000 AS DateTime), CAST(0x0000A54B00AF222B AS DateTime), 1, N'', CAST(0x0000A54B00AF222B AS DateTime), CAST(0x0000A54B00AF222B AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (73, 7, 1, 30.0000, 1, 1, CAST(0x0000A54C00000000 AS DateTime), CAST(0x0000A54B00AF40A0 AS DateTime), 1, N'', CAST(0x0000A54B00AF40A0 AS DateTime), CAST(0x0000A54B00AF40A0 AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (74, 7, 1, 30.0000, 1, 1, CAST(0x0000A55C00000000 AS DateTime), CAST(0x0000A54B00B02A27 AS DateTime), 1, N'', CAST(0x0000A54B00B02A27 AS DateTime), CAST(0x0000A54B00B02A27 AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (75, 7, 1, 30.0000, 1, 1, CAST(0x0000A54C00000000 AS DateTime), CAST(0x0000A54B0114DECD AS DateTime), 1, N'', CAST(0x0000A54B0114DECD AS DateTime), CAST(0x0000A54B0114DECD AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (76, 7, 1, 30.0000, 1, 1, CAST(0x0000A54D00000000 AS DateTime), CAST(0x0000A54B011E5389 AS DateTime), 1, N'', CAST(0x0000A54B011E5389 AS DateTime), CAST(0x0000A54B011E5389 AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (77, 7, 1, 30.0000, 1, 1, CAST(0x0000A54F00000000 AS DateTime), CAST(0x0000A54B01253A8C AS DateTime), 1, N'', CAST(0x0000A54B01253A8C AS DateTime), CAST(0x0000A54B01253A8C AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (78, 7, 1, 30.0000, 1, 1, CAST(0x0000A54F00000000 AS DateTime), CAST(0x0000A54B01284AF1 AS DateTime), 2, N'c766d95074ee8c6d85c08e9cf821a0ac', CAST(0x0000A54B01253A9F AS DateTime), CAST(0x0000A54B01284AF1 AS DateTime), 0.0000, NULL, 22380.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (79, 7, 1, 30.0000, 1, 1, CAST(0x0000A54F00000000 AS DateTime), CAST(0x0000A54B01254969 AS DateTime), 1, N'', CAST(0x0000A54B01254969 AS DateTime), CAST(0x0000A54B01254969 AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (80, 7, 1, 30.0000, 1, 1, CAST(0x0000A54F00000000 AS DateTime), CAST(0x0000A54B0125742B AS DateTime), 1, N'', CAST(0x0000A54B0125742B AS DateTime), CAST(0x0000A54B0125742B AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (81, 7, 1, 30.0000, 1, 1, CAST(0x0000A54F00000000 AS DateTime), CAST(0x0000A54B012612AB AS DateTime), 1, N'', CAST(0x0000A54B012612AB AS DateTime), CAST(0x0000A54B012612AB AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (82, 5, 1, 109.0000, 1, 1, CAST(0x0000A55C00000000 AS DateTime), CAST(0x0000A54B0126601C AS DateTime), 1, N'', CAST(0x0000A54B0126601C AS DateTime), CAST(0x0000A54B0126601C AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (83, 5, 1, 109.0000, 1, 1, CAST(0x0000A54E00000000 AS DateTime), CAST(0x0000A54B012C94DC AS DateTime), 1, N'', CAST(0x0000A54B012C94DC AS DateTime), CAST(0x0000A54B012C94DC AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (84, 5, 1, 109.0000, 1, 1, CAST(0x0000A54E00000000 AS DateTime), CAST(0x0000A54B012C9CBE AS DateTime), 1, N'', CAST(0x0000A54B012C9CBE AS DateTime), CAST(0x0000A54B012C9CBE AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (85, 5, 1, 109.0000, 1, 1, CAST(0x0000A54E00000000 AS DateTime), CAST(0x0000A54B012CFA03 AS DateTime), 1, N'', CAST(0x0000A54B012CFA03 AS DateTime), CAST(0x0000A54B012CFA03 AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (86, 5, 1, 109.0000, 1, 1, CAST(0x0000A54F00000000 AS DateTime), CAST(0x0000A54B012FD2B4 AS DateTime), 2, N'4b4bdb784426d9bf3a172dfc8f9406d7', CAST(0x0000A54B012F6014 AS DateTime), CAST(0x0000A54B012FD2B4 AS DateTime), 0.0000, NULL, 22380.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (87, 3, 1, 160.0000, 1, 1, CAST(0x0000A54800000000 AS DateTime), CAST(0x0000A54B01317C2F AS DateTime), 1, N'', CAST(0x0000A54B01317C2F AS DateTime), CAST(0x0000A54B01317C2F AS DateTime), 0.0000, NULL, 0.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (88, 3, 1, 160.0000, 1, 1, CAST(0x0000A54E00000000 AS DateTime), CAST(0x0000A54D00054C51 AS DateTime), 2, N'fb34e7b724e4ae4f67cf8a9b86b06176', CAST(0x0000A54D00054307 AS DateTime), CAST(0x0000A54D00054C51 AS DateTime), 0.0000, NULL, 22350.0000)
GO
INSERT [ann77429_admin].[BookTour] ([Id], [TourId], [Quantity], [Price], [TypePay], [TypeBill], [BookDate], [ModDate], [Status], [Token], [CreateDate], [PaymentDate], [vpc_Amount], [vpc_TransactionNo], [ExchangeRates]) VALUES (89, 3, 1, 149.0000, 1, 1, CAST(0x0000A55F00000000 AS DateTime), CAST(0x0000A54D010CD6FC AS DateTime), 2, N'a5f9b2e3f3a56bd877b86d6c9050b478', CAST(0x0000A54D010CC55C AS DateTime), CAST(0x0000A54D010CD6FC AS DateTime), 0.0000, NULL, 22350.0000)
GO
SET IDENTITY_INSERT [ann77429_admin].[BookTour] OFF
GO
SET IDENTITY_INSERT [ann77429_admin].[InformationBook] ON 

GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (27, 30, N'Thuy', N'Ta', N'098767890', N'otono.2703@gmail.com', N'FEMALE', CAST(0xDD180B00 AS Date), N'bh', N'0997790', N'Vietnam ', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (35, 38, N'Nguyen Văn', N'Đức', N'01693489360', N'ducnv.viss@gmail.com', N'MALE', CAST(0xDC180B00 AS Date), N'bh', N'0152654655', N'Việt Nam', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (43, 46, N'Thuy', N'Ta', N'07896867', N'otono.2703@gmail.com', N'MALE', CAST(0xE9180B00 AS Date), N'ax', N'7899', N'Vietnam ', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (48, 51, N'Nguyễn Văn', N'Đức', N'01693489360', N'ducnv.viss@gmail.com', N'MALE', CAST(0xDB180B00 AS Date), N'vn', N'123123123', N'Việt Nam', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (49, 52, N'Nguyễn Văn', N'Đức', N'02154564', N'ducnv.viss@gmail.com', N'MALE', CAST(0xDC180B00 AS Date), N'vn', N'2131231', N'Việt Nam', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (50, 53, N'Nguyen Văn', N'Đức', N'01693489360', N'ducnv.viss@gmail.com', N'MALE', CAST(0xDB180B00 AS Date), N'vn', N'0152654655', N'Việt Nam', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (51, 54, N'Nguyen Văn', N'Đức', N'01693489360', N'ducnv.viss@gmail.com', N'MALE', CAST(0xDB180B00 AS Date), N'vn', N'0152654655', N'Việt Nam', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (52, 55, N'Nguyen Văn', N'Đức', N'01693489360', N'ducnv.viss@gmail.com', N'MALE', CAST(0xDB180B00 AS Date), N'vn', N'0152654655', N'Việt Nam', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (53, 56, N'Nguyen Văn', N'Đức', N'01693489360', N'ducnv.viss@gmail.com', N'MALE', CAST(0xDB180B00 AS Date), N'vn', N'0152654655', N'Việt Nam', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (54, 57, N'Thuy', N'Ta', N'090909000', N'otono.2703@gmail.com', N'MALE', CAST(0xE4180B00 AS Date), N'ax', N'080080', N'Vietnam ', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (55, 58, N'thuận', N'OP test', N'0123456789', N'thuanmd_68@yahoo.com', N'MALE', CAST(0xDD180B00 AS Date), N'vn', N'0123456789', N'vn', N'test', 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (56, 59, N'Nguyễn Văn', N'Đức', N'01693489360', N'ducnv.viss@gmail.com', N'MALE', CAST(0xDC180B00 AS Date), N'vn', N'01321465', N'Việt Nam', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (57, 60, N'Nguyễn Văn Đức', N'Đức', N'02566555', N'asdasdưqweqeqw', N'MALE', CAST(0xDC180B00 AS Date), N'vn', N'12312312312', N'vn', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (58, 61, N'Nguyen Van', N'Duc', N'01564646', N'ducnv.viss@gmail.com', N'MALE', CAST(0xDC180B00 AS Date), N'vn', N'2135464654654', N'Viet Nam', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (59, 62, N'Nguyễn Văn', N'Đức', N'0456995', N'ducnv.viss@gmail.com', N'MALE', CAST(0xDB180B00 AS Date), N'vn', N'21312312', N'Việt Nam', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (60, 63, N'Nguyễn Văn', N'Đức', N'01693489360', N'ducnv.viss@gmail.com', N'MALE', CAST(0xDB180B00 AS Date), N'vn', N'132145646', N'Việt Nam', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (61, 64, N'thuận', N'OP test', N'0123456789', N'thuanmd_68@yahoo.com', N'MALE', CAST(0xDC180B00 AS Date), N'af', N'0123456789', N'vn', N'test', 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (62, 65, N'Nguyen Van', N'Duc', N'01564646', N'ducnv.viss@gmail.com', N'MALE', CAST(0xDC180B00 AS Date), N'vn', N'2135464654654', N'Viet Nam', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (63, 65, N'Nguyễn Bá', N'Đạt', N'01675564077', N'datnbdsadwxy.viss@gmail.com', N'MALE', CAST(0xEB180B00 AS Date), N'vn', N'02354646', N'Việt Nam', N'say xe', 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (64, 66, N'Thuy', N'Ta', N'0898765', N'otono.2703@gmail.com', N'MALE', CAST(0xEA180B00 AS Date), N'bd', N'080080', N'Vietnam ', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (65, 67, N'fhgj ', N'gjhg', N'6576', N'mjss@rooster@yahoo.vn', N'MALE', CAST(0x08170B00 AS Date), N'be', N'B454698745', N'Belgium', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (66, 68, N'fhgj ', N'gjhg', N'6576', N'mjss@rooster@yahoo.vn', N'MALE', CAST(0x08170B00 AS Date), N'be', N'B454698745', N'Belgium', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (67, 69, N'thuận', N'OP test', N'0123456789', N'thuanmd_68@yahoo.com', N'MALE', CAST(0xDD180B00 AS Date), N'bh', N'0123456789', N'vn', N'test', 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (68, 70, N'fhgj ', N'gjhg', N'6576', N'mjss@rooster@yahoo.vn', N'MALE', CAST(0x08170B00 AS Date), N'be', N'B454698745', N'Belgium', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (69, 71, N'thuận', N'OP test', N'0123456789', N'thuanmd_68@yahoo.com', N'MALE', CAST(0xDD180B00 AS Date), N'bh', N'0123456789', N'vn', N'test', 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (70, 72, N'thuận', N'OP test', N'0123456789', N'thuanmd_68@yahoo.com', N'MALE', CAST(0xDD180B00 AS Date), N'bh', N'0123456789', N'vn', N'test', 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (71, 73, N'thuận', N'OP test', N'0123456789', N'thuanmd_68@yahoo.com', N'MALE', CAST(0xDD180B00 AS Date), N'vn', N'0123456789', N'vn', N'test', 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (72, 74, N'fhgj ', N'gjhg', N'6576', N'mjss@rooster@yahoo.vn', N'MALE', CAST(0x08170B00 AS Date), N'be', N'B454698745', N'Belgium', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (73, 75, N'Bình', N'Le', N'01656828143', N'catbastation@gmail.com', N'MALE', CAST(0x60190B00 AS Date), N'vn', N'123123131', N'Vietnam', N'Nothign', 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (74, 76, N'thuận', N'OP test', N'0123456789', N'thuanmd_68@yahoo.com', N'MALE', CAST(0xDD180B00 AS Date), N'vn', N'0123456789', N'vn', N'test', 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (75, 78, N'Thuy', N'Ta', N'09', N'otono.2703@gmail.com', N'MALE', CAST(0x00000000 AS Date), N'az', N'080080', N'Vietnam ', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (76, 77, N'Thuy', N'Ta', N'09', N'otono.2703@gmail.com', N'MALE', CAST(0x00000000 AS Date), N'az', N'080080', N'Vietnam ', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (77, 79, N'Thuy', N'Ta', N'09', N'otono.2703@gmail.com', N'MALE', CAST(0x00000000 AS Date), N'az', N'080080', N'Vietnam ', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (78, 80, N'ThuyLinh', N'Nguyen', N'09', N'otono.2703@gmail.com', N'MALE', CAST(0x00000000 AS Date), N'az', N'080080009', N'Vietnam ', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (79, 81, N'ThuyLinh', N'Nguyen', N'09', N'otono.2703@gmail.com', N'MALE', CAST(0x00000000 AS Date), N'az', N'080080009', N'Vietnam ', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (80, 82, N'Linh', N'Long', N'09090909090', N'otono.2703@gmail.com', N'MALE', CAST(0xDD180B00 AS Date), N'bh', N'090909092', N'Vietnames', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (81, 83, N'Thuy', N'Linh', N'098', N'otono.2703@gmail.com', N'MALE', CAST(0xE3180B00 AS Date), N'au', N'02808', N'Vietnames', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (82, 84, N'Nguyen Văn', N'Đức', N'01693489360', N'ducnv.viss@gmail.com', N'MALE', CAST(0xDB180B00 AS Date), N'vn', N'0152654655', N'Việt Nam', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (83, 85, N'Nguyen Văn', N'Đức', N'01693489360', N'ducnv.viss@gmail.com', N'MALE', CAST(0xDB180B00 AS Date), N'vn', N'0152654655', N'Việt Nam', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (84, 86, N'Nguyen Văn', N'Đức', N'01693489360', N'ducnv.viss@gmail.com', N'MALE', CAST(0xDB180B00 AS Date), N'vn', N'0152654655', N'Việt Nam', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (85, 87, N'Thuy', N'Long', N'07896867', N'otono.2703@gmail.com', N'MALE', CAST(0xEA180B00 AS Date), N'af', N'080080', N'Vietnam ', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (86, 88, N'Nguyen Văn', N'Đức', N'01693489360', N'ducnv.viss@gmail.com', N'MALE', CAST(0xDC180B00 AS Date), N'vn', N'0152654655', N'Việt Nam', NULL, 0, 0.0000)
GO
INSERT [ann77429_admin].[InformationBook] ([Id], [BookTourId], [FirstName], [LastName], [Phone], [Email], [Gender], [BirthDay], [Country], [Passport], [Nationality], [Note], [Paid], [Price]) VALUES (87, 89, N'ThuyLinh', N'Long', N'0964595159', N'otono.2703@gmail.com', N'MALE', CAST(0xE3180B00 AS Date), N'bh', N'080080', N'Vietnam ', NULL, 0, 0.0000)
GO
SET IDENTITY_INSERT [ann77429_admin].[InformationBook] OFF
GO
SET IDENTITY_INSERT [ann77429_admin].[CategoriOther] ON 

GO
INSERT [ann77429_admin].[CategoriOther] ([Id], [Title], [KeyWord], [Content], [Oder], [ModTime], [Sumary]) VALUES (1, N'Homestay', N'homestay', N'&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;big&gt;&lt;em&gt;&lt;strong&gt;Homestay is an ideal form of &amp;ldquo;green tourism&amp;rdquo; for people who love exploring culture in new places. When travelling in such a form, instead of staying in hotels or motels, visitors will stay at a host family in order to have a friendly view and closer to their lifestyle and culture.&lt;/strong&gt;&lt;/em&gt;&lt;br /&gt;
&lt;br /&gt;
A homestay participant is considered a family member and participates in daily activities and chatting with others. &amp;nbsp;Homestay visitors at Lan Ha fishing village will experience interesting things such as dining out together, sleeping and fishing with fishermen. &amp;nbsp;Moreover, visitors can stay and enjoy the peaceful atmosphere in a boat house, which is surrounded by the ocean with limestone mountains.&amp;nbsp;&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;&lt;img alt=&quot;&quot; src=&quot;/Upload/images/Photo/Homestay/10547753_873586499321003_5028877704542038465_o.jpg&quot; style=&quot;height:533px; width:800px&quot; /&gt;&lt;/strong&gt;&lt;br /&gt;
&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;&amp;nbsp;Schedule&lt;/strong&gt;&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;Day 1 : Beo Port- Floating village&lt;br /&gt;
17:00: &lt;/strong&gt;Present at Beo Port&amp;nbsp;&lt;br /&gt;
&lt;strong&gt;17:00- 18:00:&lt;/strong&gt; moving to homestay floating houses by boat.&amp;nbsp;&lt;br /&gt;
&lt;strong&gt;18:00- 19:00:&lt;/strong&gt; having dinner with host family&lt;br /&gt;
&lt;strong&gt;19:00&amp;nbsp;-&amp;nbsp;23:00: &lt;/strong&gt;Participating in fishing activities, experiencing sea culture.&amp;nbsp;&lt;br /&gt;
&lt;strong&gt;Day 2: Floating village - Beo Port&lt;br /&gt;
5:00&amp;nbsp;- 5:30&lt;/strong&gt; : get up and welcome the dawn.&amp;nbsp;&lt;br /&gt;
&lt;strong&gt;6:00&amp;nbsp;-6:30&lt;/strong&gt; : having breakfast&lt;br /&gt;
&lt;strong&gt;7:00-&amp;nbsp;8:00&amp;nbsp;&lt;/strong&gt;: visiting fish cages and researching local people&amp;rsquo;s lives.&amp;nbsp;&lt;br /&gt;
&lt;strong&gt;9:00&amp;nbsp;- 10:00&lt;/strong&gt;: Come back to Beo Port&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;Price&lt;/strong&gt;&lt;/big&gt;&lt;/span&gt;&lt;/p&gt;

&lt;table border=&quot;1&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot;&gt;
	&lt;tbody&gt;
		&lt;tr&gt;
			&lt;td style=&quot;text-align:center&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/td&gt;
			&lt;td&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;big&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Single &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/big&gt;&lt;/span&gt;&lt;/td&gt;
			&lt;td&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;big&gt;&amp;nbsp; &amp;nbsp; Group of more than 4 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/big&gt;&lt;/span&gt;&lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td style=&quot;text-align:center&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;big&gt;Price &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/big&gt;&lt;/span&gt;&lt;/td&gt;
			&lt;td style=&quot;text-align:center&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;big&gt;$30&lt;/big&gt;&lt;/span&gt;&lt;/td&gt;
			&lt;td style=&quot;text-align:center&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;big&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; $25&lt;/big&gt;&lt;/span&gt;&lt;/td&gt;
		&lt;/tr&gt;
	&lt;/tbody&gt;
&lt;/table&gt;
&lt;br /&gt;
&lt;span style=&quot;font-size:14px&quot;&gt;&lt;big&gt;&lt;strong&gt;Included :&lt;/strong&gt;&lt;/big&gt;&lt;/span&gt;

&lt;ul&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;big&gt;Pick up and drop off at Cat Ba island.&lt;/big&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;big&gt;Delicious Vietnamese traditional food.&lt;/big&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;big&gt;Entrance fees, transport&lt;/big&gt;&lt;/span&gt;&lt;/li&gt;
	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;big&gt;Accommodation in Cat Ba floating village.&lt;/big&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;span style=&quot;font-size:14px&quot;&gt;&lt;big&gt; &lt;img alt=&quot;&quot; src=&quot;/Upload/images/Photo/Beauty%20of%20Cat%20Ba%20island/binh-minh-tren-bien-giaoducvietnam-5.jpg&quot; style=&quot;height:585px; width:800px&quot; /&gt;&lt;/big&gt;&lt;/span&gt;', 1, CAST(0x0000A54600CE5BE3 AS DateTime), N'Homestay is an ideal form of “green tourism” for people who love exploring culture in new places.')
GO
INSERT [ann77429_admin].[CategoriOther] ([Id], [Title], [KeyWord], [Content], [Oder], [ModTime], [Sumary]) VALUES (3, N'kayaking', N'kayaking', N'&lt;p&gt;&lt;big&gt;&lt;em&gt;&lt;strong&gt;According to tourist&amp;rsquo;s experiences after visiting Cat Ba, going kayaking is one of the most interesting activities here. It is highly recommended for tourists to enjoy this activity.&amp;nbsp;&lt;/strong&gt;&lt;/em&gt;&lt;/big&gt;&lt;/p&gt;
&lt;big&gt;Most of tourists come to Cat Ba in the summer to go swimming. However, you may be feel regret if you don&amp;rsquo;t take part in kayaking activity to explore&amp;nbsp;Lan Ha Bay. It would be a new and unforgettable experience you have never had. You can&amp;rsquo;t have such experience when just floating by a cruise. Passing by small islets and caves, the sampans take you close to the stone mountain to explore the unique beauty of marine life underneath the sea. It is totally different with what you can imagine.&lt;/big&gt;

&lt;p&gt;&lt;big&gt;Normally, two people will share a sampan to go kayaking. Initially, you can find it hard to control. However, after practising for a while, you can learn how to control it quickly and find it extremely exciting to join in.&lt;/big&gt;&lt;br /&gt;
&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&lt;big&gt;&lt;em&gt;&lt;strong&gt;&lt;img alt=&quot;&quot; src=&quot;/Upload/images/Photo/Beauty%20of%20Cat%20Ba%20island/tour-ha-long.jpg&quot; style=&quot;height:565px; width:800px&quot; /&gt;&lt;/strong&gt;&lt;/em&gt;&lt;/big&gt;&lt;/p&gt;

&lt;p&gt;&lt;br /&gt;
&lt;big&gt;&lt;strong&gt;Kayak price&lt;/strong&gt;&amp;nbsp;&lt;strong&gt;(02&amp;nbsp;people&amp;nbsp;/ kayak) &lt;/strong&gt;&amp;nbsp;&lt;br /&gt;
1/2 day(01 hour- 04 hours) 150 000.vnd - (7.5 usd )&lt;br /&gt;
01 day( 5&amp;nbsp;hours&amp;nbsp;&amp;ndash; 08 hours) 200 000.vnd&amp;nbsp; - (10&amp;nbsp;usd) &amp;nbsp; &amp;nbsp;&lt;br /&gt;
02 days &amp;nbsp; 300&amp;nbsp;000.vnd &amp;nbsp;- (15&amp;nbsp;usd) &amp;nbsp; &amp;nbsp;&lt;br /&gt;
03 days 190 000.vnd - (9.5 usd)&lt;/big&gt;&lt;/p&gt;
&lt;big&gt; *&amp;nbsp;&lt;strong&gt;The above prices&amp;nbsp;include&lt;/strong&gt;:&amp;nbsp;jackets,&amp;nbsp;tickets visit Lan Ha bay, dry bag, paddle, coatching bath.&lt;br /&gt;
&lt;br /&gt;
&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/Photo/Beauty%20of%20Cat%20Ba%20island/10505014_10152582743304784_3641030331448036322_o.jpg&quot; style=&quot;height:534px; width:800px&quot; /&gt;&lt;/big&gt;', 3, CAST(0x0000A54600AFA0BD AS DateTime), N'According to tourist’s experiences after visiting Cat Ba, going kayaking is one of the most interesting activities here.')
GO
INSERT [ann77429_admin].[CategoriOther] ([Id], [Title], [KeyWord], [Content], [Oder], [ModTime], [Sumary]) VALUES (5, N'Team building', N'team-building', N'&lt;big&gt;&lt;em&gt;&lt;strong&gt;Team-building tours are a fantastic getaway into the beach. However, relaxation is not the name of the game on this tour. Instead, days will be action packed with thrilling games, team-building opportunities, adventure, delicious food, and beautiful campsites situated in the wild beach and jungle of Vietnam.&lt;/strong&gt;&lt;/em&gt;&lt;br /&gt;
&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/Slide/10557014_629863633791039_3278889778551967585_o.jpg&quot; style=&quot;height:534px; width:800px&quot; /&gt;&lt;br /&gt;
&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;br /&gt;
&lt;br /&gt;
In a tour unlike anything available in this region, you will have the options of obstacle course races, scavenger hunts, and many other activities which will keep your team working together and smiling the whole time through. Team-building tours are catered according to your preference and the outcome you are looking for (please see the photo gallery below).&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;Tours can be designed with the following ideas:&lt;/strong&gt;&lt;/big&gt;
&lt;ul&gt;
	&lt;li&gt;&lt;big&gt;A race, in which your group is split into teams and must compete against each other&lt;/big&gt;&lt;/li&gt;
	&lt;li&gt;&lt;big&gt;A tour, in which your whole group stays together and participates in different games and activities throughout the tour&lt;/big&gt;&lt;/li&gt;
	&lt;li&gt;&lt;big&gt;Camping skills, in which you can learn about putting tents up, cooking over an open fire, tying knots, first aid skills, etc.&lt;/big&gt;&lt;/li&gt;
	&lt;li&gt;&lt;big&gt;Environmental awareness and community projects, in which our team will teach you all about conservation in the wilderness; on the last day, participate in a group cleanup effort in Viet Hai village&lt;/big&gt;&lt;/li&gt;
	&lt;li&gt;&lt;big&gt;Design your own teambuilding! We are happy to cooperate with any ideas which you may have (pending safety regulations)&lt;/big&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;big&gt;&lt;strong&gt;We welcome the following groups:&lt;/strong&gt;&lt;/big&gt;

&lt;ul&gt;
	&lt;li&gt;&lt;big&gt;Groups of anywhere from 4 &amp;ndash; 100 pax (also depending on weather condition)&lt;/big&gt;&lt;/li&gt;
	&lt;li&gt;&lt;big&gt;Participants aged 12 &amp;ndash; 65&lt;/big&gt;&lt;/li&gt;
	&lt;li&gt;&lt;big&gt;Tours of 2 &amp;ndash; 4 days long&lt;/big&gt;&lt;/li&gt;
	&lt;li&gt;&lt;big&gt;Vietnamese or English speaking groups&lt;/big&gt;&lt;/li&gt;
	&lt;li&gt;&lt;big&gt;All outdoor experience levels and backgrounds&lt;/big&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;big&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;Price of a team-building tour is dependent on group size and tour length, with an additional surcharge for weekend or holiday bookings. Please book far in advance for large groups so that we are able to fulfill your request and accommodate all of your needs.&lt;br /&gt;
&lt;br /&gt;
For inquiry, please contact us via email&amp;nbsp;&lt;strong&gt;&lt;a href=&quot;mailto:catbastation@gmail.com&quot; title=&quot;Linkify Plus Plus&quot;&gt;catbastation@gmail.com&lt;/a&gt;&lt;/strong&gt;&amp;nbsp;or sales hotline number&amp;nbsp;&lt;strong&gt;+84 (0)1656.828.143 (Mr.Binh)&lt;br /&gt;
&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/Photo/10467079_608374062609559_416764865276772555_o%20-%20Copy.jpg&quot; style=&quot;height:534px; width:800px&quot; /&gt;&lt;/strong&gt;&lt;/big&gt;', 4, CAST(0x0000A54600AF18EE AS DateTime), N'Team-building tours are a fantastic getaway into the beach. However, relaxation is not the name of the game on this tour. ')
GO
SET IDENTITY_INSERT [ann77429_admin].[CategoriOther] OFF
GO
SET IDENTITY_INSERT [ann77429_admin].[Comment] ON 

GO
INSERT [ann77429_admin].[Comment] ([Id], [Avata], [Name], [Comment]) VALUES (1, N'/Upload/images/Comment/12039549_10207466304637272_2178300013162249416_n.jpg', N'James Chance', N'Thanks for everything when we''re in Cat Ba island.Great service, staffs are also very friendly and helpful. They can also arrange a good plant for everything should do in Cat Ba island, it''s an amazing place.')
GO
INSERT [ann77429_admin].[Comment] ([Id], [Avata], [Name], [Comment]) VALUES (2, N'/Upload/images/Comment/10845946_10152922314242060_1175362801066092516_n.jpg', N'Delia Swift', N'Extraordinary experience to be able to live with the locals in such a beautiful place. People are nice,open and curious. The fisherman community around is great. Food is amazing and of course the landscape is like a dream.')
GO
INSERT [ann77429_admin].[Comment] ([Id], [Avata], [Name], [Comment]) VALUES (3, N'/Upload/images/Comment/12032017_10153196534723391_4843351376504407804_n.jpg', N'Jonas B Gold', N'The services is very good, staffs are very enthusiasm and friendly. Especially they have a night tour to go to floating village in Lan Ha Bay. Iff you want to explore the local life style, it must be the best choice for your trip in Cat Ba! ')
GO
INSERT [ann77429_admin].[Comment] ([Id], [Avata], [Name], [Comment]) VALUES (4, N'/Upload/images/Comment/11951636_10153644194876940_6967661706989756300_o.jpg', N'Sinja Finselberger', N'They made the experience of living in a fishing village fun, entertaining and unique.')
GO
INSERT [ann77429_admin].[Comment] ([Id], [Avata], [Name], [Comment]) VALUES (5, N'/Upload/images/Comment/12107239_10207223483293032_3831504537410224242_n.jpg', N'David Lopez', N' It was a great and funny experience in cooking class. I learnt basic skills to cook some Vietnam food in my country. Very friendly people.')
GO
INSERT [ann77429_admin].[Comment] ([Id], [Avata], [Name], [Comment]) VALUES (7, N'/Upload/images/Comment/11140117_10153447084154722_5173861477560273148_n.jpg', N'Núria Tb', N'We had a very good time in floating village with fisherman. It is great to find people like this one with heart and friendly. ')
GO
INSERT [ann77429_admin].[Comment] ([Id], [Avata], [Name], [Comment]) VALUES (8, N'/Upload/images/Comment/11080362_1391748684480771_8439859513645327389_o.jpg', N'Seong Jin Lee', N'We spent 2 days in floating village and it was awesome. The host was really helpful and kind, he gave us a lot of information about the natural place and it was really interesting!  We were fishing and swimming in beautiful places! 
The dinner on the floating village  was also good and all the staff was really nice. ')
GO
INSERT [ann77429_admin].[Comment] ([Id], [Avata], [Name], [Comment]) VALUES (9, N'/Upload/images/Comment/10885530_10155020915425203_115876269269053400_n.jpg', N'Charles Rand', N'Absolutely fantastic experience with all the host and people that joined us on the trip. Swimming in the moonlight and a few drinks under the stars before our beds were made on floating village and we all fell asleep. Waking up for the sunrise and then spending the day swimming on the sea.')
GO
INSERT [ann77429_admin].[Comment] ([Id], [Avata], [Name], [Comment]) VALUES (10, N'/Upload/images/Comment/10960297_10153074887757902_7466360878537577898_o.jpg', N'Beth Teixeira', N'My boyfriend and I did the full day morning kayaking and afternoon homstay on floating tour. We were inexperienced in both activities .We saw beautiful sights in the morning and had delicious  dinner . We felt completely comfortable. ')
GO
SET IDENTITY_INSERT [ann77429_admin].[Comment] OFF
GO
SET IDENTITY_INSERT [ann77429_admin].[ForMe] ON 

GO
INSERT [ann77429_admin].[ForMe] ([Id], [SumaryInfo], [ContentInfo], [SumaryService], [ContentService], [SumaryAdmissions], [ContentAdmissions]) VALUES (1, NULL, N'&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;To all my friends over the world,&lt;br /&gt;
&lt;br /&gt;
We are a group of some crazy but friendly youth, trying to do something meaningful for our life, and our&amp;nbsp;country. We used to be social activists who have implemented many awareness campaigns. And for 7&amp;nbsp;years, our team - &lt;strong&gt;Action4Future &lt;/strong&gt;had run as one of the best youth organizations in climate change and&amp;nbsp;sustainable development.&lt;br /&gt;
&lt;br /&gt;
Since most of us have graduated from the university, we have to make a choice: continue working with&amp;nbsp;our organization or go out there and look for a job? Finally, we decide to keep our passion for&amp;nbsp;sustainable development and mix it with a business. That&amp;rsquo;s how this businesswas born.&lt;br /&gt;
&lt;br /&gt;
Cat Ba is a very nice island, we love it. We used to travel here every summer and organize boot camp for&amp;nbsp;&lt;br /&gt;
youth on a wild island. We received lots of help from local people. They are friendly, warmly but they&amp;nbsp;are also very poor and lonely. Staying in their house in our homestay service, you not just help them&amp;nbsp;earn money but also make their life become more interesting.&lt;br /&gt;
&lt;br /&gt;
We have an ambitious plan for community and enviroment in Cat Ba Island. Your support will be the&amp;nbsp;very first step to make it possible.&lt;br /&gt;
&lt;br /&gt;
Sincerely,&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;Young Passion Team&lt;br /&gt;
&lt;br /&gt;
---------------------------------------------------&lt;br /&gt;
&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/Photo/img20150507125538881.jpg&quot; style=&quot;height:114px; width:120px&quot; /&gt;&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;font-size:16px&quot;&gt;&lt;strong&gt;HO&amp;Agrave;NG ĐỨC MINH - FOUNDER&lt;/strong&gt;&lt;/span&gt;&lt;br /&gt;
&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Minh is the youth activist from Viet Nam, started his career by raising RAECP (and now is Action4Future), an youth based organization on sustainable development. Minh is one of three International Climate Champions of British Council in Vietnam, being the first Vietnamese youth in an Conference of the Parties to the United Nations Framework Convention on Climate Change.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Since 2009, he represented Vietnamese youth in many international meetings: World Leadership Conference 2009 in Singapore, Asia Youth Climate Workshop in Bangkok.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Minh has worked as an active environmental activist for years; founder and manager of certain projects: &amp;ldquo;I hate Plastic&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;bag&amp;rdquo; campaign, &amp;ldquo;Earth Song&amp;rdquo; annual music concert,... Since 2012, Minh focuses on Education for Sustainable Development especially the application of debating in education. Now he works as a freelance trainer and consultant for social project and a debate coach.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Minh has been chosen to be in one of 30 under 30 of Forbes Magazine in 2015&lt;/span&gt;&lt;/p&gt;
', NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [ann77429_admin].[ForMe] OFF
GO
SET IDENTITY_INSERT [ann77429_admin].[GioiThieuChung] ON 

GO
INSERT [ann77429_admin].[GioiThieuChung] ([Id], [SumaryLocation], [ContentLocation], [SumaryInfo], [ContentInfo], [SumaryExp], [ContentExp]) VALUES (1, N'Cat Ba is the largest of the 366 islands spanning 260 km2 (100 sq mi) that comprise the Cat Ba Archipelago, which makes up the southeastern edge of Ha Long Bay in Northern Vietnam. ', N'&lt;span style=&quot;font-size:14px&quot;&gt;Cat Ba is the largest island in the Bay and approximately half of its area is covered by a&amp;nbsp;&lt;a href=&quot;https://en.wikipedia.org/wiki/List_of_national_parks_of_Vietnam&quot; title=&quot;List of national parks of Vietnam&quot;&gt;National Park&lt;/a&gt;, which is home to the highly endangered&amp;nbsp;&lt;a href=&quot;https://en.wikipedia.org/wiki/Cat_Ba_Langur&quot; title=&quot;Cat Ba Langur&quot;&gt;Cat Ba Langur&lt;/a&gt;. The island has a wide variety of natural ecosystems, both marine and terrestrial, leading to incredibly high rates of biodiversity. Types of natural habitats found on Cat Ba Archipelago include limestone karsts, tropical limestone forests, coral reefs, mangrove and sea grass beds, lagoons, beaches, caves, and willow swamp forests. Cat Ba Island is one of the only populated islands in Ha Long Bay, with roughly 13,000 inhabitants living in six different communes, and 4,000 more inhabitants living on floating fishing villages off the coast. The large majority of the population can be found in&amp;nbsp;&lt;a href=&quot;https://en.wikipedia.org/w/index.php?title=Cat_Ba_(township)&amp;amp;action=edit&amp;amp;redlink=1&quot; title=&quot;Cat Ba (township) (page does not exist)&quot;&gt;Cat Ba town&lt;/a&gt;, which is located at the southern tip of the Island (15&amp;nbsp;km (9&amp;nbsp;mi) south of the national park) and is the commercial center on the Island. Since 1997, Cat Ba town has grown rapidly and has become a tourist hub for both the Island and greater Ha Long Bay. Especially, almost all surface of this island is deployed free wifi access points as well as 3.75 generation mobile networks, which can make visitors can easily work when traveling.&lt;/span&gt;', N'Cat Ba Island means "Women’s Island" (Cat meaning sandy and Ba meaning women). Legend has it that many centuries ago, three women of the Tran Dynasty were killed and their bodies floated all the way to Cat Ba Island. ', N'&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Cat Ba is the largest of the 366 islands spanning 260 km2 (100 sq mi) that comprise the Cat Ba Archipelago, which makes up the southeastern edge of Ha Long Bay in Northern Vietnam. Cat Ba island has a surface area of 285 km2 (110 sq mi) and maintains the dramatic and rugged features of Ha Long Bay. It is commonly used as an overnight hotel stop on tours to Ha Long Bay run by travel agents from Hanoi. This island belongs to Haiphong city - the most famous city of industry in Vietnam.&lt;br /&gt;
&lt;br /&gt;
Cat Ba is the largest island in the Bay and approximately half of its area is covered by a&amp;nbsp;&lt;a href=&quot;https://en.wikipedia.org/wiki/List_of_national_parks_of_Vietnam&quot; title=&quot;List of national parks of Vietnam&quot;&gt;National Park&lt;/a&gt;, which is home to the highly endangered&amp;nbsp;&lt;a href=&quot;https://en.wikipedia.org/wiki/Cat_Ba_Langur&quot; title=&quot;Cat Ba Langur&quot;&gt;Cat Ba Langur&lt;/a&gt;. The island has a wide variety of natural ecosystems, both marine and terrestrial, leading to incredibly high rates of biodiversity. Types of natural habitats found on Cat Ba Archipelago include limestone karsts, tropical limestone forests, coral reefs, mangrove and sea grass beds, lagoons, beaches, caves, and willow swamp forests. Cat Ba Island is one of the only populated islands in Ha Long Bay, with roughly 13,000 inhabitants living in six different communes, and 4,000 more inhabitants living on floating fishing villages off the coast. The large majority of the population can be found in&amp;nbsp;&lt;a href=&quot;https://en.wikipedia.org/w/index.php?title=Cat_Ba_(township)&amp;amp;action=edit&amp;amp;redlink=1&quot; title=&quot;Cat Ba (township) (page does not exist)&quot;&gt;Cat Ba town&lt;/a&gt;, which is located at the southern tip of the Island (15&amp;nbsp;km (9&amp;nbsp;mi) south of the national park) and is the commercial center on the Island. Since 1997, Cat Ba town has grown rapidly and has become a tourist hub for both the Island and greater Ha Long Bay. Especially, almost all surface of this island is deployed free wifi access points as well as 3.75 generation mobile networks, which can make visitors can easily work when traveling.&lt;br /&gt;
&lt;br /&gt;
Cat Ba Island means &amp;quot;Women&amp;rsquo;s Island&amp;quot; (Cat meaning sandy and Ba meaning women). Legend has it that many centuries ago, three women of the Tran Dynasty were killed and their bodies floated all the way to Cat Ba Island. Each body washed up on a different beach and all three were found by local fishermen. The residents of Cat Ba built a temple for each woman, and the Island soon became known as Cat Ba. Archeological evidence suggests that people have lived on Cat Ba Island for almost 6,000 years, with the earliest settlements being found on the southeastern tip of the Island close to the area where Ban Beo harbor sits today. In 1938, a group of French archeologists discovered human remains belonging &amp;quot;to the Cai Beo people of the Ha Long culture, which lived between 4,000 and 6,500 years ago&amp;hellip; considered to be perhaps the first population group occupying the North-Eastern territorial waters of Vietnam&amp;hellip; [and] the Cai Beo people may be an intermediary link between the population strata at the end of the Neolithic Age, some 4,000 years ago&amp;quot;.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;In more recent history, Cat Ba Island was inhabited mostly by Viet-Chinese fisherman and was largely influenced by both the French and American wars. The Island was a strategic look-out point and bombing during the wars often forced local residents to hide among the Island&amp;#39;s many caves. Today, the best reminders of the two wars have been turned into tourist attractions. Hospital Cave, which was a secret, bomb-proof hospital during the American War and as a safe house for VC leaders. This three-story feat of engineering was in use until 1975 is only 10&amp;nbsp;km north of Cat Ba town. The second attraction, the newly built Cannon Fort, sits on a peak 177 meters high, offering visitors a chance to see old bunkers and helicopter landing stations as well stunning views Cat Ba Island, its coast, and the limestone karsts in Lan Ha Bay offshore.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;In 1979, the third Indo-China War broke out between China and Vietnam in response to Vietnam&amp;rsquo;s invasion of Cambodia that ended the reign of the Khmer Rouge. Relations between China and Vietnam collapsed, leading to the Vietnamese government evicting around 30,000 &amp;hellip; of the fishermen, and most of the rest of the Chinese community from the greater Ha Long area.&lt;/span&gt;&lt;/p&gt;
', N'Today, Increases in infrastructure on the Island  made it easier for tourists to visit the Island, leading to a rapid increase in tourism and development in Cat Ba town starting in 2001.', N'&lt;span style=&quot;font-size:14px&quot;&gt;Today, Increases in infrastructure on the Island (including the building of bigger roads, dams to build harbors and to protect Cat Ba town from flooding, consistent electricity being brought to the island (which surprisingly happened as late as 1997) instead of having to rely on a generator, and large ferries and barges, able to transport trucks and cars to the Island from the mainland making daily trips to Cat Ba) made it easier for tourists to visit the Island, leading to a rapid increase in tourism and development in Cat Ba town starting in 2001. Since then, a stop on Cat Ba Island has been included in the itinerary of many Ha Long Bay cruises and a strip of tall, thin, five story budget hotels line the seafront, receiving more than 350,000 visitors a year. Currently, over 105 hotels are listed in Cat Ba Island&amp;rsquo;s tourist directory pamphlet, from cheap budget hotels to flashier upscale resorts, and construction is underway on many more. Right now, construction is under way on the colossal Cat Ba Amatina, an enormous project that will transform the southern coast of the island. The Amatina compound will be &amp;quot;a world-class integrated marina, casino, resort and theme park&amp;quot; spanning 171.57 hectacres and (VITC) will be able to host almost 6,000 residents at a time. The Amatina will boast &amp;quot;seven resorts with over 800 villas, three marinas, one international convention palace, 6 five star hotels and 1 four star hotel&amp;quot; (VITC). The scale of this project is gigantic and will basically create a luxurious mini-city on Cat Ba and will attract tourists from around the world. Cat Ba Island has become the adventure-tourism capital of Vietnam&amp;nbsp;&lt;a href=&quot;http://www.vietnamgoldenholidays.com/&quot; rel=&quot;nofollow&quot;&gt;[1]&lt;/a&gt;, and many of the activities advertised are nature-based. Visitors can kayak and take boat cruises through Ha Long Bay and the Cat Ba Archipelago, hike through the national park, mountain bike around the Island, spend time on Monkey Island just offshore, tourist can stay at Monkey Island Resort for real relax time on private beach, explore the Island&amp;#39;s many caves, swim on Cat Co 1, 2, or 3 (three sandy beaches a short walk from Cat Ba town), or even rock climb on the limestone karsts. With its stunning scenery, its association with Ha Long Bay, its proximity to highly populous cities like Haiphong (50&amp;nbsp;km) and Hanoi (150&amp;nbsp;km), and even China (many regional visitors come to the Island in the summer, the busy season, to avoid the heat and pollution in the cities), and plenty to do, Cat Ba Island has become a major travel destination for foreign and Vietnamese visitors alike.&lt;/span&gt;&lt;br /&gt;
&amp;nbsp;
&lt;h2&gt;&lt;strong&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Cat Ba National Park&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;At the heart of Cat Ba Island lies a visually stunning and ecologically diverse national park. In 1986, 9,800 [98&amp;nbsp;km&amp;sup2;] hectares (approximately one third of the Island&amp;#39;s total land mass) was annexed as Cat Ba National Park, the first decreed protected area in Vietnam to include a marine component (Dawkins 14). It had previously been the site of a timber company. In 2006, the boundaries of the national park were redefined, so the park contained 109&amp;nbsp;km&amp;sup2; of land area and an additional 52&amp;nbsp;km&amp;sup2; of inshore waters and mangrove covered tidal zones (langur website). The park is staffed by 92 people, including over 60 park rangers. In 2004, Cat Ba Archipelago was declared a UNESCO Man and Biosphere Reserve Area in order to protect the multiple terrestrial and aquatic ecosystems as well the diverse plant and animal life that is found on the Island. The UNESCO designation divides the archipelago into three distinct areas, each with certain functions and restrictions that regulates development and conservation measures on the Island:&lt;/span&gt;&lt;/p&gt;

&lt;h3&gt;&lt;strong&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Core Area&lt;/span&gt;&lt;/strong&gt;&lt;/h3&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;The core area needs to be legally established and is not subject to human activity, except research and monitoring, and as the case may be, to traditional extractive uses by local communities. Cat Ba National Park more or less constitutes the core zone of the Cat Ba Archipelago Biosphere Reserve. (8,500 hectares, of which 2,000 are marine)&lt;/span&gt;&lt;/p&gt;

&lt;h3&gt;&lt;strong&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Buffer Zone&lt;/span&gt;&lt;/strong&gt;&lt;/h3&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;The buffer zone must surround or be contiguous to the core area. Activities are organized here so that they do not hinder the conservation objectives of the core area but rather help to protect it. It can be an area for experimental research and it may accommodate education, tourism, and recreational facilities. (7,741 hectares, of which 2,800 are marine)&lt;/span&gt;&lt;/p&gt;

&lt;h3&gt;&lt;strong&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Outer Transitional Area&lt;/span&gt;&lt;/strong&gt;&lt;/h3&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;To provide support for research, monitoring, education, and information exchange related to local, national, and global issues of conservation and development. (10,000 hectares, of which 4,400 are marine)&lt;/span&gt;&lt;/p&gt;

&lt;h3&gt;&lt;strong&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Goals of the National Park&lt;/span&gt;&lt;/strong&gt;&lt;/h3&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;The first purpose is conservation, and the park is primarily committed to protecting the nature and wildlife in the archipelago. The second purpose is scientific research, and the third purpose is to promote eco-tourism and environmental education. A sub sect of the third priority is to increase the economic development of the small communities living in the buffer zones of the national park through eco-tourism and conservation programs, that balance both conservation and economic goals.&lt;/span&gt;&lt;/p&gt;

&lt;h3&gt;&lt;strong&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Biodiversity&lt;/span&gt;&lt;/strong&gt;&lt;/h3&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Besides its natural beauty, the park is home to an almost unbelievable number of species. There are 1,561 recorded species of flora found in the park, from 186 families, including 406 species of wooden trees, 661 medicinal plants, and 196 edible plants. The fauna on the island consists of 279 species, including 53 mammal species from 18 families, and 23 Endangered and Critically Endangered species. There are 160 bird species, 66 species of reptiles and amphibians, and 274 species of insects from 79 different families. Aquatically, there are 900 sea fish, 178 species of coral, 7 species of sea snakes, 4 species of sea turtles, and 21 species of seaweed found throughout the archipelago.&lt;/span&gt;&lt;/p&gt;

&lt;h3&gt;&lt;strong&gt;&lt;span style=&quot;font-size:14px&quot;&gt;The Cat Ba Langur&lt;/span&gt;&lt;/strong&gt;&lt;/h3&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;The Cat Ba&amp;nbsp;&lt;a href=&quot;https://en.wikipedia.org/wiki/Langur&quot; title=&quot;Langur&quot;&gt;langur&lt;/a&gt;&amp;nbsp;(Trachypithecus poliocephalus), or golden-headed langur, is endemic to Cat Ba Island and is one of the most endangered primates in the world. The langurs population numbers, which used to be between 2,400-2,700, dwindled to as low as only 53 langurs in 2000 due to poaching for traditional medicine and habitat fragmentation caused by human development. Today, there are approximately 68 langurs left in the wild. The langur population and its habitat is monitored by the Cat Ba Langur Conservation Project (CBLCP), a German-based NGO that works in close cooperation with the national park staff and the local governments on Cat Ba Island and in Hai Phong province, especially the Department of Agriculture and Rural Development in Hai Phong, to protect the langur, its habitat, and to help conserve the biodiversity and environmental integrity of the entire Cat Ba Archipelago. difficulties the project has faced in the past and will face going forward. The CBLCP is an&amp;nbsp;&lt;em&gt;in situ&lt;/em&gt;&amp;nbsp;conservation project, meaning the project works to protect both the animal and its habitat (there are no plans to put the langurs in zoos). This means that by taking efforts to preserve the langurs, the CBLCP, by protecting the natural environment of the archipelago, really works to preserve all the species found on the archipelago and to protect the overall health of the forest. The biggest reason for the steep decline in langur population numbers was illegal poaching and trapping of the langurs for traditional medicinal purposes. This is a difficult trend to reverse, as the langur was being poached by local people who relied on the forest for subsistence and sold langurs to support their meager income, and from poachers outside the Island who are part of the international illegal wildlife trade. Another major threat facing the langurs is habitat fractionalization, due to increases in human development. Currently the langur population is fragmented into seven isolated sub-populations at five different locations on Cat Ba Island, with most of the langur groups being very small in number with some populations longer functional in terms of reproduction (only three groups are currently reproducing). The fragmentation of the langur population reduces genetic variability, which is already a major problem due to the minute population numbers, and makes it impossible for some groups of langurs to reproduce and replace aging group members. To fight this problem, the CBLCP focused their efforts on two approaches: increasing education and awareness levels about the decline of the langur population and other conservation issues and creating a protection network that relies on the local population. These two approaches both take great effort and care to engage the residents of Cat Ba Island, which makes the programs more effective. The CBLCP also takes an active approach in raising levels of environmental awareness and education on Cat Ba Island; they also strive to create a connection between the citizens of Cat Ba Island and the natural environment. Other mammals in the Park include&amp;nbsp;&lt;a href=&quot;https://en.wikipedia.org/wiki/Civet&quot; title=&quot;Civet&quot;&gt;civet&lt;/a&gt;&amp;nbsp;cats and&amp;nbsp;&lt;a href=&quot;https://en.wikipedia.org/wiki/Oriental_giant_squirrels&quot; title=&quot;Oriental giant squirrels&quot;&gt;oriental giant squirrels&lt;/a&gt;.&lt;/span&gt;&lt;/p&gt;
')
GO
SET IDENTITY_INSERT [ann77429_admin].[GioiThieuChung] OFF
GO
INSERT [ann77429_admin].[Help] ([Id], [Title], [KeyWord], [Sumary], [Content]) VALUES (N'data1', N'BOOKING CONDITIONS', N'booking-conditions', N'&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;The information within our website, brochures and other marketing material has been compiled with care and is provided in good faith. When making a booking with Catba Station Tours you agree in full to the following conditions:&lt;/strong&gt;&lt;/span&gt;', N'&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;The information within our website, brochures and other marketing material has been compiled with care and is provided in good faith. However, it is subject to change and does not form part of the contract between the customer and Catba StationTours. When making a booking with Catba Station Tours you agree in full to the following conditions:&lt;/strong&gt;&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;QUOTED PRICES:&lt;/strong&gt;&lt;br /&gt;
All prices quoted are subject to change due to fluctuations in the exchange rates or additional government fees, which may be imposed at any time. In the case of minor increases we won&amp;rsquo;t revise the cost of a trip already confirmed.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;PAYMENT &amp;amp; TOUR CONFIRMATION:&lt;/strong&gt;&lt;br /&gt;
Upon making your reservation our team will follow up within 2 working days via email with an invoice and link to our secure online payment provider OnePay. Please be patient up to 5 working days if &amp;nbsp;our Technical Advisory Team needs time to review your application.&lt;br /&gt;
Please review your invoice and the payment link to ensure they match the services booked, and submit your payment. You will have 72 hours to make payment otherwise your reservation will be cancelled. You can make payment via Visa or MasterCard in Vietnamese Dong.&amp;nbsp;&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;CANCELLATIONS:&lt;/strong&gt;&lt;br /&gt;
If for any reason you are turned back while on tour or if you must quit the expedition, all tour costs will be forfeited without further compensation.&amp;nbsp;&lt;br /&gt;
For join-in tour, if cancellation notice received and acknowledged more than 5 days before tour departure, a full refund will be processed. If cancellation notice received and acknowledged less than 5 days before the departure, there will be no refund.&lt;br /&gt;
For private tour and group tour, if cancellation received and acknowledged between 30 days to 20 days before tour departure you will be charged a cancellation fee of 50% of total booking price. If cancellation notice received less than 20 days before tour departure no refund will be provided under any circumstance.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;AMENDMENTS:&lt;/strong&gt;&lt;br /&gt;
Amendments can be made up until 7 days before tour departure with no charge .No amendments are possible less than 7 days before tour departure.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;PASSPORT:&lt;/strong&gt;&lt;br /&gt;
All customers must hold a valid passport and valid visa. It is your responsibility to obtain a current Vietnam visa.&lt;br /&gt;
All passports and visas must be presented upon arrival at Oxalis Adventure Tours office. A photocopy will be made in our office and provided to local police for registration before accessing any area that we conduct tours.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;COMPENSATION:&lt;/strong&gt;&lt;br /&gt;
You are fully aware that you are travelling in an area that is remote and subject to unusual climatic conditions.&lt;br /&gt;
Should Catba Station Tours deem it advisable to amend an itinerary, it may do so by varying or completely rerouting any trip. In this case the traveller will make no objection or claim for compensation from Catba Station Tours. Compensation should be made through your insurance company&lt;br /&gt;
.&lt;br /&gt;
&lt;strong&gt;TOUR DEPARTURE:&lt;/strong&gt;&lt;br /&gt;
All tours require a minimum number of guests to depart and your booking will not be confirmed if the minimum number of guests is not reached.&lt;br /&gt;
Catba Station Tours reserves the right to cancel any tour should the group size fall below the minimum numbers required. Alternative dates will be made available. Should this option be unacceptable, a full refund of all payments will constitute full settlement.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;TRAVEL INSURANCE &amp;amp; RISKS:&lt;/strong&gt;&lt;br /&gt;
You must purchase a comprehensive travel insurance package covering medical treatment, natural disaster, personal accidents, guided-caving tours, medical evacuation, etc.&amp;nbsp;&lt;br /&gt;
You understand that during the course of the trip certain events may occur such as accident or illness in a remote location without medical facilities. You agree to assume all risks and hold &amp;nbsp;Catba Station Tours blameless on all accounts of accident or illness.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;PRIVACY:&lt;/strong&gt;&lt;br /&gt;
Catba Station Tours respects your privacy. We will only collect personal information that is relevant to your travel arrangements.&lt;br /&gt;
We will protect the privacy of the information you provide us and only pass it to third parties such as hotels and local authorities when that information is necessary to fulfill your travel arrangements.&lt;br /&gt;
In providing this information to us, you consent to Catba Station Tours using this personal information for the purpose of making and completing arrangements with related services.&lt;/span&gt;')
GO
INSERT [ann77429_admin].[Help] ([Id], [Title], [KeyWord], [Sumary], [Content]) VALUES (N'data2', N'ARRIVAL & DEPARTURE GUIDE', N'arrival---departure-guide', N'&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif&quot;&gt;&lt;strong&gt;Catba Station Travel&amp;nbsp;is based in Cai Beo harbour&amp;nbsp;which is located 45 mins by boat&amp;nbsp;from Hai Phong&amp;nbsp;City in Vietnam. &amp;nbsp;There are more connections and ways to reach Cat Ba&amp;nbsp;than ever before.&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&amp;nbsp;&lt;/p&gt;
', N'&lt;p&gt;&lt;span style=&quot;font-size:18px&quot;&gt;&lt;strong&gt;GETTING TO CAT BA ISLAND&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;img alt=&quot;Hoang Long Bus Company&quot; src=&quot;http://www.asiaoutdoors.com.vn/uploads/1/2/6/3/12634706/480802.jpg?155&quot; /&gt;&lt;br /&gt;
&lt;strong&gt;FROM HANOI TO&amp;nbsp;CAT BA ISLAND&lt;/strong&gt;&lt;br /&gt;
(We suggest traveling through Hai Phong City,&amp;nbsp;&lt;strong&gt;NOT&lt;/strong&gt;&amp;nbsp;Ha Long City. You&amp;nbsp;will find numerous scams in Ha Long City, and it&amp;#39;s difficult to get to Cat Ba.)&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;Fast and reliable: Hoang Long Bus/Boat/Bus Combination&lt;/strong&gt;&lt;br /&gt;
&lt;strong&gt;Price:&amp;nbsp;&lt;/strong&gt;170,000 - 250,000 VND (may fluctuate seasonally)&lt;br /&gt;
&lt;strong&gt;Duration:&lt;/strong&gt;&amp;nbsp;4.5 hours (Hanoi to Cat Ba Town)&lt;br /&gt;
&lt;strong&gt;Departures from Hanoi:&amp;nbsp;&lt;/strong&gt;5:20 AM, 7:20 AM, 11:20 AM (summer only), 1:20 PM&lt;br /&gt;
&lt;strong&gt;Departures from Cat Ba:&amp;nbsp;&lt;/strong&gt;9:15 AM, 1:15 PM, 3:15 PM (summer only)&lt;br /&gt;
&lt;strong&gt;Note:&amp;nbsp;&lt;/strong&gt;If you take the 5:20am bus,&amp;nbsp;you may have to wait for the second speed boat, particularly in the low season.&amp;nbsp; The company will not run the&amp;nbsp;boat if there are only a few passengers.&amp;nbsp;&lt;br /&gt;
&lt;br /&gt;
Go to&amp;nbsp;&lt;strong&gt;&lt;a href=&quot;http://hoanglongasia.com/en/index.php&quot; target=&quot;_blank&quot; title=&quot;&quot;&gt;Luong Yen Bus Station&lt;/a&gt;&lt;/strong&gt;&amp;nbsp;and buy a ticket with the&amp;nbsp;&lt;strong&gt;&lt;a href=&quot;http://hoanglongasia.com/en/index.php&quot; target=&quot;_blank&quot; title=&quot;&quot;&gt;Hoang Long Bus Company&lt;/a&gt;&lt;/strong&gt;.&lt;br /&gt;
Luong Yen Station is a&amp;nbsp;10 minute ride from the Old Quarter of Hanoi. Buy your tickets at the station (recommended) or on the bus.&amp;nbsp;Always arrive early to play it safe.&amp;nbsp;&lt;br /&gt;
&lt;br /&gt;
Only board a bus bearing the &amp;ldquo;Hoang Long&amp;rdquo; logo. Make sure not to get on the earlier Thanh Long Bus (which looks similar, but departs at 5 minutes after the hour). Most importantly: show the driver your ticket so they can confirm for you. A uniformed Hoang Long driver can answer any questions.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;Once you arrive in Hai Phong&lt;/strong&gt;, you might be transferred to a different bus that will take you to the harbor. You may wait up to 30 minutes at a&amp;nbsp;small Hoang Long office with a bathroom. From the harbor, a boat will take you to Cai Vieng (the west harbor of Cat Ba Island), and a final bus will take you to Cat Ba Town. Understand that there will be 2-3 transfers on this journey, all on one ticket.&lt;br /&gt;
&lt;br /&gt;
There are other bus companies available, but they may not be as&amp;nbsp;reliable and&amp;nbsp;will likely be more confusing.&lt;/span&gt;&lt;/p&gt;

&lt;hr /&gt;
&lt;table&gt;
	&lt;tbody&gt;
		&lt;tr&gt;
			&lt;td&gt;
			&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;Luong Yen Bus Station&lt;/strong&gt;&lt;br /&gt;
			&lt;strong&gt;Ben Xe Luong Yen&lt;br /&gt;
			So 1 Nguyen Khoai&lt;br /&gt;
			Hanoi, Vietnam&lt;/strong&gt;&lt;br /&gt;
			&lt;br /&gt;
			Hire a taxi or xe om (motorbike taxi) to get here from the Old Quarter, which should cost roughly 65,000 (taxi) and 30,000 (xe om).&lt;/span&gt;&lt;/p&gt;
			&lt;/td&gt;
			&lt;td&gt;
			&lt;p&gt;&amp;nbsp;&lt;/p&gt;
			&lt;/td&gt;
			&lt;td&gt;
			&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;Caution&lt;/strong&gt;&amp;nbsp;to anyone getting out of the bus station. Taxi drivers here are notorious for fixing meters. Walk down the street a few hundred meters and catch one there or negotiate a price beforehand.&lt;/span&gt;&lt;/p&gt;
			&lt;/td&gt;
		&lt;/tr&gt;
	&lt;/tbody&gt;
&lt;/table&gt;

&lt;hr /&gt;
&lt;p&gt;&lt;br /&gt;
&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;IF TRAVELING FROM HAI PHONG:&lt;/strong&gt;&lt;br /&gt;
From Cat Bi Airport, take a taxi (200,000 VND) or xe om (100,000 VND) to&amp;nbsp;&lt;strong&gt;Ben Binh Harbor.&lt;/strong&gt;&lt;br /&gt;
From&amp;nbsp;&lt;strong&gt;Ben Binh Harbor&lt;/strong&gt;, take either the Hydrofoil or the Hadeco boat (outlined below).&lt;/span&gt;&lt;/p&gt;

&lt;table&gt;
	&lt;tbody&gt;
		&lt;tr&gt;
			&lt;td&gt;
			&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;img alt=&quot;Picture&quot; src=&quot;http://www.asiaoutdoors.com.vn/uploads/1/2/6/3/12634706/865454.jpg?197&quot; /&gt;&lt;br /&gt;
			&lt;strong&gt;Fastest from Ben Binh:&amp;nbsp;Hoang Yen Hydrofoil&lt;/strong&gt;&lt;br /&gt;
			&lt;strong&gt;Price:&amp;nbsp;&lt;/strong&gt;220,000 VND&lt;br /&gt;
			&lt;strong&gt;Duration:&lt;/strong&gt;&amp;nbsp;45 minutes to an hour&lt;br /&gt;
			&lt;strong&gt;Departures from Hai Phong:&amp;nbsp;&lt;/strong&gt;7:00 AM, 9:00 AM, 1:00 PM, 3:00 PM&lt;br /&gt;
			&lt;strong&gt;Departures from Cat Ba:&amp;nbsp;&lt;/strong&gt;8:00 AM, 10:00 &amp;nbsp;AM, 2:00&amp;nbsp;PM, 4:00 PM&lt;/span&gt;&lt;/p&gt;

			&lt;hr /&gt;&lt;/td&gt;
			&lt;td&gt;
			&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;img alt=&quot;Picture&quot; src=&quot;http://www.asiaoutdoors.com.vn/uploads/1/2/6/3/12634706/8023366.jpg?164&quot; /&gt;&lt;br /&gt;
			&lt;strong&gt;Reliable: Hadeco&lt;/strong&gt;&lt;br /&gt;
			&lt;strong&gt;Price:&amp;nbsp;&lt;/strong&gt;150,000 VND&lt;br /&gt;
			&lt;strong&gt;Duration:&lt;/strong&gt;&amp;nbsp;1.5 hours&lt;br /&gt;
			&lt;strong&gt;Departures from Hai Phong:&amp;nbsp;&lt;/strong&gt;7:00 AM, &amp;nbsp;8:00 AM, &amp;nbsp;10:00 AM, &amp;nbsp;1:00 PM, &amp;nbsp;3:00 PM, &amp;nbsp;4:00 PM&lt;br /&gt;
			&lt;strong&gt;Departures from Cat Ba:&amp;nbsp;&lt;/strong&gt;7:00 AM, 8:00 AM, 10:00 PM,&amp;nbsp;1:00 PM, 3:00 PM, 4:00 PM&lt;/span&gt;&lt;/p&gt;

			&lt;hr /&gt;&lt;/td&gt;
		&lt;/tr&gt;
	&lt;/tbody&gt;
&lt;/table&gt;

&lt;table&gt;
	&lt;tbody&gt;
		&lt;tr&gt;
			&lt;td&gt;
			&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;Ben Binh Harbor&lt;/strong&gt;&lt;br /&gt;
			&lt;strong&gt;No 1 Ben Binh street, Hai Phong city, Vietnam&lt;/strong&gt;&lt;br /&gt;
			&lt;br /&gt;
			Be&amp;nbsp;&lt;strong&gt;cautious&lt;/strong&gt;&amp;nbsp;of anyone at Ben Binh Harbour trying to sell you a trip to Cat Ba that doesn&amp;#39;t have a legitimate stand. You might be sold a ticket for a boat at another harbor. Don&amp;#39;t get on any buses from Ben Binh. Get on a boat.&lt;/span&gt;&lt;/p&gt;
			&lt;/td&gt;
			&lt;td&gt;
			&lt;p&gt;&amp;nbsp;&lt;/p&gt;
			&lt;/td&gt;
			&lt;td&gt;
			&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.asiaoutdoors.com.vn/uploads/1/2/6/3/12634706/9570930_orig.jpg?261&quot; onclick=&quot;if (!lightboxLoaded) return false&quot;&gt;&lt;img alt=&quot;Haiphong Port&quot; src=&quot;http://www.asiaoutdoors.com.vn/uploads/1/2/6/3/12634706/9570930.jpg?261&quot; /&gt;&lt;/a&gt;&lt;br /&gt;
			Look for Ben Binh Harbor.&lt;/span&gt;&lt;/p&gt;
			&lt;/td&gt;
		&lt;/tr&gt;
	&lt;/tbody&gt;
&lt;/table&gt;

&lt;hr /&gt;
&lt;p&gt;&lt;br /&gt;
&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;Upon arrival to Cat Ba&lt;/strong&gt;, if you&amp;#39;ve chosen from these companies, you will be dropped off at a big orange arch. Catba Station Travel is located 231 Ben Beo street, near Ben Beo harbour.&amp;nbsp;&lt;a href=&quot;http://www.asiaoutdoors.com.vn/useful-information.html&quot; title=&quot;&quot;&gt;Call us&lt;/a&gt;&amp;nbsp;if you get lost. There will be someone at the phone from 8:00 AM to 7:30 PM, as long as we have power.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;br /&gt;
&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;WHICH BUS OR BOAT DO I NEED TO CATCH TO ARRIVE ON TIME FOR MY ASIA OUTDOORS ADVENTURE?&lt;/strong&gt;&lt;br /&gt;
When running as scheduled, the following bus and boat departures will arrive in Cat Ba in time to check in at Catba Station Travel&amp;nbsp;and leave with our daily trips as noted. Please bear in mind that, in cases of extreme weather or harbor police mandates, transports may not depart as scheduled. It is always a good idea to allow plenty of time to arrive at Catba Station Travel&amp;nbsp;&amp;nbsp;since, on occasion in the past, planning to catch the latest possible transport with a tight schedule has gone wrong for people.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;

&lt;table&gt;
	&lt;tbody&gt;
		&lt;tr&gt;
			&lt;td&gt;
			&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;&lt;u&gt;08:00 Check-in/08:30 Trip Start&lt;/u&gt;&lt;/strong&gt;&lt;br /&gt;
			&lt;strong&gt;(Morning and Full-day Adventures)&amp;nbsp;&lt;/strong&gt;&lt;br /&gt;
			&lt;strong&gt;FROM HANOI&lt;/strong&gt;&lt;br /&gt;
			Hoang Long: No departures early enough&lt;br /&gt;
			&lt;strong&gt;FROM HAI PHONG&lt;/strong&gt;&lt;br /&gt;
			Hadeco: No departures early enough&lt;br /&gt;
			Hydrofoil: 7:00 AM&lt;/span&gt;&lt;/p&gt;
			&lt;/td&gt;
			&lt;td&gt;
			&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;&lt;u&gt;10:30 Check-in/11:00 Trip Start&lt;/u&gt;&lt;/strong&gt;&lt;br /&gt;
			&lt;strong&gt;(Afternoon Adventures and Seafarers)&lt;/strong&gt;&lt;br /&gt;
			&lt;strong&gt;FROM HANOI&lt;/strong&gt;&lt;br /&gt;
			Hoang Long: 5:20 AM&lt;br /&gt;
			&lt;strong&gt;FROM HAI PHONG&lt;/strong&gt;&lt;br /&gt;
			Hadeco: 8:00 AM&lt;br /&gt;
			Hydrofoil: 9:00 AM&lt;/span&gt;&lt;/p&gt;
			&lt;/td&gt;
			&lt;td&gt;
			&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;&lt;u&gt;17:00 Check-in/17:15 Trip Start&lt;/u&gt;&lt;/strong&gt;&lt;br /&gt;
			&lt;strong&gt;(Overnight Adventures)&lt;/strong&gt;&lt;br /&gt;
			&lt;strong&gt;FROM HANOI&lt;/strong&gt;&lt;br /&gt;
			Hoang Long: 11:20 (if in season)&lt;br /&gt;
			&lt;strong&gt;FROM HAI PHONG&lt;/strong&gt;&lt;br /&gt;
			Hadeco: 3:00 PM&lt;br /&gt;
			Hydrofoil: 3:00 PM&lt;/span&gt;&lt;/p&gt;
			&lt;/td&gt;
		&lt;/tr&gt;
	&lt;/tbody&gt;
&lt;/table&gt;

&lt;hr /&gt;
&lt;p&gt;&lt;br /&gt;
&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;IF TRAVELING FROM HA LONG CITY:&lt;/strong&gt;&lt;br /&gt;
&lt;strong&gt;We do not recommend traveling through Ha Long City to Cat Ba Island, but if you are already in Ha Long City (or bringing a motorbike)&amp;nbsp;see the travel information below:&lt;/strong&gt;&lt;br /&gt;
Take a taxi or xe om to Tuan Chau Island. There is a ferry from Tuan Chau to Gia Luan harbor on&amp;nbsp;the north side of Cat Ba Island.&amp;nbsp;&lt;br /&gt;
&lt;br /&gt;
&lt;em&gt;The following information is what we&amp;#39;ve been told; it is subject to change.&lt;/em&gt;&amp;nbsp;The ferry operates twice per day during low season (10:30AM and 1:30PM). During the summer season, the ferry runs several times per day. &amp;nbsp;The ferry crossing now takes 40 minutes and carries motorbikes/bicycles for an additional fee. If using your own motorbike, it&amp;#39;s about 30 minutes from Gia Luan harbor into Cat Ba Town at the south of end of the island. If not, a public bus that runs with each ferry from Gia Luan to Cat Ba Town. Alternatively, you may take a taxi or xe om.&lt;br /&gt;
&lt;br /&gt;
The ferry is faster and the price far more reasonable than tagging along with a structured tour:&lt;br /&gt;
&lt;strong&gt;Ferry ticket (walk-on):&lt;/strong&gt;&amp;nbsp;50,000 VND&lt;br /&gt;
&lt;strong&gt;With a Motorbike:&lt;/strong&gt;&amp;nbsp;+30,000 VND&lt;br /&gt;
&lt;strong&gt;Gia Luan to Cat Ba Town Local Bus:&lt;/strong&gt;&amp;nbsp;20,000 VND&lt;/span&gt;&lt;/p&gt;

&lt;hr /&gt;
&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;TRAVELING INTERNATIONALLY TO VIETNAM&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;Here&amp;rsquo;s what we do:&amp;nbsp;&lt;/strong&gt;&lt;br /&gt;
First, check the Kayak website:&amp;nbsp;&lt;a href=&quot;http://www.kayak.com/&quot; target=&quot;_blank&quot; title=&quot;&quot;&gt;www.kayak.com&lt;/a&gt;. This search engine that compiles airfares from a variety of sites for your convenience. Be careful when choosing options from companies like Orbitz &amp;ndash; they have terrible customer service, never answer the phones, and you&amp;rsquo;ll have trouble changing your ticket if something comes up unexpectedly.&lt;br /&gt;
&amp;nbsp;&lt;br /&gt;
Next, take the airline listed on Kayak and contact them directly by phone or online. They often have specials that meet or beat the prices listed by search engines and you&amp;rsquo;ll have no problem changing your ticket date for a fee.&lt;br /&gt;
&lt;br /&gt;
Compare the direct rates with those from Kayak and make your decision. Cathay Pacific is an airline we use frequently to travel to and from Vietnam. They have excellent customer service and rates.&lt;br /&gt;
&amp;nbsp;&lt;br /&gt;
Before you book your flight to Hanoi (airport code: HAN) or Ho Chi Minh City (airport code: SGN), also be sure to check fares for flying to Bangkok. Try both airports, Suvarnabhumi (airport code: BKK) and Don Muang (airport code: DMK). Often rates are much cheaper for flying to Bangkok and then you can catch a flight on Air Asia to Hanoi (HAN) from $25-$75 on average. These Air Asia flights run regularly throughout the day so your layover in the Thai airport shouldn&amp;rsquo;t be too long. Be sure to get a quote for the baggage fees on Air Asia though, if you are over their limit you could pay a small fortune!&lt;br /&gt;
&amp;nbsp;&lt;br /&gt;
&lt;strong&gt;Be Careful:&lt;/strong&gt;&lt;br /&gt;
Like in any big city, thieves and con artists prey on vulnerable travelers. Taxi drivers from the airport are eager to fool you into higher rates. It should cost $13 USD or about 250,000 &amp;ndash; 300,000 VND to travel from the airport to downtown Hanoi.&lt;br /&gt;
&amp;nbsp;&lt;br /&gt;
A good rule of thumb while traveling is to&amp;nbsp;&lt;strong&gt;arrange the price before you accept service and don&amp;rsquo;t pre-pay!&amp;nbsp;&lt;/strong&gt;Get in a marked airport taxi through a kiosk outside the arrivals lounge where signs display a set price. You can write the price on a piece of paper and clearly distinguish dollars or dong. Tolls should be included in the fare. Do not pay until you arrive at the exact hotel you planned to go to. If they say it is fully booked, go to the reception desk with your bags and ask for yourself. If they bring you to the wrong hotel, simply get out of the taxi and hail another one. In most cases they&amp;rsquo;ll come running back and bring you to the right place. If they raise their voice and become aggressive, don&amp;#39;t worry. They will not harm you, as the penalties in Vietnam for harming tourists are severe! Giving in will encourage this behavior for the next traveller. Stick to your guns and do not pay until you are at your final destination.&lt;br /&gt;
&lt;br /&gt;
While scams and cons do occur here, it is not the norm. Fear of scams is no reason to not visit Vietnam! Most likely you will be treated fairly and your experience here will be a positive one. We simply advise that you keep your head while traveling and exercise caution. Keep smiling and consider it all part of the adventure!&lt;/span&gt;&lt;br /&gt;
&amp;nbsp;&lt;/p&gt;
')
GO
INSERT [ann77429_admin].[Help] ([Id], [Title], [KeyWord], [Sumary], [Content]) VALUES (N'data3', N'FAQ', N'faq', N'&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;We have collected many questions asked by our customers from time to time. Maybe your question was already asked. Please feel free to message or email us in case of any other question.&lt;/strong&gt;&lt;/span&gt;', N'&lt;p&gt;&lt;br /&gt;
&lt;br /&gt;
&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;WHAT&amp;#39;S THE WEATHER LIKE TOMORROW?&lt;/strong&gt;&lt;br /&gt;
&lt;strong&gt;September to December&lt;/strong&gt;&lt;br /&gt;
The best time to visit Cat Ba is from late September to November, when skies tend to be clear.&amp;nbsp; Temperatures cool during the winter to 15-20 C, and an eerie&amp;nbsp;mist settles over the karst limestone.&amp;nbsp;&lt;br /&gt;
&lt;strong&gt;February to May&lt;/strong&gt;&lt;br /&gt;
Rain is common during these months.&lt;br /&gt;
&lt;strong&gt;June to August&lt;/strong&gt;&lt;br /&gt;
Rain continues into these months.&amp;nbsp; Average temperature is 25 to 28 C, although temperatures often reach 30 C, with high humidity. &amp;nbsp;&lt;br /&gt;
Although it is difficult to predict the weather on Cat Ba in the short term, some weather stations try anyway.&amp;nbsp; Be aware that whether it says sunshine or rain, there are never any guarantees.&lt;/span&gt;&lt;br /&gt;
&lt;br /&gt;
&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;CAMPING &amp;amp; TREKKING&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;1. What if I am a solo traveler, can I join a group?&lt;/strong&gt;&lt;br /&gt;
Solo travelers are most welcome and make up a large percentage of most groups.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;2. Do I need to have climbing skills?&lt;/strong&gt;&lt;br /&gt;
While climbing skills are a great asset, it is not necessary to have any technical climbing experience to join any of our tours.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;3. What kind of shape do I need to be in physically in order to be able to be prepared for the trekking tour?&lt;/strong&gt;&lt;br /&gt;
It is very important that you are a very active person and that you are in good physical shape and health condition in order to join us for one of our tours. You should have recent experience trekking rough trails and camping in basic conditions.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;4. What should I bring?&lt;/strong&gt;&lt;br /&gt;
&lt;strong&gt;&amp;nbsp;Y&lt;/strong&gt;ou should take mosquito repellent, swimming stuff, flash light, sunscreen, trekking shoes.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;5.&amp;nbsp;How many miles or kilometers will we be walking on the trek?&lt;/strong&gt;&lt;br /&gt;
It&amp;rsquo;s entirely dependent on which tour you take,&amp;nbsp;under each tour description to see the distance you will cover.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;6.&lt;/strong&gt;&lt;strong&gt;What are the sleeping /bedding conditions like? Do I need to bring a sleeping bag or tent&lt;/strong&gt;?&lt;br /&gt;
You will be provided with a tent and sleeping bag. You have a choice of a tent or hammock. We will provide these for you. If you would like to bring your own, please make sure that you are able to carry them easily yourself.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;br /&gt;
&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;7.What kind of food will there be in the jungle? Do I need to bring my own snacks?&lt;/strong&gt;&lt;br /&gt;
There will be a wide variety of different types of food served on all of our tours, and plenty of it. If you are a picky eater or have dietary restrictions, please consider bringing your own snacks along to supplement what we offer.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;8.&amp;nbsp;Will we encounter any dangerous animals in the jungle?&lt;/strong&gt;&lt;br /&gt;
You are unlikely to come across anything too dangerous. However, you will probably encounter the leech.&amp;nbsp;&lt;br /&gt;
You may come across a snake, but it&amp;rsquo;s a very rare chance of you being the first to see it. &amp;nbsp;Caterpillars and centipedes can be irritating and sometimes dangerous so please do not touch these intentionally.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;9.&amp;nbsp;Should we bring our own water bottle?&lt;/strong&gt;&lt;br /&gt;
We can offer you the use of a 750 mL bottle which you can fill at our office. Otherwise, you can buy large (up to 1.5 L) bottles of water at many places within town.&amp;nbsp;&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;HOMESTAY WITH FISHERMAN&lt;/strong&gt;&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;10. How long does it take to floating village?&lt;/strong&gt;&lt;br /&gt;
It takes about 40 minutes to get there by slow boat.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;11. How can I communicate with local people?&lt;/strong&gt;&lt;br /&gt;
We provide you a billingual guide book, you have to communicate with local people not only by language but also other ways. If you need a private english speaking guide, you have to pay extra fee.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;12. What should I notice while staying with locals?&lt;/strong&gt;&lt;br /&gt;
When staying with people from different culture, please respect each characteristic and lifestyle, ask if something is unclear. Always say thank you and sincerely smile for their help.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;13. What can I do in floating village?&lt;/strong&gt;&lt;br /&gt;
Fishing, squid catching, growing fish and scallop, swim, prepare the meals, smoke &amp;quot; thuoc lao&amp;quot; ... your trip will be stick with a day life of local people in here.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;14.What is your cancellation policy?&lt;/strong&gt;&lt;br /&gt;
If cancellation is received 5 days or more, you will receive a full refund. If you cancel with less than 5 days notice, your tour costs will be forfeited without refund&lt;/span&gt;&lt;/p&gt;
')
GO
SET IDENTITY_INSERT [ann77429_admin].[New] ON 

GO
INSERT [ann77429_admin].[New] ([Id], [Title], [KeyWord], [img], [Sumary], [Content], [link], [by], [ModTime], [isHome]) VALUES (1, N'Khám phá đảo Khỉ, Cát Bà', N'kham-pha-dao-khi,-cat-ba', N'/Upload/images/BaiViet/55f2459d82394.png', N'Đảo Cát Dứa còn được người dân ở đảo Cát Bà gọi là đảo Khỉ vì ở đây có đến vài chục con khỉ. Phần lớn khỉ ở Cát Dứa được những người kiểm lâm thả về sinh sống tại đây, chúng khá dạn với người. Đôi khi chúng còn lấn tới, chọc du khách khiến một số vị khách nhát gan giật mình. Tuy nhiên những chú khỉ ở đây vẫn rất dễ thương, chiếm được cảm tình của hầu hết khách du lịch nhất là với các em nhỏ.', N'Kh&amp;aacute;m ph&amp;aacute; đảo Khỉ, C&amp;aacute;t B&amp;agrave;&lt;!--StartFragment--&gt;&lt;strong&gt;&lt;em&gt;Với phong cảnh thi&amp;ecirc;n nhi&amp;ecirc;n hoang sơ tuyệt đẹp, đảo C&amp;aacute;t Dứa hay c&amp;ograve;n gọi l&amp;agrave; đảo Khỉ C&amp;aacute;t B&amp;agrave; đ&amp;atilde; trở th&amp;agrave;nh một điểm s&amp;aacute;ng của du lịch C&amp;aacute;t B&amp;agrave;. Hằng năm, C&amp;aacute;t Dứa đ&amp;oacute;n rất nhiều lượt kh&amp;aacute;ch đến, tuy dịch vụ tại đảo chưa nhiều, chưa đ&amp;aacute;p ứng được nhu cầu cao của kh&amp;aacute;ch du lịch, nhưng đ&amp;acirc;y l&amp;agrave; điểm đến l&amp;yacute; tưởng trong h&amp;agrave;nh tr&amp;igrave;nh du lịch C&amp;aacute;t B&amp;agrave;.&lt;/em&gt;&lt;/strong&gt;
&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Đảo Khỉ C&amp;aacute;t B&amp;agrave; l&amp;agrave; một h&amp;ograve;n đảo nhỏ nằm c&amp;aacute;ch thị trấn C&amp;aacute;t B&amp;agrave; 2 km với b&amp;atilde;i tắm C&amp;aacute;t Dứa trải d&amp;agrave;i khoảng 1 km. Để đến đảo khỉ, kh&amp;aacute;ch du lịch thường đi thuyền từ bến B&amp;egrave;o mất khoảng 10 ph&amp;uacute;t đi qua l&amp;agrave;ng ch&amp;agrave;i C&amp;aacute;i B&amp;egrave;o, qua mấy h&amp;ograve;n đảo nhỏ rồi tiến thẳng ra đến đảo khỉ.&lt;/p&gt;
&amp;nbsp;

&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://static.mytour.vn/upload_images/Image/Quang%20Huy/Lan%20H%E1%BA%A1/ng%E1%BA%AFm%20sao/6434966829_9b7fe25e88_b.jpg&quot; style=&quot;height:530px; width:706px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;&lt;em&gt;Khung cảnh trong l&amp;agrave;nh nh&amp;igrave;n từ tr&amp;ecirc;n đảo Khỉ - Ảnh:&amp;nbsp;Berlotti&lt;/em&gt;&lt;/p&gt;
&amp;nbsp;&lt;br /&gt;
&amp;nbsp;
&lt;p&gt;Đảo c&amp;oacute; t&amp;ecirc;n gọi l&amp;agrave; C&amp;aacute;t Dứa l&amp;agrave; v&amp;igrave; tr&amp;ecirc;n đảo c&amp;oacute; nhiều c&amp;acirc;y dứa dại cao um t&amp;ugrave;m ngang cả m&amp;aacute;i nh&amp;agrave; tỏa b&amp;oacute;ng m&amp;aacute;t xuống chung quanh, quả dứa tr&amp;ocirc;ng th&amp;igrave; rất ngon nhưng kh&amp;ocirc;ng ăn được. Người d&amp;acirc;n đi đ&amp;aacute;nh c&amp;aacute; thường đến lấy đem về ng&amp;acirc;m nước uống cho m&amp;aacute;t hoặc sấy kh&amp;ocirc; l&amp;agrave;m thuốc chữa bệnh tiểu đường. Đ&amp;acirc;y c&amp;ograve;n l&amp;agrave; một nơi l&amp;yacute; tưởng để tắm biển với l&amp;agrave;n nước trong xanh v&amp;agrave; b&amp;atilde;i c&amp;aacute;t trắng tinh từ những mảnh vụn san h&amp;ocirc; tạo th&amp;agrave;nh.&lt;/p&gt;
&amp;nbsp;

&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://static.mytour.vn/upload_images/Image/Quang%20Huy/Lan%20H%E1%BA%A1/ng%E1%BA%AFm%20sao/6237486164_970fc9d6ef_b.jpg&quot; style=&quot;height:471px; width:706px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;&lt;em&gt;Ho&amp;agrave;ng h&amp;ocirc;n tr&amp;ecirc;n đảo Khỉ - Ảnh:&amp;nbsp;&amp;nbsp;Steinar Hugi&amp;nbsp;&lt;/em&gt;&lt;/p&gt;
&amp;nbsp;

&lt;p&gt;Đảo C&amp;aacute;t Dứa c&amp;ograve;n được người d&amp;acirc;n ở đảo C&amp;aacute;t B&amp;agrave; gọi l&amp;agrave; đảo Khỉ v&amp;igrave; ở đ&amp;acirc;y c&amp;oacute; đến v&amp;agrave;i chục con khỉ. Phần lớn khỉ ở C&amp;aacute;t Dứa được những người kiểm l&amp;acirc;m thả về sinh sống tại đ&amp;acirc;y, ch&amp;uacute;ng kh&amp;aacute; dạn với người. Đ&amp;ocirc;i khi ch&amp;uacute;ng c&amp;ograve;n lấn tới, chọc du kh&amp;aacute;ch khiến một số vị kh&amp;aacute;ch nh&amp;aacute;t gan giật m&amp;igrave;nh. Tuy nhi&amp;ecirc;n những ch&amp;uacute; khỉ ở đ&amp;acirc;y vẫn rất dễ thương, chiếm được cảm t&amp;igrave;nh của hầu hết kh&amp;aacute;ch du lịch nhất l&amp;agrave; với c&amp;aacute;c em nhỏ.&lt;/p&gt;

&lt;p&gt;&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;

&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://static.mytour.vn/upload_images/Image/Quang%20Huy/Lan%20H%E1%BA%A1/ng%E1%BA%AFm%20sao/Untitled-1.jpg&quot; style=&quot;height:620px; width:706px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;&lt;em&gt;Những ch&amp;uacute; khỉ ở đ&amp;acirc;y thường rất bạo dạn n&amp;ecirc;n dễ d&amp;agrave;ng chơi đ&amp;ugrave;a được với ch&amp;uacute;ng - Ảnh: tổng hợp&lt;/em&gt;&lt;/p&gt;

&lt;p&gt;&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;

&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img alt=&quot;gia đ&#236;nh khỉ&quot; src=&quot;https://static.mytour.vn/upload_images/Image/Articles%20Location/H%E1%BA%A3i%20Ph%C3%B2ng/Dao%20Khi%20-%20Cat%20Ba/gia%20%C4%91inh%20khi.jpg&quot; style=&quot;height:530px; width:706px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;&lt;em&gt;Gia đ&amp;igrave;nh khỉ đang thư gi&amp;atilde;n c&amp;ugrave;ng nhau - Ảnh: Paul Pham&lt;/em&gt;&lt;/p&gt;

&lt;p&gt;&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;

&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img alt=&quot;khỉ mẹ bắt rận&quot; src=&quot;https://static.mytour.vn/upload_images/Image/Articles%20Location/H%E1%BA%A3i%20Ph%C3%B2ng/Dao%20Khi%20-%20Cat%20Ba/khi%20me%20bat%20ran.jpg&quot; style=&quot;height:530px; width:706px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;&lt;em&gt;Khỉ mẹ bắt rận cho khỉ con - Ảnh: Paul Pham&lt;/em&gt;&lt;/p&gt;
&amp;nbsp;

&lt;p&gt;Đảo khỉ c&amp;oacute; hai b&amp;atilde;i tắm dạng v&amp;ograve;ng cung đ&amp;oacute; l&amp;agrave; b&amp;atilde;i C&amp;aacute;t Dứa 1 v&amp;agrave; b&amp;atilde;i tắm C&amp;aacute;t Dứa 2. Trong đ&amp;oacute; b&amp;atilde;i tắm C&amp;aacute;t Dứa 1 d&amp;agrave;i hơn, c&amp;oacute; doanh trại qu&amp;acirc;n đội đồn tr&amp;uacute;. Đ&amp;acirc;y l&amp;agrave; một điểm tắm biển l&amp;yacute; tưởng cho du kh&amp;aacute;ch mỗi khi đi du lịch C&amp;aacute;t B&amp;agrave; v&amp;igrave; nước biển ở đ&amp;acirc;y trong v&amp;agrave; xanh v&amp;ocirc; c&amp;ugrave;ng. Dịch vụ ở đ&amp;acirc;y c&amp;oacute; nh&amp;agrave; h&amp;agrave;ng m&amp;aacute;i l&amp;aacute; để du kh&amp;aacute;ch c&amp;oacute; thể ngồi h&amp;oacute;ng gi&amp;oacute; biển, mua đồ uống, ăn kem&amp;hellip; k&amp;egrave;m theo một số dịch vụ cho du kh&amp;aacute;ch như cho thu&amp;ecirc; quần &amp;aacute;o tắm, phao, thuyền kayak&amp;hellip; B&amp;atilde;i tắm C&amp;aacute;t Dứa 2 nằm b&amp;ecirc;n ph&amp;iacute;a tay phải khuất sau mỏm n&amp;uacute;i h&amp;igrave;nh con hổ. B&amp;atilde;i tắm c&amp;oacute; một khu vườn rộng mấy trăm m2 c&amp;oacute; c&amp;aacute;c loại c&amp;acirc;y như dứa dại, c&amp;acirc;y phong ba, c&amp;acirc;y si, c&amp;acirc;y t&amp;aacute;o trắng... v&amp;agrave; nhiều loại chim ch&amp;oacute;c kh&amp;aacute;c nhau.&lt;/p&gt;
&amp;nbsp;

&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img alt=&quot;thuyền kayak&quot; src=&quot;https://static.mytour.vn/upload_images/Image/Articles%20Location/H%E1%BA%A3i%20Ph%C3%B2ng/Dao%20Khi%20-%20Cat%20Ba/cheo%20thuyen%20kayak.jpg&quot; style=&quot;height:353px; width:706px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;&lt;em&gt;Du kh&amp;aacute;ch tới đ&amp;acirc;y c&amp;oacute; thể ch&amp;egrave;o thuyền kayak để trải nghiệm cảm gi&amp;aacute;c mới lạ - Ảnh: sinhcafetourist&lt;/em&gt;&lt;/p&gt;
&amp;nbsp;

&lt;p&gt;V&amp;agrave;o m&amp;ugrave;a h&amp;egrave;, khi c&amp;aacute;c b&amp;atilde;i tắm ở trong trị trấn C&amp;aacute;t B&amp;agrave; trở l&amp;ecirc;n đ&amp;ocirc;ng đ&amp;uacute;c th&amp;igrave; b&amp;atilde;i tắm đảo Khỉ ch&amp;iacute;nh l&amp;agrave; nơi l&amp;yacute; tưởng cho những du kh&amp;aacute;ch muốn tr&amp;aacute;nh sự ồn &amp;agrave;o chen ch&amp;uacute;c nhau khi đi tắm biển. B&amp;atilde;i tắm đảo Khỉ ch&amp;iacute;nh l&amp;agrave; nơi d&amp;agrave;nh cho những du kh&amp;aacute;ch đi du lịch theo nh&amp;oacute;m hoặc gia đ&amp;igrave;nh v&amp;igrave; ở đ&amp;acirc;y mọi người c&amp;oacute; nhiều kh&amp;ocirc;ng gian cũng như việc tr&amp;ocirc;ng nom trẻ em sẽ trở l&amp;ecirc;n dễ d&amp;agrave;ng hơn.&lt;/p&gt;
&amp;nbsp;

&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://static.mytour.vn/upload_images/Image/Quang%20Huy/Lan%20H%E1%BA%A1/ng%E1%BA%AFm%20sao/thk1342084403.jpg&quot; style=&quot;height:497px; width:706px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;&lt;em&gt;B&amp;atilde;i tắm ở đ&amp;acirc;y rất trong l&amp;agrave;nh v&amp;agrave; &amp;iacute;t người - Ảnh: mytour&lt;/em&gt;&lt;/p&gt;
&amp;nbsp;

&lt;p&gt;Khi đến đảo khỉ, một số du kh&amp;aacute;ch ưa th&amp;iacute;ch kh&amp;aacute;m ph&amp;aacute; c&amp;oacute; thể tr&amp;egrave;o l&amp;ecirc;n phần lưng chừng n&amp;uacute;i, thậm tr&amp;iacute; l&amp;ecirc;n đến tận đỉnh n&amp;uacute;i để ph&amp;oacute;ng tầm mắt ra xa bao qu&amp;aacute;t to&amp;agrave;n cảnh vịnh Lan Hạ với h&amp;agrave;ng trăm h&amp;ograve;n đảo lớn nhỏ mọc l&amp;ecirc;n tr&amp;ecirc;n l&amp;agrave;n nước trong xanh điểm xuyết những b&amp;atilde;i c&amp;aacute;t trắng mịn ở xa xa tầm mắt.&lt;/p&gt;
&amp;nbsp;&lt;br /&gt;
&amp;nbsp;
&lt;p&gt;Hiện nay, du kh&amp;aacute;ch c&amp;oacute; thể đến với đảo khỉ v&amp;agrave; nghỉ dưỡng tại khu Monkey Island Resort ở b&amp;atilde;i C&amp;aacute;t Dứa 2. Khu nghỉ dưỡng c&amp;oacute; 30 ph&amp;ograve;ng được x&amp;acirc;y dựng theo kiểu nh&amp;agrave; bungalow m&amp;aacute;i l&amp;aacute;. Mỗi ng&amp;ocirc;i nh&amp;agrave; l&amp;agrave; một ph&amp;ograve;ng nghỉ được trang bị điều h&amp;ograve;a, tắm n&amp;oacute;ng lạnh, ti vi, quạt điện... v&amp;agrave; cả internet, wifi - internet miễn ph&amp;iacute;. Đ&amp;acirc;y thực sự l&amp;agrave; một nơi l&amp;yacute; tưởng để bạn c&amp;oacute; thể nghỉ ngơi, tắm biển, thưởng thức c&amp;aacute;c m&amp;oacute;n ăn ngon của nh&amp;agrave; h&amp;agrave;ng ngay cạnh b&amp;atilde;i biển thơ mộng.&lt;/p&gt;
&amp;nbsp;

&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img alt=&quot;b&#227;i biển c&#225;t b&#224;&quot; src=&quot;https://static.mytour.vn/upload_images/Image/Articles%20Location/H%E1%BA%A3i%20Ph%C3%B2ng/Dao%20Khi%20-%20Cat%20Ba/bai%20bien%20cat%20ba.jpg&quot; style=&quot;height:530px; width:706px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;&lt;em&gt;Từ Monkey Island Resort du kh&amp;aacute;ch dễ d&amp;agrave;ng tận hưởng kh&amp;ocirc;ng khi tươi m&amp;aacute;t của biển xanh, nắng v&amp;agrave;ng - Ảnh: minhphuctravel&lt;/em&gt;&lt;/p&gt;

&lt;p&gt;&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;

&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img alt=&quot;bungalow đảo khỉ&quot; src=&quot;https://static.mytour.vn/upload_images/Image/Articles%20Location/H%E1%BA%A3i%20Ph%C3%B2ng/Dao%20Khi%20-%20Cat%20Ba/bungalow%20dao%20khi.jpg&quot; style=&quot;height:503px; width:706px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;&lt;em&gt;Nh&amp;agrave; bunglow tại Monkey Island Resort được x&amp;acirc;y dựng rất gần gũi với thi&amp;ecirc;n nhi&amp;ecirc;n - Ảnh: chotructuyen&lt;/em&gt;&lt;/p&gt;
&amp;nbsp;

&lt;p&gt;Với b&amp;atilde;i tắm c&amp;ograve;n kh&amp;aacute; hoang sơ v&amp;agrave; lũ khỉ tinh nghịch tr&amp;ecirc;n đảo, đảo Khỉ C&amp;aacute;t B&amp;agrave; l&amp;agrave; một nơi đặc biệt cho những ai y&amp;ecirc;u th&amp;iacute;ch vẻ đẹp của tự nhi&amp;ecirc;n, muốn gần gũi với động vật v&amp;agrave; trải nghiệm những cảm gi&amp;aacute;c mới lạ nhưng cũng kh&amp;ocirc;ng k&amp;eacute;m phần th&amp;uacute; vị .&lt;/p&gt;

&lt;p&gt;&lt;strong&gt;&lt;em&gt;&amp;nbsp;Lương Mai&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;
&lt;!--EndFragment--&gt;', NULL, N'Lương Mai', CAST(0x0000A53401086938 AS DateTime), 0)
GO
INSERT [ann77429_admin].[New] ([Id], [Title], [KeyWord], [img], [Sumary], [Content], [link], [by], [ModTime], [isHome]) VALUES (2, N'TREKKING VƯỜN QUỐC GIA CÁT BÀ', N'trekking-vuon-quoc-gia-cat-ba', N'/Upload/images/BaiViet/55f243717dffd.png', N'Quãng đường trekking đầu tiên dài khoảng 100m là đoạn đường khó khăn nhất và đường sẽ còn tăng dần độ ca theo các bậc đá. Nên thường để tham gia hoạt động này các bạn phải chuẩn bị sẵn một thể lực thật tốt. Hai bên sườn núi là rừng thân gỗ dày đặc, dưới gót giày là thảm lá mục ẩm ướt. Đừng để khó khăn phân tán mà hãy tận dụng các giác quan để quan sát không gian rừng.', N'&lt;p&gt;&lt;em&gt;&lt;strong&gt;Đảo C&amp;aacute;t B&amp;agrave; l&amp;agrave; nơi rừng biển gặp nhau tạo n&amp;ecirc;n một quần thể thi&amp;ecirc;n nhi&amp;ecirc;n phong ph&amp;uacute; với nhiều lo&amp;agrave;i động thực vật qu&amp;yacute; hiếm. Vườn Quốc gia C&amp;aacute;t B&amp;agrave;&amp;nbsp;nằm tr&amp;ecirc;n đảo C&amp;aacute;t B&amp;agrave;, huyện C&amp;aacute;t Hải - Th&amp;agrave;nh phố Hải Ph&amp;ograve;ng v&amp;agrave; c&amp;aacute;ch trung t&amp;acirc;m th&amp;agrave;nh phố 60 km. Đ&amp;acirc;y l&amp;agrave; điểm trekking kh&amp;ocirc;ng thể bỏ qua của c&amp;aacute;c bạn trẻ đam m&amp;ecirc; kh&amp;aacute;m ph&amp;aacute;.&lt;/strong&gt;&lt;/em&gt;&lt;br /&gt;
&lt;br /&gt;
&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img alt=&quot;Vườn quốc gia C&#225;t B&#224; &quot; src=&quot;https://static.mytour.vn/upload_images/Image/L%C6%B0%C6%A1ng%20Mai%20CTV/trekking%20v%C6%B0%E1%BB%9Dn%20qu%E1%BB%91c%20gia%20c%C3%A1t%20b%C3%A0/5952898569_a29fc4d5e1_o.jpg&quot; style=&quot;height:532px; width:710px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;&lt;em&gt;Vườn quốc gia C&amp;aacute;t B&amp;agrave;&lt;/em&gt;&lt;em&gt;&amp;nbsp;l&amp;agrave; điểm trekking kh&amp;ocirc;ng thể bỏ qua của c&amp;aacute;c bạn trẻ đam m&amp;ecirc; kh&amp;aacute;m ph&amp;aacute;. - Ảnh: du kh&amp;aacute;ch&lt;/em&gt;&lt;/p&gt;
&amp;nbsp;

&lt;p&gt;Thời gian l&amp;yacute; tưởng nhất trong năm để tới thăm vườn Quốc gia C&amp;aacute;t B&amp;agrave; l&amp;agrave; từ th&amp;aacute;ng 4 đến th&amp;aacute;ng 10, khi m&amp;agrave; bạn c&amp;oacute; thể trải nghiệm những hoạt động leo n&amp;uacute;i th&amp;uacute; vị hay kh&amp;aacute;m ph&amp;aacute; hệ sinh th&amp;aacute;i tự nhi&amp;ecirc;n đa dạng.&lt;/p&gt;
&amp;nbsp;

&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img alt=&quot;Vườn quốc gia C&#225;t B&#224; &quot; src=&quot;https://static.mytour.vn/upload_images/Image/L%C6%B0%C6%A1ng%20Mai%20CTV/trekking%20v%C6%B0%E1%BB%9Dn%20qu%E1%BB%91c%20gia%20c%C3%A1t%20b%C3%A0/4651760502_1ba8b5fcbb_o.jpg&quot; style=&quot;height:470px; width:710px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;&lt;em&gt;Vườn quốc gia C&amp;aacute;t B&amp;agrave; l&amp;agrave; nơi c&amp;oacute; phong cảnh hữu t&amp;igrave;nh v&amp;agrave; hệ sinh th&amp;aacute;i tự nhi&amp;ecirc;n đa dạng - Ảnh: Daniel Hoherd&lt;/em&gt;&lt;/p&gt;
&amp;nbsp;

&lt;p&gt;Với tổng diện t&amp;iacute;ch l&amp;ecirc;n tới 15200 ha, Vườn Quốc Gia C&amp;aacute;t B&amp;agrave; sở hữu một m&amp;ocirc;i trường tự nhi&amp;ecirc;n l&amp;yacute; tưởng cho sự ph&amp;aacute;t triển của rất nhiều loại động &amp;ndash; thực vật. Vườn đ&amp;atilde; được UNESSCO c&amp;ocirc;ng nhận l&amp;agrave; khu dự trữ sinh quyển của thế giới. Ở đ&amp;acirc;y c&amp;oacute; thể thấy v&amp;ocirc; v&amp;agrave;n những rừng n&amp;uacute;i đ&amp;aacute; v&amp;ocirc;i đặc trưng, hay những hang động, những d&amp;ograve;ng th&amp;aacute;c, con suối theo d&amp;ograve;ng nước m&amp;ugrave;a mưa chảy về biển. Ngo&amp;agrave;i ra, Vườn quốc gia C&amp;aacute;t B&amp;agrave; c&amp;ograve;n thu h&amp;uacute;t kh&amp;aacute;ch du lịch bởi những gi&amp;aacute; trị về lịch sử lo&amp;agrave;i người. Những di t&amp;iacute;ch khảo cổ học được t&amp;igrave;m thấy tại đ&amp;acirc;y cho thấy rằng c&amp;oacute; thể con người đ&amp;atilde; sinh sống tại v&amp;ugrave;ng đất n&amp;agrave;y từ 6000 đến 7000 năm về trước.&lt;/p&gt;
&amp;nbsp;

&lt;p&gt;Từ trung t&amp;acirc;m vườn quốc gia C&amp;aacute;t B&amp;agrave; bạn c&amp;oacute; thể lựa chọn một trong 5 tuyến để t&amp;igrave;m hiểu, kh&amp;aacute;m ph&amp;aacute; t&amp;agrave;i nguy&amp;ecirc;n động thực vật của c&amp;aacute;c kiểu rừng kh&amp;aacute;c nhau.&lt;/p&gt;
&amp;nbsp;

&lt;p&gt;C&amp;aacute;c tuyến d&amp;agrave;i với thời gian tham quan từ 4 - 8 tiếng d&amp;agrave;nh cho c&amp;aacute;c hoạt động đi bộ, leo n&amp;uacute;i gồm c&amp;oacute;: tuyến Ao Ếch &amp;ndash; Việt Hải; tuyến M&amp;acirc;y Bầu &amp;ndash; Hang Qu&amp;acirc;n Y; tuyến Kim Giao &amp;ndash; M&amp;eacute; Cồn &amp;ndash; T&amp;ugrave;ng Di. C&amp;aacute;c tuyến ngắn với thời gian tham quan từ 2 đến 3 tiếng d&amp;agrave;nh cho xe m&amp;aacute;y, xe đạp, &amp;ocirc; t&amp;ocirc; v&amp;agrave; đi bộ, leo n&amp;uacute;i gồm c&amp;oacute;: Tuyến Rừng Kim Giao &amp;ndash; Đỉnh Ngự L&amp;acirc;m, Gi&amp;aacute;o dục m&amp;ocirc;i trường; tuyến Động Trung Trang &amp;ndash; Hang Ủy Ban.&lt;/p&gt;
&amp;nbsp;&lt;br /&gt;
&amp;nbsp;
&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img alt=&quot;Vườn quốc gia C&#225;t B&#224; &quot; src=&quot;https://static.mytour.vn/upload_images/Image/L%C6%B0%C6%A1ng%20Mai%20CTV/trekking%20v%C6%B0%E1%BB%9Dn%20qu%E1%BB%91c%20gia%20c%C3%A1t%20b%C3%A0/8932510103_a31f59f705_o.jpg&quot; style=&quot;height:471px; width:710px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;&lt;em&gt;Nếu chọn tuyến Rừng Kim Giao &amp;ndash; Đỉnh Ngự L&amp;acirc;m bạn c&amp;oacute; thể l&amp;ecirc;n tới độ cao 225m so với mực nước biển để bao qu&amp;aacute;t hết khu vực&amp;nbsp;&lt;/em&gt;&lt;em&gt;vườn quốc gia C&amp;aacute;t B&amp;agrave;&lt;/em&gt;&lt;em&gt;&amp;nbsp;- Ảnh: TienLe&lt;/em&gt;&lt;/p&gt;
&amp;nbsp;

&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img alt=&quot;Vườn quốc gia C&#225;t B&#224; &quot; src=&quot;https://static.mytour.vn/upload_images/Image/L%C6%B0%C6%A1ng%20Mai%20CTV/trekking%20v%C6%B0%E1%BB%9Dn%20qu%E1%BB%91c%20gia%20c%C3%A1t%20b%C3%A0/4656061067_df0e27ab19_o.jpg&quot; style=&quot;height:467px; width:710px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;&lt;em&gt;Khung cảnh vườn quốc gia nh&amp;igrave;n từ đỉnh Ngự L&amp;acirc;m - Ảnh:&amp;nbsp;Gavin White&lt;/em&gt;&lt;/p&gt;

&lt;p&gt;&lt;br /&gt;
&lt;strong&gt;&lt;em&gt;H&amp;atilde;y tham khảo h&amp;agrave;nh tr&amp;igrave;nh một ng&amp;agrave;y Trekking tại&amp;nbsp;&lt;/em&gt;&lt;/strong&gt;&lt;strong&gt;&lt;em&gt;Vườn quốc gia C&amp;aacute;t B&amp;agrave;&lt;/em&gt;&lt;/strong&gt;&lt;strong&gt;&lt;em&gt;&amp;nbsp;theo tuyến Ao Ếch - Việt Hải dưới đ&amp;acirc;y nh&amp;eacute;:&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;
&amp;nbsp;

&lt;p&gt;Sau khi khởi h&amp;agrave;nh từ&amp;nbsp;&lt;a href=&quot;http://mytour.vn/c2/khach-san-tai-ha-noi.html&quot; target=&quot;_blank&quot; title=&quot;Xem c&#225;c kh&#225;ch sạn tại H&#224; Nội&quot;&gt;H&amp;agrave; Nội&lt;/a&gt;&amp;nbsp;l&amp;uacute;c 5h s&amp;aacute;ng, khoảng 10h00 bạn sẽ c&amp;oacute; mặt tại C&amp;aacute;t B&amp;agrave;. V&amp;agrave; chuẩn bị trekking vườn quốc gia C&amp;aacute;t b&amp;agrave; với h&amp;agrave;nh tr&amp;igrave;nh k&amp;eacute;o d&amp;agrave;i khoảng 8km đường m&amp;ograve;n trong rừng c&amp;acirc;y cối xanh tươi um t&amp;ugrave;m.&lt;/p&gt;
&amp;nbsp;

&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img alt=&quot;Vườn quốc gia C&#225;t B&#224; &quot; src=&quot;https://static.mytour.vn/upload_images/Image/L%C6%B0%C6%A1ng%20Mai%20CTV/trekking%20v%C6%B0%E1%BB%9Dn%20qu%E1%BB%91c%20gia%20c%C3%A1t%20b%C3%A0/5351671264_6518ff8a01_o.jpg&quot; style=&quot;height:473px; width:710px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;&lt;em&gt;Con đường rừng trong&amp;nbsp;&lt;/em&gt;&lt;em&gt;vườn quốc gia C&amp;aacute;t B&amp;agrave;&lt;/em&gt;&lt;em&gt;&amp;nbsp;c&amp;oacute; những đoạn dễ thở - Ảnh: du kh&amp;aacute;ch&lt;/em&gt;&lt;/p&gt;
&amp;nbsp;

&lt;p&gt;Qu&amp;atilde;ng đường trekking đầu ti&amp;ecirc;n d&amp;agrave;i khoảng 100m l&amp;agrave; đoạn đường kh&amp;oacute; khăn nhất v&amp;agrave; đường sẽ c&amp;ograve;n tăng dần độ ca theo c&amp;aacute;c bậc đ&amp;aacute;. N&amp;ecirc;n thường để tham gia hoạt động n&amp;agrave;y c&amp;aacute;c bạn phải chuẩn bị sẵn một thể lực thật tốt. Hai b&amp;ecirc;n sườn n&amp;uacute;i l&amp;agrave; rừng th&amp;acirc;n gỗ d&amp;agrave;y đặc, dưới g&amp;oacute;t gi&amp;agrave;y l&amp;agrave; thảm l&amp;aacute; mục ẩm ướt. Đừng để kh&amp;oacute; khăn ph&amp;acirc;n t&amp;aacute;n m&amp;agrave; h&amp;atilde;y tận dụng c&amp;aacute;c gi&amp;aacute;c quan để quan s&amp;aacute;t kh&amp;ocirc;ng gian rừng.&lt;/p&gt;
&amp;nbsp;

&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img alt=&quot;Vườn quốc gia C&#225;t B&#224; &quot; src=&quot;https://static.mytour.vn/upload_images/Image/L%C6%B0%C6%A1ng%20Mai%20CTV/trekking%20v%C6%B0%E1%BB%9Dn%20qu%E1%BB%91c%20gia%20c%C3%A1t%20b%C3%A0/13581977813_8528ec23a5_o.jpg&quot; style=&quot;height:471px; width:710px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;&lt;em&gt;C&amp;oacute; những đoạn đường kh&amp;oacute; khăn như thế n&amp;agrave;y - Ảnh: du kh&amp;aacute;ch&lt;/em&gt;&lt;/p&gt;
&amp;nbsp;

&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img alt=&quot;Vườn quốc gia C&#225;t B&#224; &quot; src=&quot;https://static.mytour.vn/upload_images/Image/L%C6%B0%C6%A1ng%20Mai%20CTV/trekking%20v%C6%B0%E1%BB%9Dn%20qu%E1%BB%91c%20gia%20c%C3%A1t%20b%C3%A0/13582208175_9a489ddc1b_o.jpg&quot; style=&quot;height:471px; width:710px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;&lt;em&gt;Hay những đoạn phải leo n&amp;uacute;i dốc đ&amp;aacute; - Ảnh: du kh&amp;aacute;ch&lt;/em&gt;&lt;/p&gt;
&amp;nbsp;

&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img alt=&quot;Vườn quốc gia C&#225;t B&#224; &quot; src=&quot;https://static.mytour.vn/upload_images/Image/L%C6%B0%C6%A1ng%20Mai%20CTV/trekking%20v%C6%B0%E1%BB%9Dn%20qu%E1%BB%91c%20gia%20c%C3%A1t%20b%C3%A0/10718901706_6fba8c7c68_o.jpg&quot; style=&quot;height:473px; width:710px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;&lt;em&gt;Nhưng đường đi hai b&amp;ecirc;n kh&amp;ocirc;ng gian rừng rất đẹp - Ảnh: du kh&amp;aacute;ch&lt;/em&gt;&lt;/p&gt;
&amp;nbsp;

&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img alt=&quot;Vườn quốc gia C&#225;t B&#224; &quot; src=&quot;https://static.mytour.vn/upload_images/Image/L%C6%B0%C6%A1ng%20Mai%20CTV/trekking%20v%C6%B0%E1%BB%9Dn%20qu%E1%BB%91c%20gia%20c%C3%A1t%20b%C3%A0/4671684905_c3f91a16ee_o.jpg&quot; style=&quot;height:532px; width:710px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;&lt;em&gt;Thử chụp ảnh một số sinh vật trong rừng như bọ que hay nhện, thi thoảng ch&amp;uacute;ng sẽ xuất hiện l&amp;agrave;m bạn bất ngờ - &amp;nbsp;Ảnh: du kh&amp;aacute;ch&lt;/em&gt;&lt;/p&gt;
&amp;nbsp;

&lt;p&gt;Sau qu&amp;atilde;ng đường d&amp;agrave;i leo đ&amp;egrave;o vượt dốc, khi thấy trước mặt mở ra một v&amp;ugrave;ng mặt nước m&amp;ecirc;nh m&amp;ocirc;ng, tầm 12h trưa bạn sẽ dừng ch&amp;acirc;n tại Ao Ếch. Bạn c&amp;oacute; thể nghỉ ngơi v&amp;agrave; thưởng thức bữa trưa c&amp;ugrave;ng &amp;nbsp;tiếng ếch r&amp;acirc;m ran tại nơi đ&amp;acirc;y. Nhớ mang thức ăn nước uống gọn nhẹ thuận tiện cho việc đi lại nh&amp;eacute;. B&amp;aacute;nh mỳ cay đặc sản Hải Ph&amp;ograve;ng c&amp;oacute; thể l&amp;agrave; gợi &amp;yacute; cho một bữa trưa tuyệt vời.&lt;/p&gt;
&amp;nbsp;

&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img alt=&quot;Vườn quốc gia C&#225;t B&#224; &quot; src=&quot;https://static.mytour.vn/upload_images/Image/L%C6%B0%C6%A1ng%20Mai%20CTV/trekking%20v%C6%B0%E1%BB%9Dn%20qu%E1%BB%91c%20gia%20c%C3%A1t%20b%C3%A0/5953453304_9e52e95030_o.jpg&quot; style=&quot;height:532px; width:710px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;&lt;em&gt;C&amp;acirc;y V&amp;agrave; Nước - lo&amp;agrave;i c&amp;acirc;y đặc biệt của Ao Ếch - Ảnh: du kh&amp;aacute;ch&lt;/em&gt;&lt;/p&gt;

&lt;p&gt;&lt;br /&gt;
Sau khi nghỉ ngơi nhớ gi&amp;agrave;nh thời gian tranh thủ kh&amp;aacute;m ph&amp;aacute; Ao Ếch - một khu vực rừng ngập nước tr&amp;ecirc;n n&amp;uacute;i cao duy nhất ở miền Bắc, một thắng cảnh đẹp nổi tiếng của vườn Quốc Gia C&amp;aacute;t B&amp;agrave;. Ao Ếch c&amp;aacute;ch cửa rừng khoảng 4km v&amp;agrave; c&amp;aacute;ch l&amp;agrave;ng ch&amp;agrave;i Việt Hải cũng khoảng 4km. Ao Ếch c&amp;oacute; diện t&amp;iacute;ch 3,2 h&amp;eacute;c-ta, nằm lưng chừng n&amp;uacute;i ở độ cao 80 m&amp;eacute;t so với mực nước biển, nước ao trong nh&amp;igrave;n thấy đ&amp;aacute;y v&amp;agrave; nước ở đ&amp;acirc;y &amp;iacute;t khi cạn. Từ đ&amp;aacute;y ao, vươn l&amp;ecirc;n h&amp;agrave;ng ngh&amp;igrave;n c&amp;acirc;y V&amp;agrave; Nước - lo&amp;agrave;i c&amp;acirc;y chỉ c&amp;oacute; ở Ao Ếch m&amp;agrave; kh&amp;ocirc;ng t&amp;igrave;m thấy ở bất cứ nơi n&amp;agrave;o kh&amp;aacute;c. C&amp;acirc;y cao 5 đến 10m mọc tr&amp;ecirc;n nước th&amp;agrave;nh một quần thể rất đẹp v&amp;agrave; b&amp;iacute; ẩn. Thưởng thức bữa trưa, tận hưởng bầu kh&amp;ocirc;ng kh&amp;iacute; m&amp;aacute;t mẻ, trong l&amp;agrave;nh, nghe tiếng ếch k&amp;ecirc;u r&amp;acirc;m ran, ngắm c&amp;aacute; dầm đất bơi lội, c&amp;oacute; lẽ bạn đ&amp;atilde; c&amp;oacute; được một nửa h&amp;agrave;nh tr&amp;igrave;nh m&amp;atilde;n nguyện.&lt;/p&gt;
&amp;nbsp;

&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img alt=&quot;Vườn quốc gia C&#225;t B&#224; &quot; src=&quot;https://static.mytour.vn/upload_images/Image/L%C6%B0%C6%A1ng%20Mai%20CTV/trekking%20v%C6%B0%E1%BB%9Dn%20qu%E1%BB%91c%20gia%20c%C3%A1t%20b%C3%A0/images1041832_image001.jpg&quot; style=&quot;height:472px; width:710px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;&lt;em&gt;Khung cảnh chẳng kh&amp;aacute;c g&amp;igrave; &amp;quot;thi&amp;ecirc;n đường giữa trần gian&amp;quot; ở Ao Ếch - Ảnh: baohaiphong&lt;/em&gt;&lt;/p&gt;
&amp;nbsp;

&lt;p&gt;Sau khi nạp th&amp;ecirc;m năng lượng, lại c&amp;oacute; thể tiếp tục h&amp;agrave;nh tr&amp;igrave;nh từ Ao Ếch đi Việt Hải. Đoạn tiếp theo đường m&amp;ograve;n v&amp;ograve;ng quanh v&amp;aacute;ch n&amp;uacute;i đ&amp;aacute; v&amp;ocirc;i khuất dưới t&amp;aacute;n c&amp;acirc;y rừng k&amp;iacute;n đặc, c&amp;aacute;c loại d&amp;acirc;y leo chằng ch&amp;eacute;o tr&amp;ecirc;n mặt đất, những v&amp;aacute;ch đ&amp;aacute; dựng đứng với những khe hẹp dốc ngược sẽ thử th&amp;aacute;ch sức khỏe v&amp;agrave; sự dẻo dai của bạn.&lt;/p&gt;
&amp;nbsp;

&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img alt=&quot;Vườn quốc gia C&#225;t B&#224; &quot; src=&quot;https://static.mytour.vn/upload_images/Image/L%C6%B0%C6%A1ng%20Mai%20CTV/trekking%20v%C6%B0%E1%BB%9Dn%20qu%E1%BB%91c%20gia%20c%C3%A1t%20b%C3%A0/IMG_0110.jpg&quot; style=&quot;height:532px; width:710px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;&lt;em&gt;C&amp;acirc;y cối ở đ&amp;acirc;y rậm rạp, chằng chịt, c&amp;oacute; đoạn phải luồn dưới đ&amp;aacute;m c&amp;acirc;y leo to bằng cổ tay - Ảnh: du kh&amp;aacute;ch&lt;/em&gt;&lt;/p&gt;
&amp;nbsp;

&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img alt=&quot;Vườn quốc gia C&#225;t B&#224; &quot; src=&quot;https://static.mytour.vn/upload_images/Image/L%C6%B0%C6%A1ng%20Mai%20CTV/trekking%20v%C6%B0%E1%BB%9Dn%20qu%E1%BB%91c%20gia%20c%C3%A1t%20b%C3%A0/IMG_0109.jpg&quot; style=&quot;height:532px; width:710px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;&lt;em&gt;C&amp;oacute; những đoạn dốc - Ảnh: Du kh&amp;aacute;ch&lt;/em&gt;&lt;/p&gt;
&amp;nbsp;

&lt;p&gt;Qua 8km xuy&amp;ecirc;n vườn quốc gia C&amp;aacute;t B&amp;agrave;, trước mắt bạn sẽ l&amp;agrave; l&amp;agrave;ng ch&amp;agrave;i nhỏ ven biển Việt Hải. V&amp;ugrave;ng đất n&amp;agrave;y l&amp;agrave; l&amp;ograve;ng chảo nằm gọn b&amp;ecirc;n trong c&amp;aacute;c d&amp;atilde;y n&amp;uacute;i bao bọc, v&amp;agrave;o được đến đ&amp;acirc;y chỉ c&amp;oacute; hoặc đi xuy&amp;ecirc;n qua biển, cập bến Việt Hải hoặc leo n&amp;uacute;i vượt rừng quốc gia như h&amp;agrave;nh tr&amp;igrave;nh vừa qua.&lt;/p&gt;
&amp;nbsp;

&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img alt=&quot;Vườn quốc gia C&#225;t B&#224; &quot; src=&quot;https://static.mytour.vn/upload_images/Image/L%C6%B0%C6%A1ng%20Mai%20CTV/trekking%20v%C6%B0%E1%BB%9Dn%20qu%E1%BB%91c%20gia%20c%C3%A1t%20b%C3%A0/13582522803_12a76d8bef_o.jpg&quot; style=&quot;height:471px; width:710px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;&lt;em&gt;Xa xa bạn c&amp;oacute; thể chi&amp;ecirc;m ngưỡng l&amp;agrave;ng ch&amp;agrave;i &amp;nbsp;nhỏ ven biển - Ảnh: Du kh&amp;aacute;ch&lt;/em&gt;&lt;/p&gt;
&amp;nbsp;

&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img alt=&quot;Vườn quốc gia C&#225;t B&#224; &quot; src=&quot;https://static.mytour.vn/upload_images/Image/L%C6%B0%C6%A1ng%20Mai%20CTV/trekking%20v%C6%B0%E1%BB%9Dn%20qu%E1%BB%91c%20gia%20c%C3%A1t%20b%C3%A0/IMG_0076.jpg&quot; style=&quot;height:532px; width:710px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;&lt;em&gt;Quang cảnh y&amp;ecirc;n b&amp;igrave;nh của l&amp;agrave;ng ch&amp;agrave;i Việt Hải - Ảnh: du kh&amp;aacute;ch&lt;/em&gt;&lt;/p&gt;
&amp;nbsp;

&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img alt=&quot;Vườn quốc gia C&#225;t B&#224; &quot; src=&quot;https://static.mytour.vn/upload_images/Image/L%C6%B0%C6%A1ng%20Mai%20CTV/trekking%20v%C6%B0%E1%BB%9Dn%20qu%E1%BB%91c%20gia%20c%C3%A1t%20b%C3%A0/14229484462_a92787859c_o.jpg&quot; style=&quot;height:473px; width:710px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;&lt;em&gt;Cuộc sống thường ng&amp;agrave;y tại Việt Hải - Ảnh: du kh&amp;aacute;ch&lt;/em&gt;&lt;/p&gt;
&lt;br /&gt;
&amp;nbsp;
&lt;p&gt;Kết th&amp;uacute;c chuyến h&amp;agrave;nh tr&amp;igrave;nh bạn l&amp;ecirc;n t&amp;agrave;u trở về nghỉ ngơi tại c&amp;aacute;c kh&amp;aacute;ch sạn tại C&amp;aacute;t B&amp;agrave;, để h&amp;ocirc;m sau chuẩn bị cho chuyến h&amp;agrave;nh tr&amp;igrave;nh mới. C&amp;oacute; thể lựa chọn kh&amp;aacute;m ph&amp;aacute; tiếp 1 trong 4 tuyến trekking tại Vườn quốc gia C&amp;aacute;t B&amp;agrave; c&amp;ograve;n lại, hoặc thử sức ở bộ m&amp;ocirc;n tr&amp;egrave;o Kayak tại Vịnh Lan Hạ. Những hoạt động n&amp;agrave;y tại C&amp;aacute;t B&amp;agrave; được rất nhiều c&amp;aacute;c bạn trẻ cũng như kh&amp;aacute;ch nước ngo&amp;agrave;i ưa chuộng.&lt;/p&gt;
&amp;nbsp;

&lt;p&gt;&lt;strong&gt;Nắng Mai&lt;/strong&gt;&lt;/p&gt;
', NULL, N'Nắng Mai', CAST(0x0000A5340107E1CA AS DateTime), 0)
GO
INSERT [ann77429_admin].[New] ([Id], [Title], [KeyWord], [img], [Sumary], [Content], [link], [by], [ModTime], [isHome]) VALUES (3, N'Vịnh Lan Hạ bằng thuyền kayak ', N'vinh-lan-ha-bang-thuyen-kayak-', N'/Upload/images/BaiViet/55f141e55ee3b.png', N'Từ lâu, du lịch Hải Phòng đã nổi tiếng với quần đảo Cát Bà với hàng trăm hàng nghìn hòn đảo lớn nhỏ , vườn quốc gia với hệ thực vật phong phú, với những bãi tắm bờ cát trắng trải dài và vịnh Lan Hạ xinh đẹp… Đến với Cát Bà, du khách không thể bỏ qua các hoạt động như tắm biển, trekking rừng nhiệt đới và vườn quốc gia Cát Bà, thăm đảo khỉ và đặc biệt là chèo thuyền kayak thăm vịnh Lan Hạ.', N'&lt;!--StartFragment--&gt;
&lt;p&gt;Từ l&amp;acirc;u, du lịch Hải Ph&amp;ograve;ng đ&amp;atilde; nổi tiếng với quần đảo C&amp;aacute;t B&amp;agrave; với h&amp;agrave;ng trăm h&amp;agrave;ng ngh&amp;igrave;n h&amp;ograve;n đảo lớn nhỏ , vườn quốc gia với hệ thực vật phong ph&amp;uacute;, với những b&amp;atilde;i tắm bờ c&amp;aacute;t trắng trải d&amp;agrave;i v&amp;agrave; vịnh Lan Hạ xinh đẹp&amp;hellip; Đến với C&amp;aacute;t B&amp;agrave;, du kh&amp;aacute;ch kh&amp;ocirc;ng thể bỏ qua c&amp;aacute;c hoạt động như tắm biển, trekking rừng nhiệt đới v&amp;agrave; vườn quốc gia C&amp;aacute;t B&amp;agrave;, thăm đảo khỉ v&amp;agrave; đặc biệt l&amp;agrave; ch&amp;egrave;o thuyền kayak thăm vịnh Lan Hạ v&amp;agrave; c&amp;aacute;c l&amp;agrave;ng ch&amp;agrave;i ven biển, để kh&amp;aacute;m ph&amp;aacute; vẻ đẹp v&amp;agrave; trải nghiệm cuộc sống của ngư d&amp;acirc;n nơi đ&amp;acirc;y.&lt;br /&gt;
&amp;nbsp;&lt;/p&gt;

&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://halongwave.com/userfiles/image/1%20Bai%20Tho/cat-ba/vinh-lan-ha-kayak.jpg&quot; style=&quot;height:450px; width:600px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;Vịnh Lan Hạ nằm ph&amp;iacute;a Nam của&amp;nbsp;&lt;a href=&quot;http://halongwave.com/&quot;&gt;Vịnh Hạ Long&lt;/a&gt;. Lan Hạ kh&amp;ocirc;ng tấp nập, s&amp;ocirc;i nổi như vịnh Hạ Long m&amp;agrave; mang một vẻ đẹp duy&amp;ecirc;n d&amp;aacute;ng, quyến rũ với c&amp;aacute;c b&amp;atilde;i c&amp;aacute;t nhỏ nằm dưới ch&amp;acirc;n những h&amp;ograve;n đảo đ&amp;aacute; tr&amp;ocirc;ng thật đẹp. Tham gia tour ch&amp;egrave;o kayak tham quan vịnh, bạn sẽ c&amp;oacute; những cảm x&amp;uacute;c tuyệt vời khi khua m&amp;aacute;i ch&amp;egrave;o đến s&amp;aacute;t những ch&amp;acirc;n n&amp;uacute;i đ&amp;aacute;, cảm nhận sự tĩnh lặng v&amp;agrave; ngắm sự thi&amp;ecirc;n nhi&amp;ecirc;n h&amp;ugrave;ng vĩ ở đảo C&amp;aacute;t B&amp;agrave;.&lt;/p&gt;

&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://halongwave.com/userfiles/image/1%20Bai%20Tho/cat-ba/vinh-lan-ha-toan-canh.jpg&quot; style=&quot;height:300px; width:600px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;To&amp;agrave;n cảnh vịnh lan Hạ xinh đẹp&lt;/p&gt;

&lt;p&gt;Cứ 2 người ngồi chung một chiếc thuyền kayak, luồn l&amp;aacute;ch qua những h&amp;ograve;n đảo v&amp;agrave; hang nhỏ, dần dần con thuyền đưa bạn đến s&amp;aacute;t ch&amp;acirc;n n&amp;uacute;i đ&amp;aacute;, tận mắt ngắm nh&amp;igrave;n v&amp;ocirc; v&amp;agrave;n cảnh sắc sinh động của thế giới biển dưới mặt nước trong xanh, lấp l&amp;aacute;nh &amp;aacute;nh mặt trời. C&amp;oacute; thể l&amp;uacute;c đầu chưa quen m&amp;aacute;i ch&amp;egrave;o hoặc kh&amp;ocirc;ng thể điều khiển được hướng đi của thuyền, nhưng một khi đ&amp;atilde; l&amp;agrave;m chủ được m&amp;aacute;i ch&amp;egrave;o th&amp;igrave; bạn sẽ thấy th&amp;iacute;ch th&amp;uacute; v&amp;agrave; h&amp;agrave;o hứng hơn, ch&amp;egrave;o mạnh tay v&amp;agrave; sung sức hơn nữa.&lt;/p&gt;

&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://halongwave.com/userfiles/image/1%20Bai%20Tho/cat-ba/kayak-lan-ha.jpg&quot; style=&quot;height:398px; width:600px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;Cứ 2 người ngồi tr&amp;ecirc;n 1 chiếc kayak...&lt;/p&gt;

&lt;p&gt;Sau khi tham quan vẻ đẹp k&amp;igrave; th&amp;uacute; của những h&amp;ograve;n đảo đ&amp;aacute; quanh vịnh Lan Hạ, h&amp;atilde;y d&amp;agrave;nh thời gian ch&amp;egrave;o kayak đến v&amp;agrave; kh&amp;aacute;m ph&amp;aacute; cuộc sống của những ngư d&amp;acirc;n l&amp;agrave;ng ch&amp;agrave;i ven biển, để t&amp;igrave;m hiểu những hoạt động thường ng&amp;agrave;y, ngắm nh&amp;igrave;n những b&amp;egrave; nu&amp;ocirc;i t&amp;ocirc;m c&amp;aacute; với những đ&amp;agrave;n c&amp;aacute; nhỏ x&amp;iacute;u bơi lội tung tăng&amp;hellip;&lt;/p&gt;

&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://halongwave.com/userfiles/image/1%20Bai%20Tho/ngu_dan_lang_chai.jpg&quot; style=&quot;height:398px; width:600px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;Ch&amp;egrave;o kayak đến kh&amp;aacute;m ph&amp;aacute; cuộc sống của ngư d&amp;acirc;n l&amp;agrave;ng ch&amp;agrave;i&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Nếu c&amp;oacute; cơ hội đến&amp;nbsp;C&amp;aacute;t B&amp;agrave;, h&amp;atilde;y thử một lần cảm gi&amp;aacute;c tr&amp;egrave;o thuyền kayak. M&amp;ocirc;n thể thao th&amp;uacute; vị n&amp;agrave;y chắc chắn sẽ đem đến cho bạn những cảm gi&amp;aacute;c kh&amp;oacute; qu&amp;ecirc;n.&amp;nbsp;&lt;/p&gt;
&lt;!--EndFragment--&gt;', NULL, N'Sưu Tầm', CAST(0x0000A53400BB5EBC AS DateTime), 0)
GO
INSERT [ann77429_admin].[New] ([Id], [Title], [KeyWord], [img], [Sumary], [Content], [link], [by], [ModTime], [isHome]) VALUES (4, N'HOMESTAY IN FLOATING VILLAGE TIPS ', N'homestay-in-floating-village-tips-', N'/Upload/images/BaiViet/binh-minh-tren-bien-giaoducvietnam-5.jpg', N'  Homestay visitors at Lan Ha fishing village will experience interesting things such as dining out together, sleeping and fishing with fishermen. ', N'&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;1.&amp;nbsp;&amp;nbsp; &amp;nbsp;What is homestay tourism?&lt;/strong&gt;&lt;br /&gt;
&lt;br /&gt;
Homestay is an ideal form of &amp;ldquo;green tourism&amp;rdquo; for people who love exploring culture in new places. When travelling in such a form, instead of staying in hotels or motels, visitors will stay at a host family in order to have a friendly view and closer to their lifestyle and culture.&lt;br /&gt;
A homestay participant is considered a family member and participates in daily activities and chatting with others. &amp;nbsp;Homestay visitors at Lan Ha fishing village will experience interesting things such as dining out together, sleeping and fishing with fishermen. &amp;nbsp;Moreover, visitors can stay and enjoy the peaceful atmosphere in a boat house, which is surrounded by the ocean with limestone mountains.&amp;nbsp;&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;2. Accommodation&amp;nbsp;&lt;/strong&gt;&lt;br /&gt;
&lt;br /&gt;
Local People&amp;rsquo;s floating thouse: Lan Hạ Bay, Cat Ba is one in few places in Vietnam which has fishing village with sea culture, especially floating house and fishermen&amp;rsquo;s fish cages. There are currently 10 households with maximum space for 4 people each household. Particularly, some families have extra rooms for about 6 visitors. Because all family members share a common space and there is no private room, homestay visitors will sleep together with local people.&amp;nbsp;&lt;br /&gt;
Navy floating house: &amp;nbsp;Navy floating house belong to Vietnam&amp;rsquo;s navy including 4 main floating houses and a lot of fish cages. Navy soldiers have responsibility of guarding and protecting Vietnam&amp;rsquo;s marine areas. Besides, they increase production by fishing and raise aquaculture. They also have floating houses for greeting visitors with 5 private rooms equipped beds, fans that are suitable for 2 people per room.&amp;nbsp;&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;2.&amp;nbsp;&amp;nbsp; &amp;nbsp;Infrastructure&lt;/strong&gt;&lt;br /&gt;
&lt;br /&gt;
Situated far from the town center and deeply in Lan Ha Bay, local people meet much difficulties , so the infrastructure of these floating houses are not in good quality compared to hotels or motels. In the evenings, because of not having electricity, they use electric generators operated by oil, which creates much noise.&amp;nbsp;&lt;br /&gt;
Navy boathouses with larger space will minimize noise. Toilets in local people&amp;rsquo;s boathouse are not modern so visitors may feel inconvenient. Navy boathouses fulfill this problem.&amp;nbsp;&lt;br /&gt;
Furthermore, visitors will moved from Cai Beo to homestay floating houses by an oil-operated boat, the main vehicle of fishermen. It takes about 45 minutes because of slow movement.&amp;nbsp;&lt;br /&gt;
Despite not having very high- quality infrastructure, people in Lan Ha village are extremely friendly and hospitable and ready to give the best things for visitors. That also makes Lan Ha become an ideal destination to enjoy peaceful atmosphere and experience fishermen&amp;rsquo;s lives.&amp;nbsp;&lt;br /&gt;
.Homestay visitors are the one who contributes in helping local fishermen to improve infrastructure and enhance life quality.&amp;nbsp;&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;3. &amp;nbsp;Some notice for visitors&amp;nbsp;&lt;/strong&gt;&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;Accept the differences&lt;/strong&gt;&lt;br /&gt;
When staying with people from different culture, please respect each characteristic and lifestyle, etc. If one can&amp;rsquo;t express opinions in a polite and ingenious way, it is advisable not to show it.&amp;nbsp;&lt;br /&gt;
In eating habits, each area has a typical characteristic and rule. It had better behave cleverly.&amp;nbsp;&lt;br /&gt;
You may not be familiar to dishes but don&amp;rsquo;t show your discomfort, let&amp;rsquo;s try to accept it.&amp;nbsp;&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;Ask if something is unclear.&lt;/strong&gt;&lt;br /&gt;
Questions are warmly welcomed and host families will surely answer and help you. Asking questions also support you and please remember to be comfortable and give your requirements.&amp;nbsp;&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;Friendliness and respect&amp;nbsp;&lt;/strong&gt;&lt;br /&gt;
Please ask them things that you can be used; respect the private space life. Keep the environment clean. Always say thank you and sincerely smile for their help.&amp;nbsp;&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;Relax&lt;/strong&gt;&lt;br /&gt;
In the first days, you may be uncomfortable because of staying in a stranger&amp;rsquo;s house. It is advisable that you should be relaxed, actively join in their lives by researching the activities, daily habits of local people. Visitors can take part in cooking with host family, fishing activities or singing local songs.&amp;nbsp;&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;4. Schedule&lt;/strong&gt;&lt;br /&gt;
&lt;br /&gt;
17:00: Present at Beo Port&amp;nbsp;&lt;br /&gt;
17:00- 18:00: moving to homestay floating houses by boat.&amp;nbsp;&lt;br /&gt;
18:00- 19:00: having dinner with host family&lt;br /&gt;
19h &amp;ndash; 23h: Participating in fishing activities, experiencing sea culture.&amp;nbsp;&lt;br /&gt;
05h - 5h30 a.m: get up and welcome the dawn.&amp;nbsp;&lt;br /&gt;
06h -6h30 : having breakfast&lt;br /&gt;
07h- 08h : visiting fish cages and researching local people&amp;rsquo;s lives.&amp;nbsp;&lt;br /&gt;
08h &amp;ndash; 09h: Come back to Beo Port&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;5. Communication&lt;/strong&gt;&lt;br /&gt;
&lt;br /&gt;
&amp;nbsp;Bạn t&amp;ecirc;n l&amp;agrave; g&amp;igrave;? &amp;ndash; What is your name?&lt;br /&gt;
Bạn c&amp;oacute; muốn đi ngủ kh&amp;ocirc;ng? &amp;ndash; Do you want to go to sleep?&lt;br /&gt;
Bạn c&amp;oacute; muốn uống tr&amp;agrave; kh&amp;ocirc;ng? &amp;ndash; Do you want to have some tea?&lt;br /&gt;
C&amp;oacute; muốn đi c&amp;acirc;u c&amp;aacute;/ c&amp;acirc;u mực kh&amp;ocirc;ng? &amp;ndash; Do you want to go fishing/catching squids?&lt;br /&gt;
Đi theo t&amp;ocirc;i. &amp;ndash; Follow me please.&lt;br /&gt;
Bạn c&amp;oacute; muốn t&amp;ocirc;i gọi dậy sớm s&amp;aacute;ng mai kh&amp;ocirc;ng? &amp;ndash; Do you want to be waked up early in tomorrow morning?&lt;br /&gt;
Where is the rest room? &amp;ndash; Nh&amp;agrave; vệ sinh ở đ&amp;acirc;u?&lt;br /&gt;
I would like to have some water, please. &amp;ndash; T&amp;ocirc;i muốn uống nước.&lt;br /&gt;
I want to see the sun rise tomorrow morning &amp;ndash; T&amp;ocirc;i muốn được thấy mặt trời mọc s&amp;aacute;ng mai.&lt;br /&gt;
I want to go to sleep. &amp;ndash; T&amp;ocirc;i muốn đi ngủ.&lt;br /&gt;
How to fish? &amp;ndash; C&amp;acirc;u c&amp;aacute; như thế n&amp;agrave;o?&lt;br /&gt;
How to catch squids? &amp;ndash; C&amp;acirc;u mực như thế n&amp;agrave;o&lt;/span&gt;&lt;br /&gt;
&amp;nbsp;', NULL, NULL, CAST(0x0000A54600B96E07 AS DateTime), 1)
GO
INSERT [ann77429_admin].[New] ([Id], [Title], [KeyWord], [img], [Sumary], [Content], [link], [by], [ModTime], [isHome]) VALUES (6, N'THINGS NOT MISS IN CATBA ISLAND', N'things-not-miss-in-catba-island', N'/Upload/images/Slide/Boracay.jpg', N'Avid hikers should not hesitate to check out this beautiful national part, noted for its mangroves, subtropical evergreen forests, freshwater lakes and even some coral reefs down along the coast', N'&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;1. Cat Ba National Park &lt;/strong&gt;&lt;br /&gt;
&lt;br /&gt;
Avid hikers should not hesitate to check out this beautiful national part, noted for its mangroves, subtropical evergreen forests, freshwater lakes and even some coral reefs down along the coast. While rich in flora, hikers often report seeing little in the way of fauna, though there are reportedly some animals running about -- we only saw goats.&amp;nbsp;&lt;br /&gt;
&lt;br /&gt;
All the hikes here are pretty challenging to some degree, and a guide is highly recommended to make the best of the experience. There is one short hike, to Dinh Kim Gial, which is only two kilometres and takes two hours, which is the best one to try on your own. You can buy a ticket at the gate.: entrance is 15,000 VND and a guide is 100,000 VND per group for this short trek. The more challenging hikes include a trip up to Ao Ech (Frog Lake) and over the hill to a tribal village inhabited by the Viet Hai &amp;ndash; six kilometres, takes four hours, and costs 35,000 VND to enter. Prepare well for any of these treks, as they are not easy -- really and truly, spring for a guide if you can. Any hotel in town that arranges tours can help you sort out which trek to take and hook you up with a guide.&amp;nbsp;&lt;br /&gt;
&lt;br /&gt;
Most three-day boat tours will include time in the park &amp;ndash; quite often a climb to the top of the highest point in Cat Ba, which is a steep but doable climb.&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/Slide/11403473_480036155506384_4126811675176902505_n.jpg&quot; style=&quot;height:450px; width:600px&quot; /&gt;&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;2. Beaches&lt;/strong&gt;&lt;br /&gt;
&lt;br /&gt;
at Ba town has three beaches within walking &amp;ndash; or golf buggy &amp;ndash; distance. The first beach is called Cat Co 3 -- you can reach it by following the harbour road west until it ends, and then going over the headland (if you&amp;#39;re on a motorbike, they&amp;#39;ll charge you 5,000 VND to park it at the base). Here you&amp;#39;ll find Sunrise Resort, but the beach in front of it is open to the public.&lt;br /&gt;
&lt;br /&gt;
If you head west on the harbour road but turn up the hill on the left before the Harbour View Hotel, you&amp;#39;ll reach Cat Co 1 &amp;ndash; straight ahead &amp;ndash; and Cat Co 2 by turning left towards Cat Co Beach Resort. Both are quieter than Cat Co 3.You can also walk to Cat Co 1 from Cat Co 3, and it&amp;#39;s worth the walk, with fantastic views over the bay and the beach from the cliff-edge path.&amp;nbsp;&lt;br /&gt;
&lt;br /&gt;
All beaches have umbrellas, loungers and chairs for rent and drinks are available. Cat Co 2 also has a small restaurant. You can rent a kayak from Cat Co 3 for 200,000VND per hour.&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/Slide/11737983_10203538383900614_5561135361671533245_n.jpg&quot; style=&quot;height:400px; width:600px&quot; /&gt;&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;3. Boat trips around the bay&lt;/strong&gt;&lt;br /&gt;
&lt;br /&gt;
As in Ha Long City, it&amp;#39;s easy enough to book a boat trip out of Cat Ba Island to explore the Bay, either with a travel agent or direct at Beo harbour, 2 km from the centre of town. It&amp;#39;s probably a better option than Ha Long: you&amp;#39;re much closer to the action on Cat Ba so there&amp;#39;s less time spent getting to the pretty bit. Also, tours explore beautiful Lan Ha Bay, which you won&amp;#39;t get to if travelling from Ha Long City, unless you&amp;#39;re out for three days.&amp;nbsp;&lt;br /&gt;
&lt;br /&gt;
You can also book two- or three-day trips around the bay or get a boat out to Monkey Island &amp;ndash; for some beach time &amp;ndash; or with a stop to cycle to Viet Hai Village.&amp;nbsp;&lt;br /&gt;
&lt;br /&gt;
Travel agent prices range from $10 to $25 for a day trip, depending on route. You won&amp;#39;t save anything if you buy your Monkey Island trip at the harbour, and times are inconsistent, so you&amp;#39;re best off booking with an agent, but if you want a short tour of the bay it could be a bit cheaper. You&amp;#39;ll pay 750,000 VND for a two-hour tour plus 20,000 to 30,000 VND entry, but don&amp;#39;t forget you also need to get to the pier.&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/Slide/KAYAK%20V%E1%BB%8ANH%20LAN%20H%E1%BA%A0.jpg&quot; style=&quot;height:450px; width:600px&quot; /&gt;&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;4. Hospital Cave&lt;/strong&gt;&lt;br /&gt;
&lt;br /&gt;
Hospital Cave was a secret, bomb-proof hospital built during the American War and was used as a safe house for VC leaders until 1975.&amp;nbsp;&lt;br /&gt;
&lt;br /&gt;
Access is via a woodland path and some rickety steps and inside you will find a selection of concrete rooms. The cave is often included as part of an island tour and is also easy to reach from Cat Ba town by motorbike or motorbike taxi (around 200,000 VND return) en route to the national park. It is a fascinating stop off, particularly for those interested in the war.&amp;nbsp;&lt;br /&gt;
&lt;br /&gt;
Entry is 15,000 VND but we&amp;#39;d highly recommend paying an extra 30,000 VND for a guide as there is no information in the cave.&lt;br /&gt;
&lt;br /&gt;
The cave is located 10 kilometres north of Cat Ba town, inland, on the way to the national park. Look out for a sign on the right saying Hospital Cave and pay at the store opposite.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;5. Cannon Port&lt;/strong&gt;&lt;br /&gt;
&lt;br /&gt;
Hospital Cave was a secret, bomb-proof hospital built during the American War and was used as a safe house for VC leaders until 1975.&amp;nbsp;&lt;br /&gt;
&lt;br /&gt;
Access is via a woodland path and some rickety steps and inside you will find a selection of concrete rooms. The cave is often included as part of an island tour and is also easy to reach from Cat Ba town by motorbike or motorbike taxi (around 200,000 VND return) en route to the national park. It is a fascinating stop off, particularly for those interested in the war.&amp;nbsp;&lt;br /&gt;
&lt;br /&gt;
Entry is 15,000 VND but we&amp;#39;d highly recommend paying an extra 30,000 VND for a guide as there is no information in the cave.&lt;br /&gt;
&lt;br /&gt;
The cave is located 10 kilometres north of Cat Ba town, inland, on the way to the national park. Look out for a sign on the right saying Hospital Cave and pay at the store opposite.&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/Slide/dc2.jpg&quot; style=&quot;height:400px; width:600px&quot; /&gt;&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;6. Other activities&lt;/strong&gt;&lt;br /&gt;
&lt;br /&gt;
Rock climbing trips can be arranged in Cat Ba, led by experienced climbers. Talk to Asia Outdoors in The Good Bar building which can organise trips for all levels.&lt;br /&gt;
&lt;br /&gt;
Asia Outdoors can also organise kayaking, as can other agents in town. Expect to pay around $15 for a few hours, or combine kayaking with a boat trip for a full day experience.&lt;br /&gt;
&lt;br /&gt;
Small boats cruise the harbour looking for fares, so if you prefer to be closer to the water but don&amp;#39;t want to do the hard paddling, you can give it a whirl.&lt;br /&gt;
&lt;br /&gt;
Motorbikes are available to rent all over the place for 80,000 VND to 120,000 VND &amp;ndash; both automatic and semi-automatic &amp;ndash; and it&amp;#39;s a good way to explore the island. The road conditions aren&amp;#39;t great &amp;ndash; although there was a lot of construction work going on when we visited in August 2014 &amp;ndash; but roads are quiet and the scenery is amazing enough you&amp;#39;ll want to keep stopping to take photos.&lt;br /&gt;
&lt;br /&gt;
Bicycles are also available to rent but bear in mind Cat Ba is quite hilly, particularly in the centre, so you&amp;#39;ll need a certain degree of fitness. Or rent a tandem for 50,000 VND per hour for a gentle ride along the harbour road. They actually have four seats (two for children) so you can make it a family outing&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/Slide/lan-ngam-san-ho-phu-quoc2.jpg&quot; style=&quot;height:400px; width:600px&quot; /&gt;&lt;/span&gt;', NULL, N'Theo Travel Fish', CAST(0x0000A54600B9D0D7 AS DateTime), 1)
GO
INSERT [ann77429_admin].[New] ([Id], [Title], [KeyWord], [img], [Sumary], [Content], [link], [by], [ModTime], [isHome]) VALUES (7, N'SOMETHING OF A PEARL ISLAND', N'something-of-a-pearl-island', N'/Upload/images/Slide/11357168_969126233098998_6254850915286187266_o.jpg', N'Nestled on the periphery of Vietnam''s fabulous Ha Long Bay, Cat Ba Island is big -- more than 350 square kilometres -- but most tourists see but a sliver of it.
', N'&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&amp;nbsp;Put ashore as part of a three-day tour of Ha Long Bay, time is spent on organised treks or bike rides in the national park and tours of Monkey Island, or eating at one of the many seafood places around the harbour.&lt;br /&gt;
estled on the periphery of Vietnam&amp;#39;s fabulous Ha Long Bay, Cat Ba Island is big -- more than 350 square kilometres -- but most tourists see but a sliver of it. Put ashore as part of a three-day tour of Ha Long Bay, time is spent on organised treks or bike rides in the national park and tours of Monkey Island, or eating at one of the many seafood places around the harbour.&lt;img alt=&quot;&quot; src=&quot;/Upload/images/Slide/img_2044.jpg&quot; /&gt;&lt;br /&gt;
But independent travellers shouldn&amp;#39;t rule out a stay. Three beaches are located near the harbour town -- hardly world class, but they&amp;#39;ll do for a quick swim and some baking on the sand. The national park is a good place for a close-to-nature trek among the mangroves and freshwater lakes and it&amp;#39;s a good launching point for tours of Ha Long Bay and kayaking trips.&lt;br /&gt;
&lt;br /&gt;
You can also explore Hospital Cave on the main island, which played its part in the war with America, enjoy the views from Cannon Fort or just cruise the island on a motorbike. A 100 kilometre circuit runs along the bay and into the interior, through incredibly beautiful countryside, and small villages where life in Cat Ba has gone on,&amp;nbsp;&lt;strong&gt;largely untainted by the decades-long boom in tourism&lt;/strong&gt;.&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/Slide/00000000000000000%20(3).JPG&quot; style=&quot;height:449px; width:600px&quot; /&gt;&lt;br /&gt;
If you have the time, allow at least a couple of days to explore -- longer if you plan to use it as a base to take boat trips out into Ha Long Bay, relax on the beaches or engage in activities such as rock climbing. And, of course, you&amp;#39;ll want to leave enough time to enjoy the fresh seafood, relax with a beer overlooking the bay or stroll along the promenade, which provides a pleasant view, dotted with fishing boats and floating restaurants. Make sure you catch at least one of the smouldering sunsets.&lt;br /&gt;
&lt;br /&gt;
&lt;a href=&quot;http://www.travelfish.org/accommodation/vietnam/hanoi_and_surrounds/quang_ninh/cat_ba_island/all&quot;&gt;Accommodation on Cat Ba&lt;/a&gt;&amp;nbsp;isn&amp;#39;t particularly inspiring but there are some good options in all price ranges. If you want some luxury you&amp;#39;ll need to go to the beach. With so many hotels it&amp;#39;s unlikely you&amp;#39;ll have problems finding a room &amp;ndash; we went on a weekend in August and only a few places were full.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;/Upload/images/Slide/LUONG.jpg&quot; /&gt;&lt;br /&gt;
&lt;strong&gt;Orientation&lt;/strong&gt;&lt;br /&gt;
Cat Ba Island is shaped like an upside down and poorly drawn triangle, with the national park filling most of its land area.&amp;nbsp;&lt;strong&gt;Gia Luan Pier&lt;/strong&gt;, where boats from Ha Long City and Tuan Chau dock, is on the northern coastline. From here a road runs through the centre to the southern point where the main town is located. The town doesn&amp;#39;t have a name as such, but it&amp;#39;s where most of the islanders live and where most of the accommodation, tourism services and dining options are located.&amp;nbsp;&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/Slide/11357168_969126233098998_6254850915286187266_o.jpg&quot; /&gt;Most of the action is along the main thoroughfare (1-4 Street), which runs along the edge of the harbour, and along two roads that head inland, perpendicular to it. Both of these roads are named Nui Ngoc (it&amp;#39;s actually one road that loops inland and returns to the harbour). It&amp;#39;s not easy to get lost.&amp;nbsp;&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;ATMs&lt;/strong&gt;&amp;nbsp;are in scarce supply but in the town you&amp;#39;ll find one in a kiosk near the entrance to the pier and another in the entrance of the Holiday View Hotel. We weren&amp;#39;t able to get cash out of the one near the pier, so best to travel with enough cash to see you through, just in case.&amp;nbsp;&lt;strong&gt;Internet&lt;/strong&gt;&amp;nbsp;is available at hotels and restaurants.&amp;nbsp;&lt;br /&gt;
&lt;br /&gt;
Attractions near the town include Cannon Fort and the beaches, all of which are accessible by foot. The pier from where the day trips and boats to Monkey Island depart is just over one kilometre from the town. To reach the national park or Hospital Cave you will need to take a motorbike, taxi or motorbike taxi back up the central road -- if you&amp;#39;re not going on an organised tour.&amp;nbsp;&lt;br /&gt;
&lt;br /&gt;
There&amp;#39;s not much of interest in the north of the island, and no road access to most of it anyway, but other than the main road running north to south a smaller road runs west from just north of the national park entrance and takes a circuitous and beautiful meander along the coast back to the town (south) or north to the pier from where boats depart to Ha Long City.&lt;/span&gt;&lt;/p&gt;
', NULL, N'Theo Travel Fish', CAST(0x0000A54600BAF338 AS DateTime), 1)
GO
INSERT [ann77429_admin].[New] ([Id], [Title], [KeyWord], [img], [Sumary], [Content], [link], [by], [ModTime], [isHome]) VALUES (8, N'SECRET OF CATBA ISLAND', N'secret-of-catba-island', N'/Upload/images/Slide/Nenlam.jpg', N'The best way to truly see Cat Ba island is on the back of a motorbike. If you know how to ride one, lucky you! Otherwise find a companion or hire a driver on basically any street corner. ', N'&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-01.jpg&quot;&gt;&lt;img alt=&quot;Cat Ba town&quot; src=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-01.jpg&quot; style=&quot;height:465px; width:620px&quot; /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Cat Ba town&amp;nbsp;is downright hideous.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-02.jpg&quot;&gt;&lt;img alt=&quot;Cat Ba Town&quot; src=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-02.jpg&quot; style=&quot;height:465px; width:620px&quot; /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;The obtrusive signage&lt;/span&gt;&lt;br /&gt;
&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-03.jpg&quot;&gt;&lt;img alt=&quot;Cat Ba Town&quot; src=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-03.jpg&quot; style=&quot;height:465px; width:620px&quot; /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;all&amp;nbsp;just&amp;nbsp;pains&amp;nbsp;me.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-04.jpg&quot;&gt;&lt;img alt=&quot;Cat Ba Town&quot; src=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-04.jpg&quot; style=&quot;height:465px; width:620px&quot; /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;But quietly concealed&amp;nbsp;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-05.jpg&quot;&gt;&lt;img alt=&quot;Cat Ba Island &quot; src=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-05.jpg&quot; style=&quot;height:465px; width:620px&quot; /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Cat Ba is an island more beautiful&amp;nbsp;than I could have even imagined.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-06.jpg&quot;&gt;&lt;img alt=&quot;Cat Ba Island &quot; src=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-06.jpg&quot; style=&quot;height:465px; width:620px&quot; /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;An island filled with mystery.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-07.jpg&quot;&gt;&lt;img alt=&quot;Cat Ba Island &quot; src=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-07.jpg&quot; style=&quot;height:465px; width:620px&quot; /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Three tiny beach coves&amp;nbsp;sit hidden in the hills&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-08.jpg&quot;&gt;&lt;img alt=&quot;Cat Ba Island &quot; src=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-08.jpg&quot; style=&quot;height:465px; width:620px&quot; /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;with soft white sand &amp;nbsp;and warm jade water&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-09.jpg&quot;&gt;&lt;img alt=&quot;cat ba island&quot; src=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-09.jpg&quot; style=&quot;height:465px; width:620px&quot; /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;where centuries past&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;three women of the Tran Dynasty&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-10.jpg&quot;&gt;&lt;img alt=&quot;Cat Ba Island &quot; src=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-10.jpg&quot; style=&quot;height:465px; width:620px&quot; /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;washed up on each sandy shore.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-11.jpg&quot;&gt;&lt;img alt=&quot;Cat Ba Island &quot; src=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-11.jpg&quot; style=&quot;height:465px; width:620px&quot; /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Through the rugged hills&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;beyond the developed town&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-12.jpg&quot;&gt;&lt;img alt=&quot;Cat Ba Island &quot; src=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-12.jpg&quot; style=&quot;height:465px; width:620px&quot; /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;are limestone forests&amp;nbsp;and Jurassic Park jungles&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-13.jpg&quot;&gt;&lt;img alt=&quot;Cat Ba Island &quot; src=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-13.jpg&quot; style=&quot;height:465px; width:620px&quot; /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;home to the golden headed langur&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-14.jpg&quot;&gt;&lt;img alt=&quot;Cat Ba Island &quot; src=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-14.jpg&quot; style=&quot;height:465px; width:620px&quot; /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Carved in the cliffs&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;img alt=&quot;Cat Ba Island &quot; src=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-15.jpg&quot; style=&quot;height:465px; width:620px&quot; /&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;that sheltered natives for centuries&amp;nbsp;until becoming Viet Cong enclaves.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;img alt=&quot;Cat Ba Island &quot; src=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-16.jpg&quot; style=&quot;height:465px; width:620px&quot; /&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;a community of people&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-17.jpg&quot;&gt;&lt;img alt=&quot;Cat Ba Island &quot; src=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-17.jpg&quot; style=&quot;height:465px; width:620px&quot; /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&amp;nbsp;the secrets of the sea.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;img alt=&quot;Cat Ba Island &quot; src=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-18.jpg&quot; style=&quot;height:465px; width:620px&quot; /&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;img alt=&quot;Cat Ba Island &quot; src=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-19.jpg&quot; style=&quot;height:465px; width:620px&quot; /&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-201.jpg&quot;&gt;&lt;img alt=&quot;Cat Ba Island &quot; src=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-201.jpg&quot; style=&quot;height:465px; width:620px&quot; /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;what else lies beneath&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-211.jpg&quot;&gt;&lt;img alt=&quot;Cat Ba Island &quot; src=&quot;http://www.thisamericangirl.com/wp-content/uploads/2013/10/Cat-Ba-Island-211.jpg&quot; style=&quot;height:465px; width:620px&quot; /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;this peculiar mystical place.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;
', NULL, N'A merican girl', CAST(0x0000A54600BA288D AS DateTime), 1)
GO
INSERT [ann77429_admin].[New] ([Id], [Title], [KeyWord], [img], [Sumary], [Content], [link], [by], [ModTime], [isHome]) VALUES (9, N'Cat Ba Island, the World’s Biosphere Reserve', N'cat-ba-island,-the-world’s-biosphere-reserve', N'/Upload/images/Slide/boracay-beach1.jpg', N'Cat Ba island, Vietnam’s Pearl Island, a surprising heavenly landscape!

 
', N'&lt;span style=&quot;font-size:14px&quot;&gt;Belonging to Cat Ba Archipelago, which includes 367 islands, in the south of Ha Long bay, Cat Ba Island is only 30 km from Hai Phong city centre and 25 km from Ha Long city.&amp;nbsp;&lt;br /&gt;
Not at all is it a random thing when Cat Ba is also called Pearl Island (Dao Ngoc in Vietnamese). With a 70m altitude, and the post to overlook Lan Ha lagoon, Cat Ba lures tourists by its heavenly captivation. With an area of 140 km2 and population of 9000 people, it is proud to be the biggest island among the 1,969 islands in Ha Long bay. If you are considering a fresh-air and beautiful place to travel, just pack your stuff, stand up and fly to this magic land of blue Sky and Sea!&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/Slide/1980148_969125193099102_8266154285569973168_o.jpg&quot; style=&quot;height:398px; width:600px&quot; /&gt;&lt;br /&gt;
&lt;strong&gt;The Biosphere reserve of the world!&lt;/strong&gt;&lt;br /&gt;
&lt;br /&gt;
The archipelago has a global significance thanks to its plentiful species found nowhere else. It is home to the golden-headed langur (Trachypithecus poliocephalus), one of the top ten rare primates in the world due.&amp;nbsp;&lt;br /&gt;
Besides, visitors can find several precious habitat types here, including fringing coral reefs, mangrove forest, sea grass beds, willow swamp forest and tropical limestone forest. Many of those are fiercely endangered.&amp;nbsp;&lt;br /&gt;
With a major coastal fishing zone, and a karst seascape of outstanding beauty, a tremendous potential for agri-aqua culture and tourism is open to the area. Thanks to the special values, Cat Ba was acknowledged as the World Biosphere Reserve in 2004. So, are you curious to go? &amp;nbsp;Then&amp;hellip;&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;&amp;hellip; Take a visit to its caves and grottos, now?&lt;/strong&gt;&lt;br /&gt;
&lt;br /&gt;
Cat Ba boasts many beautiful caves and grottos such as Trung Trang, Quan Y and Thien Long&amp;hellip;&lt;br /&gt;
&lt;br /&gt;
Trung Trang is the largest valley in Cat Ba Island with the total area of 300 ha, from 10-30 meter lower than the sea level, which is 15km northwest of the island. It is about 300 m walk. Beautiful with glistening stalactite &amp;amp; stalagmite it is! Visiting Trung Trang, one has learnt that it is deeply a thousand-year great work of Nature!&lt;br /&gt;
&lt;br /&gt;
Quan Y grotto. &amp;ldquo;Quan Y&amp;rdquo; means &amp;ldquo;Army medical care&amp;rdquo;. This special name derives from the Wartime against American Air force, when Vietnamese people built a hospital with hundreds of beds inside this grotto. Today, visitors can easily reach it as Quan Y Grotto is on the main way along the Island, only about 13 km from the Island&amp;rsquo;s centre.&lt;br /&gt;
&lt;br /&gt;
About 2 hours traveling by boat from Phu Long wharf is Thien Long grotto. It has just been discovered since 1997. This is one of the most beautiful caves and grottos in Ha Long bay. As wide and deep with miraculously various shaped &amp;amp; colorful stalactites and stalagmites, and tree roots from the mount to the bottom, Thien Long grotto is admired by any tourist stepping inside. One even said: &amp;ldquo;It looks like a pretty and peaceful fairy land on the sea..!&amp;rdquo; after her tour here. Also, people can feel free to contemplate the coral system, salty lakes and ponds in and around, which are definitely rich of marine bio-diversity.&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/Slide/LUONG.jpg&quot; style=&quot;height:400px; width:600px&quot; /&gt;&lt;br /&gt;
&lt;strong&gt;Go swimming &amp;amp; entertain yourself, or you might regret!&lt;/strong&gt;&lt;br /&gt;
&lt;br /&gt;
A peak mountain in the shape of a turtle divides the beach into 2 small beaches, Cat Co One and Cat Co Two. On the right hand is fabricated rock mountain, while on the left hand is the clear and blue sea water, white and smooth sand. The beauty of the beach has been changing side by side with the flying time. Yet, never would it lose the natural luring power.&lt;br /&gt;
In the morning, after enjoying the sunrise on the sea, tourists will visit Monkey Island, conquering Hai Thanh mount, Hon Thot mount or Hon Guoc mount, and swimming in the pure sea as much as you can to feel how fresh a &amp;ldquo;heaven&amp;rdquo; can be!&amp;nbsp;&lt;br /&gt;
In the afternoon, you may discover the area&amp;rsquo;s original beauty by renting a kayak to paddle to the bay. Then, should you are still well enough, perhaps we join some sports on the beach, such as valley ball, boat racing, and so forth. When night falls, the whole team would lie down in the cottages near by the beach to relax for a while, listening to the sound of rough sea waves. A romantic &amp;amp; relaxation experience!&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;Lan Ha Bay&lt;/strong&gt;&lt;br /&gt;
&lt;br /&gt;
Lan Ha bay is situated in the southeast of Cat Ba Island. It takes about 30 minutes to go there from Cat Ba by boat. The bay is large with arched shore. Getting inside, a number of islands and beaches are welcoming tourists.&amp;nbsp;&lt;br /&gt;
Not only is it famous for beautiful beaches, but also for the imposing caves and ideal place for fishing. A lot of visitors who are fond of fishing do not want to come back once staying here for a while!&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/Slide/KAYAK%20V%E1%BB%8ANH%20LAN%20H%E1%BA%A0.jpg&quot; style=&quot;height:450px; width:600px&quot; /&gt;&lt;strong&gt;Viet Hai village&lt;/strong&gt;&lt;br /&gt;
&lt;br /&gt;
To switch into a new atmospheric space, tourists should now get to Viet Hai Village. It captures attentions by the precious retained hundreds-year traditional cultural values of Cat Ba. Viet Hai people still live in the simple house, built in bamboo, wood, leaves and soil.&lt;br /&gt;
&lt;br /&gt;
If it gets late, we may stay overnight in the village in a simple and guest house at very reasonable price. You might be surprised as being treated in a friendly way, and served with special local cuisine seafood by the honest and hospitable local people. Believe me, you may not want to go back soon!&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/Slide/11357168_969126233098998_6254850915286187266_o.jpg&quot; style=&quot;height:398px; width:600px&quot; /&gt;&lt;strong&gt;How to reach Cat Ba Island?&lt;/strong&gt;&lt;br /&gt;
&lt;br /&gt;
Visitors can reach Cat Ba Island by two ways. One, by ferry from Hai Phong city, Binh ferry station or Dinh Vu ferry station. And two, from Ha Long bay. After visiting this Natural World Heritage Site, visitors can keep staying on boat and getting to the Island.&lt;/span&gt;', NULL, N'Theo Vietnam Beauty', CAST(0x0000A53A0090C91C AS DateTime), 1)
GO
INSERT [ann77429_admin].[New] ([Id], [Title], [KeyWord], [img], [Sumary], [Content], [link], [by], [ModTime], [isHome]) VALUES (10, N'A LITTLE CAT BA FLOATING VILLAGE', N'a-little-cat-ba-floating-village', N'/Upload/images/Slide/hoang%20hon.jpg', N'Cat Ba Island is the largest of the 366 islands that comprises the Halong Bay archipelago in Northern Vietnam and the only one that hosts a substantial settlement.', N'&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Cat Ba Island is the largest of the 366 islands that comprises the Halong Bay archipelago in Northern Vietnam and the only one that hosts a substantial settlement. While the vast majority of Halong Bay&amp;#39;s islands are uninhabited vertical rocks, Cat Ba has a few fishing villages, as well as a fast-growing town. Except for a few fertile pockets, the terrain is too rocky for serious agriculture. Hence most residents earn their living from the sea, while others cater to the tourist trade.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Roughly 13,000 inhabitants live on the island and 4,000 more live on floating fishing villages off the coast. The large majority of the population can be found in Cat Ba Town which is located at the southern tip of the Island and is the commercial center on the Island. Since 1997, Cat Ba Town has grown rapidly and has become a tourist hub for both the Island and greater Ha Long Bay. The fishing community at Cat Ba town has been transformed by travellers during the past decade as the island has become a summer favorite with domestic tourists and a year round option for backpackers and travellers with ample time to explore less visited parts.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;img alt=&quot;cat-ba-island-12&quot; src=&quot;http://lh4.ggpht.com/-4K2sP6ZcFCM/Tzduy2wVpII/AAAAAAAAUig/qLqki_9gekU/cat-ba-island-12%25255B8%25255D.jpg?imgmax=800&quot; style=&quot;height:410px; width:600px&quot; title=&quot;cat-ba-island-12&quot; /&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.flickr.com/photos/bhaya-cruises/5952895601/&quot; rel=&quot;nofollow&quot;&gt;Photo credit&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Life has always been hard here and many Cat Ba residents joined the exodus of Vietnamese boat people in the 1970s and &amp;#39;80s. Although the island lost much of its fishing fleet this way, overseas Vietnamese have sent back large amounts of money to relatives on the island, fuelling the hotel boom of the past decade.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Almost half of Cat Ba Island&amp;rsquo;s 354 square km, and 90 square km of the adjacent waters were declared a national park in 1986 to protect the island&amp;#39;s diverse eco-systems. These include subtropical evergreen forests on the hills, freshwater swamp forests at the base of the hills, coastal mangrove forests, small freshwater takes and coral reefs. Most of the coastline consists of rocky cliffs. but there are a few sandy beaches hidden away in small coves.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;For all of its natural beauty, Cat Ba Island faces numerous environmental problems going forward. In recent years, increase in tourism, illegal hunting and poaching, overfishing, and water pollution in Ha Long Bay have threatened the ecological integrity and biodiversity of the island, reducing and fragmenting the natural habitat for Cat Ba&amp;#39;s numerous species.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;img alt=&quot;cat-ba-island-2&quot; src=&quot;http://lh6.ggpht.com/-1fx_fpe6fN0/Tzdu1oagXWI/AAAAAAAAUio/SfVz1uvRN-c/cat-ba-island-2%25255B8%25255D.jpg?imgmax=800&quot; style=&quot;height:450px; width:600px&quot; title=&quot;cat-ba-island-2&quot; /&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.flickr.com/photos/hornuts/2776790184/&quot; rel=&quot;nofollow&quot;&gt;Photo credit&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;img alt=&quot;cat-ba-island-3&quot; src=&quot;http://lh3.ggpht.com/-Mlke_nUHc90/Tzdu4IBHd5I/AAAAAAAAUiw/vhhe64_36Zo/cat-ba-island-3%25255B2%25255D.jpg?imgmax=800&quot; style=&quot;height:399px; width:600px&quot; title=&quot;cat-ba-island-3&quot; /&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.flickr.com/photos/samfanclub/3660501632/&quot; rel=&quot;nofollow&quot;&gt;Photo credit&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;img alt=&quot;cat-ba-island-4&quot; src=&quot;http://lh3.ggpht.com/-Kj3ErsORd98/Tzdu8W_SJ-I/AAAAAAAAUi4/2BhWajvT_OY/cat-ba-island-4%25255B2%25255D.jpg?imgmax=800&quot; style=&quot;height:800px; width:600px&quot; title=&quot;cat-ba-island-4&quot; /&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.flickr.com/photos/youngshanahan/3784014763/&quot; rel=&quot;nofollow&quot;&gt;Photo credit&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;img alt=&quot;cat-ba-island-15&quot; src=&quot;http://lh4.ggpht.com/-u5gWbg6giKE/Tzdu_qGK0xI/AAAAAAAAUjA/j2tC5_TEAqU/cat-ba-island-15%25255B13%25255D.jpg?imgmax=800&quot; style=&quot;height:437px; width:600px&quot; title=&quot;cat-ba-island-15&quot; /&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.flickr.com/photos/karinling/3221844596/&quot; rel=&quot;nofollow&quot;&gt;Photo credit&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;img alt=&quot;cat-ba-island-1&quot; src=&quot;http://lh5.ggpht.com/-8F18Ez0o2SM/TzdvC2iWWlI/AAAAAAAAUjI/HBUjJ3iEw-4/cat-ba-island-1%25255B6%25255D.jpg?imgmax=800&quot; style=&quot;height:450px; width:600px&quot; title=&quot;cat-ba-island-1&quot; /&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.flickr.com/photos/cherylandrich/387357918/&quot; rel=&quot;nofollow&quot;&gt;Photo credit&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;img alt=&quot;cat-ba-island-7&quot; src=&quot;http://lh5.ggpht.com/-21EmJB7gbjA/TzdwPpOjBsI/AAAAAAAAUjg/vicnjNVwNT8/cat-ba-island-7%25255B2%25255D.jpg?imgmax=800&quot; style=&quot;height:369px; width:600px&quot; title=&quot;cat-ba-island-7&quot; /&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.flickr.com/photos/oyvindi/5043565385/&quot; rel=&quot;nofollow&quot;&gt;Photo credit&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;img alt=&quot;cat-ba-island-9&quot; src=&quot;http://lh3.ggpht.com/-dwj61eL7VGY/TzdwTIvvomI/AAAAAAAAUjo/-e6jSG4mk18/cat-ba-island-9%25255B2%25255D.jpg?imgmax=800&quot; style=&quot;height:384px; width:600px&quot; title=&quot;cat-ba-island-9&quot; /&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.flickr.com/photos/53428723@N04/5284453213/&quot; rel=&quot;nofollow&quot;&gt;Photo credit&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;img alt=&quot;cat-ba-island-10&quot; src=&quot;http://lh4.ggpht.com/-w4O_IrMEfKM/TzdwWicCMPI/AAAAAAAAUjw/ELQ1ddTEsIQ/cat-ba-island-10%25255B4%25255D.jpg?imgmax=800&quot; style=&quot;height:450px; width:600px&quot; title=&quot;cat-ba-island-10&quot; /&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.flickr.com/photos/abasto/5381563411/&quot; rel=&quot;nofollow&quot;&gt;Photo credit&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;img alt=&quot;cat-ba-island-13&quot; src=&quot;http://lh3.ggpht.com/-yEghaOoDJF4/TzdwZqER8XI/AAAAAAAAUj4/FFsnycbINKo/cat-ba-island-13%25255B2%25255D.jpg?imgmax=800&quot; style=&quot;height:401px; width:600px&quot; title=&quot;cat-ba-island-13&quot; /&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.flickr.com/photos/jsnapalm/6145132425/&quot; rel=&quot;nofollow&quot;&gt;Photo credit&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;img alt=&quot;cat-ba-island-14&quot; src=&quot;http://lh3.ggpht.com/-fj8GNQZRwdk/TzdwdnqxoPI/AAAAAAAAUkA/wvAfahprJAA/cat-ba-island-14%25255B2%25255D.jpg?imgmax=800&quot; style=&quot;height:401px; width:600px&quot; title=&quot;cat-ba-island-14&quot; /&gt;&lt;/span&gt;&lt;/p&gt;
', NULL, N'Theo Virtualtourist', CAST(0x0000A54600BA9F66 AS DateTime), 1)
GO
INSERT [ann77429_admin].[New] ([Id], [Title], [KeyWord], [img], [Sumary], [Content], [link], [by], [ModTime], [isHome]) VALUES (11, N'CAT BA - A CHAIN OF JADE ISLAND', N'cat-ba---a-chain-of-jade-island', N'/Upload/images/BaiViet/CD10.jpg', N'
Cat Ba - A Chain of Jade islandsThe thick density of limestone mountains divides its surface area into small bays, where the sand beaches still retain their natural primitive beauty. ', N'&lt;br /&gt;
&lt;span style=&quot;font-size:14px&quot;&gt;Cat Ba - A Chain of Jade islandsThe thick density of limestone mountains divides its surface area into small bays, where the sand beaches still retain their natural primitive beauty. In 2004, Cat Ba Archipelago was declared a UNESCO Biosphere Reserve, which makes it among the most interesting destinations for tourists who love to explore the sea and islands of Vietnam.&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/BaiViet/CD02.jpg&quot; style=&quot;height:265px; width:650px&quot; /&gt;&lt;br /&gt;
Exploring the beauty of Cat Ba &amp;ldquo;jade&amp;rdquo; islands&lt;br /&gt;
&lt;br /&gt;
In late June 2015, we joined a group of young people from Hanoi to visit Cat Ba Archipelago in Cat Hai District of northern Hai Phong. Our first destination was the Little Cat Ba Eco-Tourism Resort located inside the Nuoc Trong (transparent water) Bay. Covering an area of 2,000m2 and having a cool, clement climate, the resort attracts many tourists to stop over for convalescence or during their trip to explore the Cat Ba islands and sea.&lt;br /&gt;
&lt;br /&gt;
Nguyen Thanh Hai, Director of the Little Cat Ba Resort, advised us to take the tour to &amp;ldquo;Lan Ha Bay, Viet Hai Ancient Village, and Cat Dua Island&amp;rdquo;, the most interesting trip on the Cat Ba islands.&lt;br /&gt;
&lt;br /&gt;
We took a boat from Cai Beo station to Lan Ha Bay. Located in the east of Cat Ba Archipelago, Lan Ha Bay comprises a series of islands, which form 139 beaches with blue, clear water. To fully enjoy the beauty of the bay, we used kayaks to cruise, seeing the coral reefs at Van Boi and Van Ha beaches, and exploring the secret of the Vem, Ham Rong and Do Cung caves and grottoes. We felt great when breathing the wholesome, cool air from the sea.&lt;br /&gt;
&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/BaiViet/CV01-1.jpg&quot; style=&quot;height:437px; width:650px&quot; /&gt;&lt;br /&gt;
Cat Ba seen from the Cannon Fortress Relic located 177m above sea level. Photo: Nguyen Thang/VNP&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/BaiViet/CD12.jpg&quot; style=&quot;height:433px; width:650px&quot; /&gt;&lt;br /&gt;
Foreign tourists &amp;nbsp;enjoy seeing Cat Ba Island by cruise ship. Photo: Tran Thanh Giang/VNP&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/BaiViet/CD10.jpg&quot; style=&quot;height:425px; width:650px&quot; /&gt;Kayaking to Lan Ha Bay. Photo: Tran Thanh Giang/VNP&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/BaiViet/CD09.jpg&quot; style=&quot;height:433px; width:650px&quot; /&gt;Tourists relax in the clear sea. Photo: Tran Thanh Giang/VNP&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/BaiViet/CD08.jpg&quot; style=&quot;height:433px; width:650px&quot; /&gt;Tourists swim in Thinh &amp;nbsp;Linh Bay. Photo: Tran Thanh Giang/VNP&amp;nbsp;&lt;br /&gt;
&lt;br /&gt;
&lt;br /&gt;
&amp;ldquo;Cat Hai district will call for more investment in developing tourist products and cooperate with the local people in building a friendly tourist culture, all for the goal of making Cat Ba recognised as a world natural heritage&amp;rdquo;.&lt;br /&gt;
&lt;br /&gt;
(Pham Van Ha, Chairman of Cat Hai District&lt;br /&gt;
People&amp;rsquo;s Committee.)&lt;br /&gt;
&amp;nbsp;&lt;br /&gt;
On the way to Lan Ha Bay, we saw on the mountain slopes some foreign climbers trying to get to the top of the rugged cliffs. According to Vu Tien Lap, head of the Cat Hai District&amp;rsquo;s Culture-Tourism Department, the local authorities had set up nine routes for mountain climbers, of which the most loved one is that to Tien Ong (Male Deity) Island due to its beautiful stalactites.&lt;br /&gt;
&lt;br /&gt;
Our next stop-over was the Viet Hai ancient village, an eco-tourism spot which has attracted many visitors in recent years. The village has only 90 households who live in the old houses built in a valley and surrounded by mountains and jungles.&lt;br /&gt;
&lt;br /&gt;
The local friendly villagers, who are also tour guides, accompanied us to visit their old houses, showing us how they grow rice and vegetables. We had a feeling we were in an ancient village with the daily activities of the residents living in the northern Red River Delta.&lt;br /&gt;
&lt;br /&gt;
The last leg of our tour was Cat Dua Island, where we understood the reason why it is also called the &amp;ldquo;Monkey&amp;rdquo; Island. There, visitors can play or take photos with the friendly, yet very playful, monkeys. On the island, there is a beach with a radius of around 3km, with white and soft sand, stretching far and sloping gently. We walked along the beach to enjoy the sunshine and cool wind, while sometimes picking up some special shells. It was truly a fantastic experience!&lt;br /&gt;
&lt;br /&gt;
We returned to Cai Beo station in late afternoon the same day and went to the Cannon Fortress Relic located 177m above sea level. The fortress was built in 1942 at a strategic gate to the East Sea, which is historical proof of Cat Ba district islanders to be responsible for their task of defending the sea outpost of the homeland.&lt;br /&gt;
&lt;br /&gt;
From the fortress base, we could fully contemplate the wild natural scenery of Cat Ba islands in the afternoon when the golden sun slowly set and could be seen through the mountain tops. The panoramic view of Cat Ba Islands was romantic and picturesque with the fishing boats anchored at the stations, the floating restaurants on the sea and resorts on the mainland brilliantly lit up, like sparkling stars over the sea.&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/BaiViet/CD05.jpg&quot; style=&quot;height:433px; width:650px&quot; /&gt;&lt;br /&gt;
Touring the ancient village of Viet Hai by bicycle. Photo: Tran Thanh Giang/VNP&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/BaiViet/CD04.jpg&quot; /&gt;&lt;br /&gt;
Cat Ba is endowed by nature with limestone ranges,&lt;br /&gt;
suitable for the development of mountaineering. Photo: Tran Thanh Giang/VNP&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/BaiViet/CD07.jpg&quot; style=&quot;height:433px; width:650px&quot; /&gt;A beach resort with a green space let tourists have a relaxing moment. Photo: Tran Thanh Giang/VNP&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/BaiViet/CD06.jpg&quot; style=&quot;height:481px; width:650px&quot; /&gt;A beach resort with a green space let tourists have a relaxing moment. Photo: Tran Thanh Giang/VNP&lt;br /&gt;
&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/BaiViet/CD11.jpg&quot; style=&quot;height:433px; width:650px&quot; /&gt;Many sports are done on the clean and smooth white sandy beach in Cat Ba. &amp;nbsp;Photo: Tran Thanh Giang/VNP&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/BaiViet/CD14.jpg&quot; style=&quot;height:480px; width:650px&quot; /&gt;Tourists have an outdoor &amp;nbsp;BBQ buffet on the beach. Photo: Tran Thanh Giang/VNP&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/BaiViet/CD13.jpg&quot; style=&quot;height:329px; width:650px&quot; /&gt;A camp fire on the beach. Photo: Tran Thanh Giang/VNP&amp;nbsp;&lt;br /&gt;
Currently Cat Ba has 70 restaurants, 8 eco-resorts, 170 hotels and guest houses classified up to the four-star standard; 150 tourist ships, boats and buses to serve tourists. In 2014, there were more than 1.5 million visitors to Cat Ba.&amp;nbsp;&lt;br /&gt;
&lt;br /&gt;
(Statistics from the Cat Hai District People&amp;rsquo;s Committee)&lt;br /&gt;
&lt;br /&gt;
&amp;nbsp;&lt;br /&gt;
In the evening, Cat Ba was crowded with visitors. The tram cars carried tourists to go sight-seeing or souvenir shopping. At the beach, camp fires were set up here and there, surrounded by groups of tourists who enjoyed outdoor dinner buffets.&lt;br /&gt;
&lt;br /&gt;
Trinh Quoc Trung, a member of our group who works for the FPT Global Technology Creation Company, said that he enjoyed the first day of the tour so much. &amp;ldquo;This is the first time I visited Cat Ba Island. I love its beautiful beaches and local delicious sea food. I am looking forward to the second day of our trip to visit Cat Ba National Park where the highly endangered white-head langurs are living,&amp;rdquo; he said.&lt;br /&gt;
&amp;nbsp;&lt;img alt=&quot;&quot; src=&quot;/Upload/images/BaiViet/CD03.jpg&quot; style=&quot;height:433px; width:650px&quot; /&gt;&lt;br /&gt;
Cat Ba National Park, a miracle attraction&lt;br /&gt;
&amp;nbsp;&lt;br /&gt;
The next morning, we took a bus to visit Cat Ba National Park which is at the foot of the curving mountain passes. On the way we could see magnificent, beautiful scenery. When we arrived at the park, under the thick canopy of the jungle with trees of hundreds of years old, we had a feeling of entering a strange bio-diversity world.&lt;br /&gt;
&lt;br /&gt;
The park has many old trees with their big and strong roots, and rare herbal plants. On the ground there are mountain crabs, forest &amp;lsquo;sweet&amp;rsquo; snails and geckos. Not only could we explore the park&amp;rsquo;s rich, diverse fauna and flora, we could also listen to the echoes of the forests with the cries of animals, singing of the birds, and the rustling leaves.&lt;br /&gt;
&amp;nbsp;&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/BaiViet/CD17.jpg&quot; /&gt;Trekking in a forest in Cat Ba National Park. Photo: Tran Thanh Giang/VNP&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/BaiViet/CD22.jpg&quot; style=&quot;height:399px; width:650px&quot; /&gt;Stalactites of different shapes and colours in Trung Trang Cave. Photo: Tran Thanh Giang/VNP&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/BaiViet/CD21.jpg&quot; style=&quot;height:443px; width:650px&quot; /&gt;&lt;br /&gt;
White-headed langurs in Cat Ba National Park are listed in the Vietnamese red book. Photo: Neahga Leonard&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/BaiViet/CD20.jpg&quot; style=&quot;height:433px; width:650px&quot; /&gt;&lt;br /&gt;
Cat Ba Island &amp;nbsp;has diverse floral and fauna. Photo: Tran Thanh Giang/VNP&amp;rsquo;s files&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/BaiViet/CD16.jpg&quot; style=&quot;height:119px; width:650px&quot; /&gt;&lt;br /&gt;
In the forest of Cat Ba National Park. Photo: Tran Thanh Giang/VNP&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/BaiViet/CD19.jpg&quot; style=&quot;height:433px; width:650px&quot; /&gt;&lt;br /&gt;
In summer, Cat Ba National Park is colourful with flowers. Photo: Tran Thanh Giang/VNP&lt;br /&gt;
&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/BaiViet/CD23-1.jpg&quot; style=&quot;height:228px; width:650px&quot; /&gt;&lt;br /&gt;
With natural small islets and wild sandy beaches, Cat Ba Island is an attraction for foreign tourists.&lt;br /&gt;
Photo: Tran Thanh Giang/VNP&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/BaiViet/CD18.jpg&quot; style=&quot;height:487px; width:650px&quot; /&gt;Coral reefs in Cat Ba. Photo: File&lt;br /&gt;
&lt;br /&gt;
&amp;ldquo;Cat Ba National Park has a total natural area of 16,198ha with a unique ecological system classified by domestic and foreign experts to have the best bio-diversity value of this kind in Vietnam. Of the total 745 floral species, there are many in the rare and endangered list, including kim giao (nageia fleuryi), copper pod, and palm trees. The fauna is diverse with 282 species, including 20 species of animals, 69 species of birds, 20 species of reptiles and 11 species of amphibians. The park is the sole home to the white-head Langur, named Cat Ba Langur&amp;rdquo;.&lt;br /&gt;
&lt;br /&gt;
(Pham Van Thuong, Deputy Director of Cat Ba National Park).&lt;br /&gt;
&lt;br /&gt;
&amp;nbsp;&lt;br /&gt;
Kim Anh, a tour guide of Cat Ba National Park, explained to us that due to the process of geographical tectonics and sea encroachment about ten thousand years ago, the forests in Cat Ba Island are tropically humid on the limestone foundations. Cat Ba National Park is a combination of the ground forest ecological system, the coastal mangrove forests, and the onshore coral reefs.&lt;br /&gt;
&lt;br /&gt;
On the tour about 2.5km long, we met many foreign tourists who showed great interest in spending time on the rugged, curving spots in Cat Ba National Park. David Butlin, a British tourist, said he loved the natural wild beauty of the mountains, particularly the experience when he climbed to the top of Ngu Lam Mountain, from where he could see the panoramic view of magnificent mountains and forests.&lt;br /&gt;
&lt;br /&gt;
Winding along a narrow lane in the park, the bus took us to Trung Trang Cave. In the dim light from the lamps hung in the cave, however we still contemplated the majestic beauty of the sparkling stalactites, some of which looked like gold and silver pillars described in the tale about the Goddess of Trung Trang Cave. The cave, about 300m long running through a mountain, is naturally formed through thousands of years of geographical tectonics. Inside the cave is truly an eco-world, home to many creatures such as the bats, birds, insects, and reptiles.&lt;br /&gt;
&lt;br /&gt;
It is located close to Ha Long Bay, another UNESCO-recognised Natural Heritage in northern Quang Ninh province, but Cat Ba archipelago has its own unique values in terms of bio-diversity and the combined forest-sea tourism model. If the Tonkin Gulf is said to be a Fairy in the Pacific Ocean, then Cat Ba Archipelago is a chain of jade islands which embellishes that Fairy.&lt;br /&gt;
&lt;br /&gt;
We were told that the leaders of Hai Phong are trying to finalise the necessary procedures to submit them to UNESCO to review the recognition of Cat Ba Archipelago as a world natural heritage in the near future.&lt;br /&gt;
&lt;br /&gt;
&amp;nbsp;&lt;br /&gt;
&lt;strong&gt;Story: Ngan Ha - Photos: Nguyen Thang, Tran Thanh Giang,&lt;br /&gt;
Neahga Leonard &amp;amp; Cat Ba National Park&amp;rsquo;s Files&lt;/strong&gt;&lt;/span&gt;', NULL, NULL, CAST(0x0000A54600BA5F5C AS DateTime), 1)
GO
INSERT [ann77429_admin].[New] ([Id], [Title], [KeyWord], [img], [Sumary], [Content], [link], [by], [ModTime], [isHome]) VALUES (12, N'15 THINGS ABOUT  NORTH OF ASIA', N'15-things-about--north-of-asia', N'/Upload/images/BaiViet/beach-camp-scene.jpg', N'From psychedelic milkshakes to overloaded tuk-tuks, there are some things everybody comes across when backpacking in Southeast Asia. Whether you spent the brunt of your time beaching, boozing, motorcycling, meditating or trying to see it all – here are 15 things you likely learned.', N'&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;1. GETTING FROM A TO B IS SURPRISINGLY FUN&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;All-night bus rides with bad action movies on loop, clutching the waist of a scooter driver as he weaves through&amp;nbsp;&lt;a href=&quot;http://www.roughguides.com/destinations/asia/vietnam/ho-chi-minh-city-and-around/&quot; target=&quot;_blank&quot; title=&quot;Ho Chi Minh City and around&quot;&gt;Ho Chi Minh City&lt;/a&gt;&amp;nbsp;traffic, or buying a vintage Minsk motorbike to tear up mountain roads &amp;ndash; you know that the act of motion itself seems to facilitate some of the best backpacking memories.&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;2. EVERYTHING MOVES SLOWLY&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Thanks to any combination of traffic, vehicle break-downs, poor roads, bad weather or punishing hangovers you learned to accept the impossibility of arriving anywhere on time. Booking accommodation in advance was as rare as a concrete plan longer than two days. Learning to chill rather than feel perpetually frustrated was one of the best lessons you took home with you.&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;img alt=&quot;5677147889_7c1cebf586_o&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2015/10/5677147889_7c1cebf586_o-660x442.jpg&quot; style=&quot;height:442px; width:660px&quot; /&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;3. TOURISM IS BOTH A BLESSING AND A CURSE&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Disrespectful debauchery, fake orphanages, irresponsible development and a whole lot&amp;nbsp;of other despicable&amp;nbsp;stuff &amp;shy;&amp;ndash; spend long enough backpacking in Southeast Asia and you know that tourism&amp;rsquo;s destructive side starts to glare.&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;At first you felt like part of the problem. But you learned to search out homestays, socially responsible tours, eco-friendly projects and grassroot NGOs.&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;4. THE NICER-LOOKING THE RESTAURANT, THE WORSE THE FOOD&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;You know it&amp;rsquo;s not the locally-popular roadside food stalls that are likely to give you food poisoning. No, it&amp;rsquo;s the type of joints that serve&amp;nbsp;&lt;em&gt;penne al pollo&lt;/em&gt;&amp;nbsp;and&amp;nbsp;&lt;em&gt;special steak tartare&lt;/em&gt;&amp;nbsp;(&amp;ldquo;special&amp;rdquo; was probably dog code for &amp;ldquo;dog&amp;rdquo;).&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;5. A TUK-TUK CAN BE THE ULTIMATE IN LUXURY TRAVEL&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;A good tuk-tuk is like a chauffeured convertible crossed with a couch. Their people-carrying capacity seems to grow as each hour passes, capping somewhere around a dozen passengers after dark. For the price, it&amp;rsquo;s a luxury that can&amp;rsquo;t be beat.&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;img alt=&quot;8377322735_ed1661618a_k&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2015/10/8377322735_ed1661618a_k-660x442.jpg&quot; style=&quot;height:442px; width:660px&quot; /&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size:14px&quot;&gt;6.&amp;nbsp;CHEAP DEALS ARE USUALLY TOO GOOD TO BE TRUE&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;A smiling driver offered you a sweet deal. Then you agreed to help him &amp;ldquo;get gas&amp;rdquo;. And you quickly learned what that means: pretending to shop in soulless tourist trap boutiques while buddy gets &amp;ldquo;gas coupons&amp;rdquo; from the owners. Visions of adventure faded before your eyes &amp;ndash; but you never made the same mistake again. &amp;nbsp;&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size:14px&quot;&gt;7. THE SMELL&amp;nbsp;OF DURIAN WILL HAUNT YOU&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Durian: the much-loved ball of spikes with an acquired taste and a rather pungent aroma that reeks of sweat, garlic and sweet-scented paint thinner &amp;ndash; detectable from a block away. You learned to love it or hate it &amp;ndash; there is no inbetween.&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size:14px&quot;&gt;8. NOT ALL MONKS ARE AS SERENE AS THEY LOOK&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Some monks look serene. Some monks drink whiskey and smoke cigarettes.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;You may have spotted one, red or saffron-robed and sneaking a smoke behind a crumbling temple wall or sipping a spot of Mekong Whiskey beneath a banyan tree.&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Of course, this is prohibited by Buddhist precepts, and it definitely clashed with your original imaginings of monastic life. But nobody&amp;rsquo;s perfect, and old habits die hard.&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;img alt=&quot;11151117496_3ff550670a_k&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2015/10/11151117496_3ff550670a_k-660x444.jpg&quot; style=&quot;height:444px; width:660px&quot; /&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;9. &amp;ldquo;HAPPY PIZZA&amp;rdquo; IS NOT A CUTE NAME FOR PIZZA SERVED BY SMILING STAFF&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;It is pizza that will get you high.&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;10. MUSHROOM MILKSHAKES ARE NOT A NEW HEALTH FOOD FAD&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;These will also get you high.&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;11&lt;/strong&gt;&lt;strong&gt;. TRAVEL TATTOOS CAN BE AN AWFUL IDEA&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;A&amp;nbsp;Balinese&amp;nbsp;&lt;em&gt;Om&lt;/em&gt;&amp;nbsp;symbol made much larger than asked, an ambiguous word scrawled across ribs in Khmer script, a little butterfly resembling a birthmark &amp;ndash; perhaps you learned the hard way, or maybe you learned from others&amp;rsquo; mistakes. Southeast Asia backpackers know these markings well: yolo moments of such (regrettable) power that they actually outlive you.&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;img alt=&quot;3103332730_cf73a1dc87_o&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2015/10/3103332730_cf73a1dc87_o-660x514.jpg&quot; style=&quot;height:514px; width:660px&quot; /&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;12. THAI RED BULL IS WAY MORE INTENSE THAN THE ENERGY DRINKS YOU&amp;rsquo;RE USED TO&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;It&amp;rsquo;s actually called Krating Daeng, and it&amp;rsquo;s reportedly what inspired the creation of Red Bull. Whether you guzzled it with vodka from a bucket or sipped it to null post-night bus fatigue, it&amp;rsquo;s strength was a syrupy revelation.&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;13. BACKPACKERS WEAR A UNIFORM&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Harem pants, beer-branded tank tops and a pointless bandanna to top it off. Did you examine the stinky, hungover travellers surrounding you and think:&amp;nbsp;&lt;em&gt;Yes, I&amp;rsquo;d like to look exactly like them&lt;/em&gt;? Probably not. But the uniform happened.&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;14. DON&amp;rsquo;T BRING CHEWING GUM TO SINGAPORE&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;If you went to&amp;nbsp;&lt;a href=&quot;http://www.roughguides.com/destinations/asia/singapore/&quot; target=&quot;_blank&quot; title=&quot;Singapore&quot;&gt;Singapore&lt;/a&gt;, you&amp;rsquo;ll know it has some weird laws. The illegality of chewing gum is one of them. But that&amp;rsquo;s just the beginning. Walking around nude in your own home? Illegal. Taking a sip of water on the metro? Illegal. Failure to flush a public toilet after use? Illegal, obviously. Even publicly eating Singapore&amp;rsquo;s &amp;ldquo;national fruit&amp;rdquo;, the durian, falls on the wrong side of the law.&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;img alt=&quot;IMG_2478-2&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2015/10/5198554854_e5b995cb34_o-660x440.jpg&quot; style=&quot;height:440px; width:660px&quot; /&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;15. SOUTHEAST ASIA HAS BEEN THROUGH A LOT, AND CONTINUES TO GO THROUGH A LOT&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Be it the horrors of colonisation, absurd and devastating wars, or the corruption and poverty that followed, the peoples of Southeast Asia have gone through hell. Yet it was ultimately the incredible friendliness of locals that made backpacking Southeast Asia one of the best experiences of your life.&lt;/span&gt;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&amp;nbsp;&lt;/p&gt;

&lt;p style=&quot;text-align:justify&quot;&gt;&amp;nbsp;&lt;/p&gt;
', NULL, N'Theo Roughguides.com', CAST(0x0000A54600B91921 AS DateTime), 1)
GO
INSERT [ann77429_admin].[New] ([Id], [Title], [KeyWord], [img], [Sumary], [Content], [link], [by], [ModTime], [isHome]) VALUES (13, N'THE MAGIC OF VIETNAM IN 22 PICTURES', N'the-magic-of-vietnam-in-22-pictures', N'/Upload/images/Slide/32304801.jpg', N'Vietnam: an intoxicating country full of stunning sights, sizzling beaches and sumptuous food. It’s a country bound to make an impact on you, no matter where you go, whether it’s trekking with hill tribes near Sa Pa, or whizzing around Ho Chi Minh City on a motorbike. From our favourite Picfair photographers, here are 22 gorgeous pictures of Vietnam.', N'&lt;h2&gt;AN ELDERLY WOMAN IN&amp;nbsp;&lt;a href=&quot;http://www.roughguides.com/destinations/asia/vietnam/the-central-coast/hoi-an/&quot; target=&quot;_blank&quot;&gt;HOI AN&lt;/a&gt;&lt;/h2&gt;

&lt;p&gt;&lt;img alt=&quot;1. Hoi An Portrait by Iselin Shaw Of-Tordarroch / Picfair&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2015/10/01_hoi_an.jpg&quot; style=&quot;height:667px; width:1000px&quot; /&gt;&lt;em&gt;Hoi An Portrait by&amp;nbsp;&lt;a href=&quot;https://www.picfair.com/iselinoftordarroch&quot;&gt;Iselin Shaw Of-Tordarroch&lt;/a&gt;&amp;nbsp;/ Picfair&lt;/em&gt;&lt;/p&gt;

&lt;h2&gt;WOMAN AND BABY&lt;/h2&gt;

&lt;p&gt;&lt;img alt=&quot;2. Amazing baby by sarahannehardy / Picfair&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2015/10/02_IMG_6839.jpg&quot; style=&quot;height:667px; width:1000px&quot; /&gt;&lt;em&gt;Amazing baby&amp;nbsp;by&amp;nbsp;&lt;a href=&quot;https://www.picfair.com/sarahannehardy&quot;&gt;sarahannehardy&lt;/a&gt;&amp;nbsp;/ Picfair&lt;/em&gt;&lt;/p&gt;

&lt;h2&gt;A WOMAN MAKING TRADITIONAL VIETNAMESE CONICAL HATS&lt;/h2&gt;

&lt;p&gt;&lt;img alt=&quot;3. conical hat maker old women by JetHuynh / Picfair&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2015/10/03_MG_2309bw.jpg&quot; style=&quot;height:667px; width:1000px&quot; /&gt;&lt;em&gt;conical hat maker old women by&amp;nbsp;&lt;a href=&quot;https://www.picfair.com/jethuynh&quot;&gt;JetHuynh&lt;/a&gt;&amp;nbsp;/ Picfair&lt;/em&gt;&lt;/p&gt;

&lt;h2&gt;AN OLD MAN DOING CALLIGRAPHY&lt;/h2&gt;

&lt;p&gt;&lt;img alt=&quot;4. calligraphy old man by JetHuynh / Picfair&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2015/10/04_P2091176.jpg&quot; style=&quot;height:667px; width:1000px&quot; /&gt;&lt;em&gt;calligraphy old man by&amp;nbsp;&lt;a href=&quot;https://www.picfair.com/jethuynh&quot;&gt;JetHuynh&lt;/a&gt;&amp;nbsp;/ Picfair&lt;/em&gt;&lt;/p&gt;

&lt;h2&gt;WORKERS TRANSPORTING SALT FROM THE FIELDS IN&amp;nbsp;&lt;a href=&quot;http://www.roughguides.com/destinations/asia/vietnam/the-southern-coast/the-coast-north-of-nha-trang/hon-khoi-peninsula/&quot; target=&quot;_blank&quot;&gt;HON KHOI&lt;/a&gt;&lt;/h2&gt;

&lt;p&gt;&lt;img alt=&quot;5. Workers transporting salt from the fields in Hon Khoi, Viet Nam by JetHuynh /&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2015/10/05_MG_5031.jpg&quot; style=&quot;height:669px; width:1000px&quot; /&gt;&lt;em&gt;Workers transporting salt from the fields in Hon Khoi, Viet Nam by&amp;nbsp;&lt;a href=&quot;https://www.picfair.com/jethuynh&quot;&gt;JetHuynh&lt;/a&gt;&amp;nbsp;/ Picfair&lt;/em&gt;&lt;/p&gt;

&lt;h2&gt;DRYING FISH ON&amp;nbsp;NAM DU ISLAND&lt;/h2&gt;

&lt;p&gt;&lt;img alt=&quot;6. People doing fresh seafood - cuttle-fish from the fishery harbor Nam Du Island, Kien Giang, Vietnam by JetHuynh / Picfair&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2015/10/06_P3200592.jpg&quot; style=&quot;height:667px; width:1000px&quot; /&gt;&lt;em&gt;People doing fresh seafood &amp;ndash; cuttle-fish from the fishery harbor Nam Du Island, Kien Giang, Vietnam by&amp;nbsp;&lt;a href=&quot;https://www.picfair.com/jethuynh&quot;&gt;JetHuynh&lt;/a&gt;&amp;nbsp;/ Picfair&lt;/em&gt;&lt;/p&gt;

&lt;h2&gt;A WOMAN COLLECTS LOTUS FLOWERS&lt;/h2&gt;

&lt;p&gt;&lt;img alt=&quot;7. Vietnam Living - Lotus gather women by JetHuynh / Picfair&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2015/10/07_MG_3161_E.jpg&quot; style=&quot;height:666px; width:1000px&quot; /&gt;&lt;em&gt;Vietnam Living &amp;ndash; Lotus gather women by&amp;nbsp;&lt;a href=&quot;https://www.picfair.com/jethuynh&quot;&gt;JetHuynh&lt;/a&gt;&amp;nbsp;/ Picfair&lt;/em&gt;&lt;/p&gt;

&lt;h2&gt;COW RACING IN VIETNAM&lt;/h2&gt;

&lt;p&gt;&lt;img alt=&quot;8. Vietnam Cow racing by JetHuynh / Picfair&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2015/10/08_MG_0161bw.jpg&quot; style=&quot;height:667px; width:1000px&quot; /&gt;&lt;em&gt;Vietnam Cow racing by&amp;nbsp;&lt;a href=&quot;https://www.picfair.com/jethuynh&quot;&gt;JetHuynh&lt;/a&gt;&amp;nbsp;/ Picfair&lt;/em&gt;&lt;/p&gt;

&lt;h2&gt;TRAVELLING HOME FROM WORK&lt;/h2&gt;

&lt;p&gt;&lt;img alt=&quot;9. Back home by wolf / Picfair&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2015/10/09_MG_4110-2.jpg&quot; style=&quot;height:667px; width:1000px&quot; /&gt;&lt;em&gt;Back home by&amp;nbsp;&lt;a href=&quot;https://www.picfair.com/wolfphotography&quot;&gt;wolf&lt;/a&gt;&amp;nbsp;/ Picfair&lt;/em&gt;&lt;/p&gt;

&lt;h2&gt;SUNRISE ON&amp;nbsp;HON THIENG BAY&lt;/h2&gt;

&lt;p&gt;&lt;img alt=&quot;10. Sunrise like a gold on water by Nguyen Quang Ngoc / Picfair&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2015/10/10_9534.jpg&quot; style=&quot;height:691px; width:1000px&quot; /&gt;&lt;em&gt;Sunrise like a gold on water by&amp;nbsp;&lt;a href=&quot;https://www.picfair.com/Tonkinphotography&quot;&gt;Nguyen Quang Ngoc&lt;/a&gt;&amp;nbsp;/ Picfair&lt;/em&gt;&lt;/p&gt;

&lt;h2&gt;A COW HERDER AND HIS COWS&lt;/h2&gt;

&lt;p&gt;&lt;img alt=&quot;11. The cowboy and cows by John Nguyen / Picfair&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2015/10/11_IMG_1551.jpg&quot; style=&quot;height:633px; width:1000px&quot; /&gt;&lt;em&gt;The cowboy and cows by&amp;nbsp;&lt;a href=&quot;https://www.picfair.com/Haiminhduong&quot;&gt;John Nguyen&lt;/a&gt;&amp;nbsp;/ Picfair&lt;/em&gt;&lt;/p&gt;

&lt;h2&gt;CELEBRATIONS IN&amp;nbsp;&lt;a href=&quot;http://www.roughguides.com/destinations/asia/vietnam/ho-chi-minh-city-and-around/&quot; target=&quot;_blank&quot;&gt;HO CHI MINH CITY&lt;/a&gt;&lt;/h2&gt;

&lt;p&gt;&lt;img alt=&quot;12. Fireworks in Ho Chi Minh City by JetHuynh / Picfair&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2015/10/12_DSC09348.jpg&quot; style=&quot;height:1498px; width:1000px&quot; /&gt;&lt;em&gt;Fireworks in Ho Chi Minh City by&amp;nbsp;&lt;a href=&quot;https://www.picfair.com/jethuynh&quot;&gt;JetHuynh&lt;/a&gt;&amp;nbsp;/ Picfair&lt;/em&gt;&lt;/p&gt;

&lt;h2&gt;KIDS IN LAP AN LAGOON,&amp;nbsp;&lt;a href=&quot;http://www.roughguides.com/destinations/asia/vietnam/the-central-coast/hue/&quot; target=&quot;_blank&quot;&gt;HU&amp;Eacute;&lt;/a&gt;&lt;/h2&gt;

&lt;p&gt;&lt;img alt=&quot;13. Kids in the summer by Phạm Tỵ / Picfair&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2015/10/13_DSC7084-Edit-2.jpg&quot; style=&quot;height:673px; width:1000px&quot; /&gt;&lt;em&gt;Kids in the summer by&amp;nbsp;&lt;a href=&quot;https://www.picfair.com/phamty&quot;&gt;Phạm Tỵ&lt;/a&gt;&amp;nbsp;/ Picfair&lt;/em&gt;&lt;/p&gt;

&lt;h2&gt;DRYING FISH IN&amp;nbsp;&lt;a href=&quot;http://www.roughguides.com/destinations/asia/vietnam/the-southern-coast/nha-trang/&quot; target=&quot;_blank&quot;&gt;NHA TRANG&lt;/a&gt;&lt;/h2&gt;

&lt;p&gt;&lt;img alt=&quot;14. Drying fish by Au Eightx / Picfair&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2015/10/14_DSC_0107.jpg&quot; style=&quot;height:664px; width:1000px&quot; /&gt;&lt;em&gt;Drying fish by&amp;nbsp;&lt;a href=&quot;https://www.picfair.com/aueightx&quot;&gt;Au Eightx&lt;/a&gt;&amp;nbsp;/ Picfair&lt;/em&gt;&lt;/p&gt;

&lt;h2&gt;TEA PLANTATIONS, BAO LOC&lt;/h2&gt;

&lt;p&gt;&lt;em&gt;&lt;img alt=&quot;15. Women with conical hat working on green tea plantation, Bao Loc, Lam Dong, Vietnam by Tom Phung / Picfair&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2015/10/15_DSC0354.jpg&quot; style=&quot;height:1500px; width:1000px&quot; /&gt;Women with conical hat working on green tea plantation, Bao Loc, Lam Dong, Vietnam by&amp;nbsp;&lt;a href=&quot;https://www.picfair.com/tomphung&quot;&gt;Tom Phung&lt;/a&gt;&amp;nbsp;/ Picfair&lt;/em&gt;&lt;/p&gt;

&lt;h2&gt;PRAYER ON THE RIVER IN HU&amp;Eacute;&lt;/h2&gt;

&lt;p&gt;&lt;img alt=&quot;16. Praying on the river 1 by Phạm Tỵ / Picfair&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2015/10/16_DSC00409.jpg&quot; style=&quot;height:1505px; width:1000px&quot; /&gt;&lt;em&gt;Praying on the river 1 by&amp;nbsp;&lt;a href=&quot;https://www.picfair.com/phamty&quot;&gt;Phạm Tỵ&lt;/a&gt;&amp;nbsp;/ Picfair&lt;/em&gt;&lt;/p&gt;

&lt;h2&gt;A RAILROAD LINE IN&amp;nbsp;&lt;a href=&quot;http://www.roughguides.com/destinations/asia/vietnam/hanoi-and-around/&quot; target=&quot;_blank&quot;&gt;HANOI&lt;/a&gt;&lt;/h2&gt;

&lt;p&gt;&lt;img alt=&quot;17. ALONG THE TRACKS by Wilfred Seefeld / Picfair&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2015/10/17%E2%80%93DSC0195-6.jpg&quot; style=&quot;height:648px; width:1000px&quot; /&gt;&lt;em&gt;ALONG THE TRACKS by&amp;nbsp;&lt;a href=&quot;https://www.picfair.com/SOM011288&quot;&gt;Wilfred Seefeld&lt;/a&gt;&amp;nbsp;/ Picfair&lt;/em&gt;&lt;/p&gt;

&lt;h2&gt;BUILDINGS ALONG THE RIVER OF HOI AN&lt;/h2&gt;

&lt;p&gt;&lt;img alt=&quot;18. Colourful buildings by Dan Convey / Picfair&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2015/10/18_hoi-an.jpg&quot; style=&quot;height:662px; width:1000px&quot; /&gt;&lt;em&gt;Colourful buildings by&amp;nbsp;&lt;a href=&quot;https://www.picfair.com/danconveys&quot;&gt;Dan Convey&lt;/a&gt;&amp;nbsp;/ Picfair&lt;/em&gt;&lt;/p&gt;

&lt;h2&gt;YOUNG MONKS WORK IN SOUTHERN VIETNAM&lt;/h2&gt;

&lt;p&gt;&lt;img alt=&quot;19. Young monks at work by wolf / Picfair&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2015/10/19_CRW_5687.jpg&quot; style=&quot;height:1500px; width:1000px&quot; /&gt;&lt;em&gt;Young monks at work by&amp;nbsp;&lt;a href=&quot;https://www.picfair.com/wolfphotography&quot;&gt;wolf&lt;/a&gt;&amp;nbsp;/ Picfair&lt;/em&gt;&lt;/p&gt;

&lt;h2&gt;MORNING CHAOS ON THE ROADS IN HO CHI MINH CITY&lt;/h2&gt;

&lt;p&gt;&lt;img alt=&quot;20. Morning, Ho Chi Minh City, Vietnam by davidhuiphoto / Picfair&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2015/10/20_DSC_5487pe-Ho-Chi-Minh-City2C-Vietnam.jpg&quot; style=&quot;height:665px; width:1000px&quot; /&gt;&lt;em&gt;Morning, Ho Chi Minh City, Vietnam by&amp;nbsp;&lt;a href=&quot;https://www.picfair.com/davidhuiphoto&quot;&gt;davidhuiphoto&lt;/a&gt;&amp;nbsp;/ Picfair&lt;/em&gt;&lt;/p&gt;

&lt;h2&gt;FRESH FISH COMES STRAIGHT OFF THE BOATS AND INTO MARKET&lt;/h2&gt;

&lt;p&gt;&lt;img alt=&quot;21. Fishery market by wolf / Picfair&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2015/10/21_MG_3427.jpg&quot; style=&quot;height:667px; width:1000px&quot; /&gt;&lt;em&gt;Fishery market by&amp;nbsp;&lt;a href=&quot;https://www.picfair.com/wolfphotography&quot;&gt;wolf&lt;/a&gt;&amp;nbsp;/ Picfair&lt;/em&gt;&lt;/p&gt;

&lt;h2&gt;ANNUAL PARADE OF DRAGONS IN&amp;nbsp;&lt;a href=&quot;http://www.roughguides.com/destinations/asia/vietnam/ho-chi-minh-city-and-around/cho-lon/&quot; target=&quot;_blank&quot;&gt;CHO LON&lt;/a&gt;&lt;/h2&gt;

&lt;p&gt;&lt;img alt=&quot;22. Dragons Dance on The First Full Moon Day of Year by Nguyen Quang Ngoc /&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2015/10/22_0283.jpg&quot; style=&quot;height:708px; width:1000px&quot; /&gt;&lt;em&gt;Dragons Dance on The First Full Moon Day of Year by&amp;nbsp;&lt;a href=&quot;https://www.picfair.com/Tonkinphotography&quot;&gt;Nguyen Quang Ngoc&lt;/a&gt;&amp;nbsp;/ Picfair&lt;/em&gt;&lt;/p&gt;
', NULL, N'Theo Roughguides.com', CAST(0x0000A546007B9076 AS DateTime), 1)
GO
INSERT [ann77429_admin].[New] ([Id], [Title], [KeyWord], [img], [Sumary], [Content], [link], [by], [ModTime], [isHome]) VALUES (14, N'THE 20 BEST BEACHES IN VIETNAM ', N'the-20-best-beaches-in-vietnam-', N'/Upload/images/Slide/02.jpg', N'With over 2000 miles of coastline, Vietnam has plenty of secluded coves with white sands and waters fit for snorkelling. For days spent sunbathing and evenings watching stunning sunsets, these are the best beaches in Vietnam:', N'&lt;h4 dir=&quot;ltr&quot;&gt;&lt;strong&gt;LONG BEACH, PHU QUOC&lt;/strong&gt;&lt;/h4&gt;

&lt;p dir=&quot;ltr&quot;&gt;Long Beach (Bai Trong), spanning the west coast of&amp;nbsp;&lt;a href=&quot;http://www.roughguides.com/destinations/asia/vietnam/the-mekong-delta/phu-quoc-island/&quot; target=&quot;_blank&quot;&gt;Phu Quoc Island&lt;/a&gt;, is a 20km stretch of largely deserted soft yellow sand and swaying coconut palms. Ideal for sunbathing, sunset watching and swimming, this beach is great for classic tropical beach views and is undoubtedly the best Phu Quoc has to offer.&lt;/p&gt;

&lt;h4 dir=&quot;ltr&quot;&gt;&lt;strong&gt;STAR BEACH, PHU QUOC&lt;/strong&gt;&lt;/h4&gt;

&lt;p dir=&quot;ltr&quot;&gt;The largely undeveloped east coast of Phu Quoc is less frequented than, but just as beautiful as, the more popular west. A strong contender for the most beautiful beach on the island, Star Beach (Bai Sao) has dazzling white sands and mesmerizing, often calm waters. A few beach restaurants line the pale blue waters, and in season there are kayaks for rent and half-day snorkelling trips by boat.&lt;/p&gt;

&lt;h4 dir=&quot;ltr&quot;&gt;&lt;strong&gt;CITY BEACH, NHA TRANG&lt;/strong&gt;&lt;/h4&gt;

&lt;p dir=&quot;ltr&quot;&gt;&lt;a href=&quot;http://www.roughguides.com/destinations/asia/vietnam/the-southern-coast/nha-trang/&quot; target=&quot;_blank&quot;&gt;Nha Trang&lt;/a&gt;, a delightful south coast city, is generally recognised as Vietnam&amp;rsquo;s premier beach destination. Six kilometres of sand joins the sea to the city, with rolling waves on one side and fringed on the other by cafes, restaurants, and some unusual modern sculptures. Watersports, day trips by boat and of course fresh pineapple are all readily available, but bear in mind the more choppy waters of November and December mean the beach loses much of its appeal.&lt;/p&gt;

&lt;p dir=&quot;ltr&quot;&gt;&lt;img alt=&quot;Beach in Nha Trang, Vietnam&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2014/03/171957255_20-660x435.jpg&quot; style=&quot;height:435px; width:660px&quot; /&gt;&lt;/p&gt;

&lt;h4 dir=&quot;ltr&quot;&gt;&lt;strong&gt;HON CHONG BEACH, NHA TRANG&lt;/strong&gt;&lt;/h4&gt;

&lt;p dir=&quot;ltr&quot;&gt;Just north of Nha Trang lies the secluded Hon Chong Beach &amp;ndash; less refined than its central counterpart but worth the trip for the night-time views across the bay to the city centre. Cheap seafood restaurants abound at its far end.&lt;/p&gt;

&lt;h4 dir=&quot;ltr&quot;&gt;&lt;strong&gt;HO COC BEACH, HO COC&lt;/strong&gt;&lt;/h4&gt;

&lt;p dir=&quot;ltr&quot;&gt;A spellbinding, often deserted beach,&amp;nbsp;&lt;a href=&quot;http://www.roughguides.com/destinations/asia/vietnam/the-southern-coast/the-ba-ria-coast/ho-coc-beach/&quot; target=&quot;_blank&quot;&gt;Ho Coc&lt;/a&gt;&amp;nbsp;offers a primitive but wonderful five kilometre stretch of golden sand. The beach has clear waters and is backed by fine dunes, and the Binh Chau Hot Springs are located conveniently nearby in case sunbathing gets too much.&lt;/p&gt;

&lt;h4 dir=&quot;ltr&quot;&gt;&lt;strong&gt;DOC LET BEACH, HON KHOI PENINSULA&lt;/strong&gt;&lt;/h4&gt;

&lt;p dir=&quot;ltr&quot;&gt;Doc Let beach, on the splendid&amp;nbsp;&lt;a href=&quot;http://www.roughguides.com/destinations/asia/vietnam/the-southern-coast/the-coast-north-of-nha-trang/hon-khoi-peninsula/&quot; target=&quot;_blank&quot;&gt;Hon Khoi peninsula&lt;/a&gt;, is a pristine location for a day&amp;rsquo;s beach-bumming. White sands and casuarinas (evergreen trees) make for a delightful, uncrowded scene. Good accommodation options are available, and even more secluded beaches can be found nearby.&lt;/p&gt;

&lt;h4 dir=&quot;ltr&quot;&gt;&lt;strong&gt;DAI LANH, HON GHOM PENINSULA&lt;/strong&gt;&lt;/h4&gt;

&lt;p dir=&quot;ltr&quot;&gt;The Hon Ghom peninsula is coated in largely empty, endless beaches. Perhaps the best is next to Dai Lanh, a tiny fishing village at the northern end of a one kilometre-long beach, hemmed between clear, turquoise waters of the South China Sea and a mantle of green mountains.&lt;br /&gt;
&amp;nbsp;&lt;/p&gt;

&lt;p dir=&quot;ltr&quot;&gt;&lt;strong&gt;MY KHE, QUANG NGAI&lt;/strong&gt;&lt;br /&gt;
&lt;br /&gt;
My Khe in Quang Ngai consists of seven kilometres of powder-soft sand, backed by casuarinas (evergreen trees), and is very good for swimming. Hamlets stand along the beach, while fishing boats are sometimes moored off it, and there&amp;rsquo;s a handful of restaurants that only get busy at the weekend.&lt;/p&gt;
&amp;nbsp;

&lt;h4 dir=&quot;ltr&quot;&gt;&lt;strong&gt;CUA DAI BEACH, HOI AN&lt;/strong&gt;&lt;/h4&gt;

&lt;p dir=&quot;ltr&quot;&gt;It&amp;rsquo;s a popular bike (or motorbike taxi) ride from&amp;nbsp;&lt;a href=&quot;http://www.roughguides.com/destinations/asia/vietnam/the-central-coast/hoi-an/&quot; target=&quot;_blank&quot;&gt;Hoi An&lt;/a&gt;&amp;nbsp;to the clean, white sands of Cua Dai Beach. The best way to enjoy this stretch is to take an umbrella and deck chair at one of the many beachfront caf&amp;eacute;-restaurants &amp;ndash; you&amp;rsquo;ll be expected to at least buy a drink &amp;ndash; to minimise hassle both from hawkers and other visitors. That way you can sip cocktails and watch spectacular sunsets over the Ch&amp;aacute;m Islands just off the shore.&lt;/p&gt;

&lt;h4 dir=&quot;ltr&quot;&gt;&lt;strong&gt;CAM AN BEACH, HOI AN&lt;/strong&gt;&lt;/h4&gt;

&lt;p dir=&quot;ltr&quot;&gt;Cam An Beach, just north of its more popular counterpart, Cua Dai Beach, is a pleasantly scruffy alternative to the tourist focused Cua Dai. Ramshackle bars dot the far less visited beach, seen as the local expats&amp;rsquo; beach of choice.&lt;/p&gt;

&lt;h4&gt;&lt;strong&gt;CON SON ISLAND, CON DAO ARCHIPELAGO&lt;/strong&gt;&lt;/h4&gt;

&lt;p dir=&quot;ltr&quot;&gt;&lt;a href=&quot;http://www.roughguides.com/destinations/asia/vietnam/the-southern-coast/the-con-dao-archipelago/&quot; target=&quot;_blank&quot;&gt;Con Son&lt;/a&gt;&amp;nbsp;is ringed with pleasant beaches &amp;ndash; Lo Voi and An Hai are nearest Con Son town, but Dam Trau to the north and Bat Dat Doc to the east are less frequented and just as nice.&lt;/p&gt;

&lt;p dir=&quot;ltr&quot;&gt;&lt;img alt=&quot;best beaches in Vietnam&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2014/03/125219182_11-660x433.jpg&quot; style=&quot;height:433px; width:660px&quot; /&gt;&lt;/p&gt;

&lt;h4 dir=&quot;ltr&quot;&gt;&lt;strong&gt;CA NA, SOUTHERN COAST&lt;/strong&gt;&lt;/h4&gt;

&lt;p dir=&quot;ltr&quot;&gt;Numerous parked coracles (round boats) line the beach at&amp;nbsp;&lt;a href=&quot;http://www.roughguides.com/destinations/asia/vietnam/the-southern-coast/ca-na/&quot; target=&quot;_blank&quot;&gt;Ca Na&lt;/a&gt;, with its invitingly clear water and healthy, but razor sharp, coral. It&amp;rsquo;s easily accessible and, if wanting a little more solitude, just 2km to the south lies another good stretch of sand.&lt;/p&gt;

&lt;h4 dir=&quot;ltr&quot;&gt;&lt;strong&gt;NINH CHU BEACH, NINH CHU&lt;/strong&gt;&lt;/h4&gt;

&lt;p dir=&quot;ltr&quot;&gt;Five kilometres north of busy Phan Rang lies the pleasant, wide crescent of&amp;nbsp;&lt;a href=&quot;http://www.roughguides.com/destinations/asia/vietnam/the-southern-coast/phan-rang-and-thap-cham/ninh-chu-beach/&quot; target=&quot;_blank&quot;&gt;Ninh Chu Beach&lt;/a&gt;. Less popular with tourists than&amp;nbsp;&lt;a href=&quot;http://www.roughguides.com/destinations/asia/vietnam/the-southern-coast/mui-ne/&quot; target=&quot;_blank&quot;&gt;Mui Ne&lt;/a&gt;&amp;nbsp;or Nha Trang, the beach still provides a quiet midweek stop, good for swimming, sunbathing and beach games in general.&lt;/p&gt;

&lt;h4 dir=&quot;ltr&quot;&gt;&lt;strong&gt;MY KHE, DA NANG&lt;/strong&gt;&lt;/h4&gt;

&lt;p dir=&quot;ltr&quot;&gt;About three kilometres south of the city of&amp;nbsp;&lt;a href=&quot;http://www.roughguides.com/destinations/asia/vietnam/the-central-coast/da-nang/&quot; target=&quot;_blank&quot;&gt;Da Nang&lt;/a&gt;, My Khe is a long stretch of sand popular with seafood-craving locals, where US servicemen were once flown for R&amp;amp;R during the war.&lt;/p&gt;

&lt;h4 dir=&quot;ltr&quot;&gt;&lt;strong&gt;QUY NHON, BINH DINH PROVINCE&lt;/strong&gt;&lt;/h4&gt;

&lt;p dir=&quot;ltr&quot;&gt;&lt;a href=&quot;http://www.roughguides.com/article/best-beaches-in-vietnam/Quy%20Nhon&quot; target=&quot;_blank&quot;&gt;Quy Nhon&lt;/a&gt;, a small seaport town, is bordered by a beach admittedly less picturesque than others along the coast, but, for this reason, almost free of foreigners. For more adventurous travellers, this is a good place to get away from tourists, something which only adds to the town&amp;rsquo;s intrigue.&lt;/p&gt;

&lt;p dir=&quot;ltr&quot;&gt;&lt;img alt=&quot;best beaches in vietnam&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2014/03/133776265_5-copy-660x412.jpg&quot; style=&quot;height:412px; width:660px&quot; /&gt;&lt;/p&gt;

&lt;h4 dir=&quot;ltr&quot;&gt;&lt;br /&gt;
&lt;strong&gt;NON NUOC BEACH, DA NANG&lt;/strong&gt;&lt;/h4&gt;

&lt;p dir=&quot;ltr&quot;&gt;Non Nuoc is a dusty, unkempt village, inhabited since the fifteenth century by stone carvers. Follow the paved road east from the village and you reach Non Nuoc Beach, a pleasant and stretch of beach that competes for business with its northern neighbour, My Khe. A note of warning, however: there&amp;rsquo;s a powerful undertow off this coast, so riptides are particularly dangerous.&lt;/p&gt;

&lt;h4 dir=&quot;ltr&quot;&gt;&lt;strong&gt;CAT CO 1, 2 &amp;amp; 3, CAT BA&lt;/strong&gt;&lt;/h4&gt;

&lt;p dir=&quot;ltr&quot;&gt;Three small, sandy beaches lie to the east of Cat Ba Town on the&amp;nbsp;&lt;a href=&quot;http://www.roughguides.com/destinations/asia/vietnam/the-northern-coast/cat-ba-island/&quot; target=&quot;_blank&quot;&gt;island of Cat Ba&lt;/a&gt;, just to the west of Ha Long Bay. Romantically named Cat Co 1, Cat Co 2 and Cat Co 3, One and Three are linked by a cliffside path that&amp;rsquo;s a joy to walk anytime, day or night, and Two is a quieter retreat.&lt;br /&gt;
&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/Slide/04_gfxe.jpg&quot; style=&quot;height:420px; width:660px&quot; /&gt;&lt;/p&gt;

&lt;h4 dir=&quot;ltr&quot;&gt;&lt;strong&gt;DOI DUONG, PHAN THIET&lt;/strong&gt;&lt;/h4&gt;

&lt;p dir=&quot;ltr&quot;&gt;The unassuming capital of Binh Thuan Province, Phan Thiet is generally of less interest to foreigners than the sands of Mue Ne just along the coast. However the absence of tourists is, for some, a draw in itself. Doi Doung is the town&amp;rsquo;s own stretch of beach, and is very popular with the locals. To get to the best bit, head around 700m northeast from the main entrance point on Nguyen That Thanh.&lt;/p&gt;

&lt;p dir=&quot;ltr&quot;&gt;&lt;img alt=&quot;Halong Bay and Cat ba Island, Vietnam&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2012/06/AM8W80-660x366.jpg&quot; style=&quot;height:366px; width:660px&quot; /&gt;&lt;/p&gt;

&lt;h4 dir=&quot;ltr&quot;&gt;&lt;strong&gt;HA LONG BAY&lt;/strong&gt;&lt;/h4&gt;

&lt;p dir=&quot;ltr&quot;&gt;Whilst not technically a beach, kayaking across tranquil waters and swimming amidst twinkles of phosphorescent plankton are both possible in spectacular&amp;nbsp;&lt;a href=&quot;http://www.roughguides.com/destinations/asia/vietnam/the-northern-coast/ha-long-bay/&quot; target=&quot;_blank&quot;&gt;Ha Long Bay&lt;/a&gt;. From November to March there can be chilly days of drizzly weather when the splendour and romance of the bay are harder to appreciate, but the gorgeous caves and beautiful scenery make up for this in the summer months.&lt;/p&gt;

&lt;h4 dir=&quot;ltr&quot;&gt;&lt;strong&gt;QUAN LAN, BAI TU LONG&lt;/strong&gt;&lt;/h4&gt;

&lt;p dir=&quot;ltr&quot;&gt;A long skinny island on the outer fringes of Ha Long Bay, Quan Lan&amp;rsquo;s main attractions are the empty, sandy, and relatively clean beaches lining its east coast. Few specific sights in this area mean the beaches are relatively deserted &amp;ndash; prepare to find yourself engaging even more closely with locals than you&amp;rsquo;re used to.&lt;/p&gt;
', NULL, N'Theo Roughguides.com', CAST(0x0000A54600B4454C AS DateTime), 1)
GO
INSERT [ann77429_admin].[New] ([Id], [Title], [KeyWord], [img], [Sumary], [Content], [link], [by], [ModTime], [isHome]) VALUES (15, N'8 AMAZING CANOEING AND KAYAKING TRIPS', N'8-amazing-canoeing-and-kayaking-trips', N'/Upload/images/Slide/img1092010122913PMivity02(2).jpg', N'According to tourist’s experiences after visiting Cat Ba, going kayaking is one of the most interesting activities here. It is highly recommended for tourists to enjoy this activity', N'&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;strong&gt;KAYAKING LAN HA&amp;nbsp;BAY, CAT BA, VIETNAM&lt;/strong&gt;&lt;br /&gt;
.&lt;em&gt;&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;
&lt;span style=&quot;font-size:14px&quot;&gt;Most of tourists come to Cat Ba in the summer to go swimming. However, you may be feel regret if you don&amp;rsquo;t take part in kayaking activity to explore&amp;nbsp;Lan Ha Bay. It would be a new and unforgettable experience you have never had. You can&amp;rsquo;t have such experience when just floating by a cruise. Passing by small islets and caves, the sampans take you close to the stone mountain to explore the unique beauty of marine life underneath the sea. It is totally different with what you can imagine.&lt;/span&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Normally, two people will share a sampan to go kayaking. Initially, you can find it hard to control. However, after practising for a while, you can learn how to control it quickly and find it extremely exciting to join in.&lt;br /&gt;
See more at :http://www.catbastation.com/service/3/kayaking&lt;br /&gt;
&lt;img alt=&quot;&quot; src=&quot;/Upload/images/Slide/kayak%20-%20Sao.jpg&quot; style=&quot;height:563px; width:660px&quot; /&gt;&lt;/span&gt;&lt;/p&gt;

&lt;h2&gt;&lt;strong&gt;&lt;span style=&quot;font-size:14px&quot;&gt;KAYAKING WITH SEALS AT WALVIS BAY, NAMIBIA&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Most people come to Swakopmund, a Bavarian-style town surreally out of place on the edge of the Namib Desert, to explore the vast dunes. Few who visit know that the sandy Atlantic shallows of nearby Walvis Bay are also home to 2500 cape fur seals &amp;ndash; one of the country&amp;rsquo;s last remaining colonies &amp;ndash; as well as a resident population of diminutive benguela dolphins.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Namyak Namibia, a tour operator based in a community crafts shop in the centre of Swakopmund, offers kayak trips in the bay. Canoeing among the seals in the early morning is a joyous experience: the seals surround the canoes and leap across the bows, while the pups look up at you like labradors waiting for a stick to be thrown. The dolphins are a little more circumspect, but will swim alongside, weaving this way and that only so long as you paddle furiously enough to keep up with them.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;em&gt;For details of excursions and rates see&amp;nbsp;&lt;/em&gt;&lt;em&gt;&lt;a href=&quot;http://www.nam-c-yak.com/&quot; target=&quot;_blank&quot;&gt;http://www.nam-c-yak.com&lt;/a&gt;.&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;

&lt;h2&gt;&lt;strong&gt;&lt;span style=&quot;font-size:14px&quot;&gt;KAYAKING ON LAKE MALAWI&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;
&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.roughguides.com/article/eight-amazing-canoeing-and-kayaking-trips/man-in-a-dugout-canoe-on-lake-malawi-at-cape-maclear-in-malawi/&quot; rel=&quot;attachment wp-att-8139&quot;&gt;&lt;img alt=&quot;Man in a dugout canoe on Lake Malawi at Cape Maclear in Malawi&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2012/07/BDEK3P-660x418.jpg&quot; style=&quot;height:418px; width:660px&quot; title=&quot;Man in a dugout canoe on Lake Malawi at Cape Maclear in Malawi&quot; /&gt;&lt;/a&gt;&lt;/span&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Exhilarating as paddling across Lake Malawi is, it&amp;rsquo;s important from time to time just to sit still and allow the waters around you to become calm. When that happens, it&amp;rsquo;s like peering down into a giant aquarium, filled with fish of every conceivable colour. The cichlids alone, of which Lake Malawi has six hundred species, are so dazzlingly various that they are sometimes given the name peacock fish.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Kayak Africa, based in laid-back Cape Maclear, employs fishermen from the nearby village of Chembe as guides, to share their lifetime&amp;rsquo;s understanding of the lake and the many islets and caves that line its shore. Accommodation is at exclusive bushcamps on either Mumbo or Domwe, otherwise deserted tropical islands so picture-perfect that the urge is to play Robinson Crusoe and not come home. Spend a few evenings on the empty beach, enjoying your freshly caught dinner and watching the lights from the fishermen&amp;rsquo;s boats flicker on the darkening horizon, and that feeling will only get stronger.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;em&gt;Cape Maclear is a bumpy 115km bus ride from the capital Lilongwe. For tour details and rates see&lt;/em&gt;&lt;em&gt;&lt;a href=&quot;http://www.kayakafrica.co.za/&quot; target=&quot;_blank&quot;&gt;http://www.kayakafrica.co.za&lt;/a&gt;.&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;

&lt;h2&gt;&lt;strong&gt;&lt;span style=&quot;font-size:14px&quot;&gt;CANOEING THE DANUBE DELTA, ROMANIA&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;
&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.roughguides.com/article/eight-amazing-canoeing-and-kayaking-trips/pelicans/&quot; rel=&quot;attachment wp-att-8140&quot;&gt;&lt;img alt=&quot;Colony of pelicans on Uzlina Lake, Danube Delta, Dobrogea&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2012/07/CNJXAM-660x439.jpg&quot; style=&quot;height:439px; width:660px&quot; title=&quot;Colony of pelicans on Uzlina Lake, Danube Delta, Dobrogea&quot; /&gt;&lt;/a&gt;&lt;/span&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Paddling through the vast Danube delta, almost 3000km from where the river began in Germany&amp;rsquo;s Black Forest, offers the chance to combine some of the best birdwatching in Europe with visits to communities little touched by industrialization. Each spring hundreds of species ranging from spoonbills to warblers migrate here from the southern hemisphere, when the area&amp;rsquo;s vast silence is broken by their songs and mating calls. In the autumn, huge flocks again gather here to prepare for the long journey south. On canoe trips with Barefoot Tours through this vast maze of channels, forests, sand dunes and reeds, you&amp;rsquo;ll have the advantage of approaching on the water almost noiselessly, enabling you to get close to the birds without disturbing them or their habitat.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Tours last anything from a day to a week, with nights spent at homestays and lodges in the villages of Tulcea, Crisan and the curiously named Mila 23, all of which are accessible only by water; the main mode of transport in each is canoe. Staying here gives you plenty of opportunity to learn about the locals&amp;rsquo; work harvesting reeds and fishing. If you can, it&amp;rsquo;s worth coming for at least a few days to allow yourself to drift into the gentle, age-old rhythm of the river and the lives of the people here.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;em&gt;For details of tours, prices, availability and getting there see&amp;nbsp;&lt;/em&gt;&lt;em&gt;&lt;a href=&quot;http://www.barefoot-tours.com/&quot; target=&quot;_blank&quot;&gt;http://www.barefoot-tours.com&lt;/a&gt;.&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;

&lt;h2&gt;&lt;strong&gt;&lt;span style=&quot;font-size:14px&quot;&gt;KAYAKING AROUND THE MADDALENA ARCHIPELAGO, SARDINIA&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Much has been written about the celebrity highlife of Sardinia&amp;rsquo;s Costa Smeralda, as well as the island&amp;rsquo;s traditional cuisine and its distinctive character and customs. Less well known is that Sardinia has some of the best-conserved coastline in the Mediterranean, thanks to government legislation that bans building property within 2km of the sea around the entire island.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;One of the best ways to enjoy Sardinia&amp;rsquo;s coastline is by sea kayak. Away from the hum of the pleasure boats, paddling under your own steam, you can reach some of the island&amp;rsquo;s most unspoilt beaches. In particular, the protected islands of the Maddalena Archipelago in the Straits of Bonifacio between Corsica and northeastern Sardinia provide excellent conditions for an island-hopping kayaking adventure. There are seven main islands (five are uninhabited) and over fifty islets around which you can paddle for days in warm, translucent water, searching for that ideal spot to land along the wind-blown granite coastline &amp;ndash; home to gulls, cormorants and herons.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;em&gt;British-run Location Sardinia hires out kayaks, and also organizes week-long kayaking trips around the archipelago, including accommodation and guide. For further info see&amp;nbsp;&lt;/em&gt;&lt;em&gt;&lt;a href=&quot;http://www.locationsardinia.com/&quot; target=&quot;_blank&quot;&gt;http://www.locationsardinia.com&lt;/a&gt;.&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;

&lt;h2&gt;&lt;strong&gt;&lt;span style=&quot;font-size:14px&quot;&gt;SEA KAYAKING ALONG THE DALMATIAN COAST, CROATIA&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;
&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.roughguides.com/article/eight-amazing-canoeing-and-kayaking-trips/rg_croatia5_jpg/&quot; rel=&quot;attachment wp-att-8141&quot;&gt;&lt;img alt=&quot;Sea Kayaking in Dubrovnik, Croatia&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2012/07/Rg_Croatia5th_0001-660x401.jpg&quot; style=&quot;height:401px; width:660px&quot; title=&quot;Sea Kayaking in Dubrovnik, Croatia&quot; /&gt;&lt;/a&gt;&lt;/span&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;A necklace of islands licked by glimmering waters, Croatia&amp;rsquo;s Dalmatian Coast is one of Europe&amp;rsquo;s most beautiful shorelines. And by far the best way to explore it is to get in a kayak and paddle out, meandering leisurely between the islands as you sit a few centimetres above the water, taking a dip in the glassy sea or soaking up the sun on empty, white-sand beaches. Adriatic Kayak Tours, an organization based in Dubrovnik, offers small-group trips lasting from a few hours to a whole week; they also run quirky themed tours such as &amp;ldquo;Cliffs and Caves&amp;rdquo; and a &amp;ldquo;Wine and Cheese Sunset Paddle&amp;rdquo;. At the end of each salty, tiring but exhilarating day, knowledgeable guides direct weary canoeists to family-run restaurants where freshly caught seafood and local meats are dished up alongside liberal quantities of local wine. The bling may be returning to Dubrovnik, but Croatia&amp;rsquo;s real jewels are still to be found out to sea.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;em&gt;For more on the types of tours offered, reservations and frequently asked questions see&lt;/em&gt;&lt;em&gt;&lt;a href=&quot;http://www.adriatickayaktours.com/&quot; target=&quot;_blank&quot;&gt;http://www.adriatickayaktours.com&lt;/a&gt;.&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;

&lt;h2&gt;&lt;strong&gt;&lt;span style=&quot;font-size:14px&quot;&gt;CAMPING AND KAYAKING IN THE SUMMER ISLES, SCOTLAND&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;
&lt;span style=&quot;font-size:14px&quot;&gt;&lt;a href=&quot;http://www.roughguides.com/article/eight-amazing-canoeing-and-kayaking-trips/pr_sea-kayaking/&quot; rel=&quot;attachment wp-att-8142&quot;&gt;&lt;img alt=&quot;Kayaking in the Summer Isles&quot; src=&quot;http://www.roughguides.com/wp-content/uploads/2012/07/PR_Sea-Kayaking-660x495.jpg&quot; style=&quot;height:495px; width:660px&quot; title=&quot;Kayaking in the Summer Isles&quot; /&gt;&lt;/a&gt;&lt;/span&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;The protected sandy beaches and shallow shores of the Summer Isles are perfect places to land a kayak and pitch a tent for the night. If you like the idea, canoeing tours organized by Wilderness Scotland make for an excellent choice: there can&amp;rsquo;t be many trips that leave so little trace behind them.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;The journey begins and ends at Inverness train station, where you&amp;rsquo;re taken by minibus across the northwest of Scotland to Achiltibuie, the launchpad to the Summer Isles. Paddling 12&amp;ndash;14km daily for five days, guests are led along the rugged coastline of this remote archipelago, under sea arches and over water surges between narrow channels of rocks. You pass the dramatic sandstone cliffs of Eilean Flada Mar and its outlying skurries, the dramatic peaks of Assynt, the island of Eilean Mullagrach and the wildlife reserve of Isle Ristol. Along the way, you may see dolphins, whales, seals and a huge variety of birds, including golden eagles. After setting up camp late in the afternoon on one of the many islands, dinner is prepared and eaten in a communal tipi before retiring to your tent under a clear night&amp;rsquo;s sky.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&lt;em&gt;Wilderness Scotland offers a range of guided and non-guided activity holidays across Scotland, including walking, sailing and mountain biking. For details of these see&amp;nbsp;&lt;/em&gt;&lt;em&gt;&lt;a href=&quot;http://www.wildernessscotland.com/&quot; target=&quot;_blank&quot;&gt;http://www.wildernessscotland.com&lt;/a&gt;.&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;

&lt;h2&gt;&lt;strong&gt;&lt;span style=&quot;font-size:14px&quot;&gt;SEA KAYAKING THE BALTIC&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Over fifty million migratory birds visit Estonia each year, with many rare species &amp;ndash; like the velvet scoter and red-breasted merganser &amp;ndash; settling on the country&amp;rsquo;s northern islands to breed. These wildlife havens were the chance consequence of Soviet deportations in the 1950s to allow military tests to take place: when the locals were forced out, the birds began to move in.&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;You can explore this twitcher&amp;rsquo;s paradise on guided kayak tours with Reimann Retked, an adventure-holiday specialist certified by the Estonian Ecotourism Association. You can paddle from island to island, approaching the birds without disturbing them, or leave the canoes onshore and hike over the flat scrubland. The latter can be somewhat eerie, as these islands are still dotted with crumbling farmhouses and deserted Soviet watchtowers, half-rusted by the salty air. Covered in white gulls against a setting sun, though, they make for a great photograph.&lt;/span&gt;&lt;/p&gt;
', NULL, N'Theo Roughguides.com', CAST(0x0000A546007FA4FF AS DateTime), 1)
GO
SET IDENTITY_INSERT [ann77429_admin].[New] OFF
GO
SET IDENTITY_INSERT [ann77429_admin].[Phonto] ON 

GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (40, N'Camping on beach', N'/Upload/images/Photo/Camping%20on%20beach/10426133_928655393832096_917043432815383491_n.jpg', CAST(0x0000A53401054EDC AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (41, N'Camping on beach', N'/Upload/images/Photo/Camping%20on%20beach/11103081_943502659014036_163219428007253992_o.jpg', CAST(0x0000A53401057B02 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (42, N'Camping on beach', N'/Upload/images/Photo/Camping%20on%20beach/11053411_969126023099019_4562848203630276556_o.jpg', CAST(0x0000A53401539612 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (43, N'Camping on beach', N'/Upload/images/Photo/Camping%20on%20beach/11062740_955881661109469_8874638511852122711_n.jpg', CAST(0x0000A5340153AB13 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (44, N'Camping on beach', N'/Upload/images/Photo/Camping%20on%20beach/10985558_1057002604315652_2757068196373464818_o.jpg', CAST(0x0000A5340153EC65 AS DateTime), 1)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (45, N'Camping on beach', N'/Upload/images/Photo/Camping%20on%20beach/11128472_955880237776278_6530723655047565648_n.jpg', CAST(0x0000A53401540745 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (46, N'Camping on beach', N'/Upload/images/Photo/Camping%20on%20beach/11206586_944716145540007_7596681250093120732_o.jpg', CAST(0x0000A53401544998 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (47, N'Camping on beach', N'/Upload/images/Photo/Camping%20on%20beach/10389965_948291881868447_6275848988669647427_n.jpg', CAST(0x0000A5340154F5BF AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (48, N'Camping on beach', N'/Upload/images/Photo/Camping%20on%20beach/10426541_955880754442893_7033608850090888224_n.jpg', CAST(0x0000A53401550C99 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (49, N'Camping on beach', N'/Upload/images/Photo/Camping%20on%20beach/11220921_969128866432068_2106633984912330292_n.jpg', CAST(0x0000A53401552DE8 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (50, N'Camping on beach', N'/Upload/images/Photo/Camping%20on%20beach/11140760_943505772347058_3996889107727371261_o.jpg', CAST(0x0000A5340155A3D7 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (51, N'Thinh Linh Valley', N'/Upload/images/Photo/Thinh%20Linh%20valley/11053143_976053955739559_8239483713684159814_n.jpg', CAST(0x0000A5340156E0CD AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (52, N'Thinh Linh Valley', N'/Upload/images/Photo/Thinh%20Linh%20valley/11705553_969125609765727_576037677824812853_o.jpg', CAST(0x0000A5340156FF88 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (53, N'Thinh Linh Valley', N'/Upload/images/Photo/Thinh%20Linh%20valley/1522800_944721388872816_5496060903666680466_o.jpg', CAST(0x0000A534015774CE AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (54, N'Thinh Linh Valley', N'/Upload/images/Photo/Thinh%20Linh%20valley/1980148_969125193099102_8266154285569973168_o.jpg', CAST(0x0000A53401578E12 AS DateTime), 1)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (55, N'Thinh Linh Valley', N'/Upload/images/Photo/Thinh%20Linh%20valley/11212725_944715538873401_4422107061443659498_o.jpg', CAST(0x0000A535007DDBFB AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (56, N'Thinh Linh Valley', N'/Upload/images/Photo/Thinh%20Linh%20valley/11223911_976053899072898_9207930209594693343_n.jpg', CAST(0x0000A535007E3565 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (57, N'Thinh Linh Valley', N'/Upload/images/Photo/Thinh%20Linh%20valley/11665411_976053999072888_7294960316285955491_n.jpg', CAST(0x0000A535007E54B6 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (58, N'Thinh Linh Valley', N'/Upload/images/Photo/Thinh%20Linh%20valley/885618_951804791497809_3833139790488560869_o.jpg', CAST(0x0000A535007EBCD2 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (59, N'Cooking class', N'/Upload/images/Photo/Cooking%20class/Ch%C6%B0a%20c%C3%B3%20kjt%C3%AAn.png', CAST(0x0000A535007F55F2 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (60, N'Cooking class', N'/Upload/images/Photo/Cooking%20class/Ch%C6%B0a%20c__%C3%B3%20t%C3%AAn_2.png', CAST(0x0000A535007F9CC0 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (61, N'Cooking class', N'/Upload/images/Photo/Cooking%20class/Ch%C6%B0a%20c%C3%B3%20kjt%C3%AAn.png', CAST(0x0000A535007FD526 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (62, N'Cooking class', N'/Upload/images/Photo/Cooking%20class/10151876_274242992744054_8658149_n.jpg', CAST(0x0000A5350080DE80 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (63, N'Cooking class', N'/Upload/images/Photo/Cooking%20class/887523_10207525107427305_4292853879462510244_o.jpg', CAST(0x0000A5350080F1BB AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (64, N'Cooking class', N'/Upload/images/Photo/Cooking%20class/Ch%C6%B0all%20c%C3%B3%20t%C3%AAn_2.png', CAST(0x0000A535008112F8 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (65, N'Cooking class', N'/Upload/images/Photo/Cooking%20class/1526507_275179245983762_1398071385_n.jpg', CAST(0x0000A53500814542 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (66, N'Cooking class', N'/Upload/images/Photo/Cooking%20class/1901226_261376974030656_254674065_n.jpg', CAST(0x0000A535008175B4 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (67, N'Trekking Ha Sen mountain', N'/Upload/images/Photo/Trekking%20Ha%20Sen%20mountain/11027451_480036308839702_4876069660105417743_n.jpg', CAST(0x0000A5350081B3F4 AS DateTime), 1)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (68, N'Trekking Ha Sen mountain', N'/Upload/images/Photo/Trekking%20Ha%20Sen%20mountain/11403473_480036155506384_4126811675176902505_n.jpg', CAST(0x0000A5350081CC03 AS DateTime), 1)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (69, N'Trekking Ha Sen mountain', N'/Upload/images/Photo/Trekking%20Ha%20Sen%20mountain/11665536_480036495506350_3965611024927275704_n.jpg', CAST(0x0000A5350081DEEA AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (70, N'Trekking Ha Sen mountain', N'/Upload/images/Photo/Trekking%20Ha%20Sen%20mountain/11665688_480036435506356_8662531012118304612_n.jpg', CAST(0x0000A5350081F335 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (71, N'Trekking Ha Sen mountain', N'/Upload/images/Photo/Trekking%20Ha%20Sen%20mountain/11667259_480036225506377_5256619525369124764_n.jpg', CAST(0x0000A535008203C9 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (72, N'Homestay in floating house', N'/Upload/images/Photo/Trekking%20Ha%20Sen%20mountain/12006095_10156047740885203_7979853930714576141_n.jpg', CAST(0x0000A53500823057 AS DateTime), 1)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (73, N'Camping on beach', N'/Upload/images/Photo/Trekking%20Ha%20Sen%20mountain/11062740_955881661109469_8874638511852122711_n.jpg', CAST(0x0000A5350082B5AA AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (74, N'Trekking Ha Sen mountain', N'/Upload/images/Photo/Trekking%20Ha%20Sen%20mountain/11990557_10156047741370203_2287899879871383330_n.jpg', CAST(0x0000A5350082F868 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (75, N'Cooking class', N'/Upload/images/Photo/Trekking%20Ha%20Sen%20mountain/12042810_10153255982801025_1876981596676121364_n.jpg', CAST(0x0000A53500832ABD AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (76, N'Homestay in floating house', N'/Upload/images/Photo/Trekking%20Ha%20Sen%20mountain/12038174_10156047742280203_2287508406361252973_n.jpg', CAST(0x0000A53500833F8A AS DateTime), 1)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (77, N'Homestay in floating house', N'/Upload/images/Photo/Trekking%20Ha%20Sen%20mountain/12002190_10156047741975203_7753732772017852723_n.jpg', CAST(0x0000A53500836963 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (78, N'Kayaking in Lan Ha bay', N'/Upload/images/Photo/Camping%20on%20beach/11219043_984235001588121_116080412203659505_n.jpg', CAST(0x0000A5350083EA40 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (79, N'Kayaking in Lan Ha bay', N'/Upload/images/Photo/Kayaking%20in%20Lan%20Ha%20bay/11009115_1408218776166093_1827729975460201258_n.jpg', CAST(0x0000A5350085113D AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (80, N'Kayaking in Lan Ha bay', N'/Upload/images/Photo/Kayaking%20in%20Lan%20Ha%20bay/11702803_976053979072890_4822495294078161064_n.jpg', CAST(0x0000A53500852C9B AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (81, N'Trekking Ha Sen mountain', N'/Upload/images/Photo/Kayaking%20in%20Lan%20Ha%20bay/11703306_480036128839720_1256860255803945599_n.jpg', CAST(0x0000A53500855471 AS DateTime), 1)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (82, N'Trekking Ha Sen mountain', N'/Upload/images/Photo/Kayaking%20in%20Lan%20Ha%20bay/11707666_480036535506346_2043955864329337535_n.jpg', CAST(0x0000A535008619CE AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (83, N'Cooking class', N'/Upload/images/Photo/Kayaking%20in%20Lan%20Ha%20bay/12052414_10207525109307352_1184470511718951111_o.jpg', CAST(0x0000A535008642CF AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (84, N'Kayaking in Lan Ha bay', N'/Upload/images/Photo/Kayaking%20in%20Lan%20Ha%20bay/10866162_944720532206235_8775633734876524162_o.jpg', CAST(0x0000A53500865F9F AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (85, N'Kayaking in Lan Ha bay', N'/Upload/images/Photo/Kayaking%20in%20Lan%20Ha%20bay/11745574_984235028254785_4631484533978253428_n.jpg', CAST(0x0000A53500867E80 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (86, N'Kayaking in Lan Ha bay', N'/Upload/images/Photo/Kayaking%20in%20Lan%20Ha%20bay/11022528_944721835539438_7460207994765697677_o.jpg', CAST(0x0000A535008697DF AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (87, N'Kayaking in Lan Ha bay', N'/Upload/images/Photo/Kayaking%20in%20Lan%20Ha%20bay/11709217_976053832406238_3316996366642980347_n.jpg', CAST(0x0000A5350086B001 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (88, N'Homestay in floating house', N'/Upload/images/Photo/Kayaking%20in%20Lan%20Ha%20bay/12033182_10207628388093936_7683233664647367537_n.jpg', CAST(0x0000A5350086C6A8 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (89, N'Kayaking in Lan Ha bay', N'/Upload/images/Photo/Kayaking%20in%20Lan%20Ha%20bay/11665613_976053859072902_3124538838288214087_n.jpg', CAST(0x0000A5350086DA4F AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (90, N'Kayaking in Lan Ha bay', N'/Upload/images/Photo/Kayaking%20in%20Lan%20Ha%20bay/11702803_976053979072890_4822495294078161064_n.jpg', CAST(0x0000A5350086F0E2 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (91, N'Kayaking in Lan Ha bay', N'/Upload/images/Photo/Kayaking%20in%20Lan%20Ha%20bay/11892088_997865910225030_1501264674718043068_n.jpg', CAST(0x0000A53500871738 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (92, N'Kayaking in Lan Ha bay', N'/Upload/images/Photo/Kayaking%20in%20Lan%20Ha%20bay/11742872_977057268972561_1303750857403421872_n.jpg', CAST(0x0000A53500873A5B AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (93, N'Vietnam food', N'/Upload/images/Photo/Vietnam%20food/10339465_286066591561694_3158174527595925246_o.jpg', CAST(0x0000A535008F4B2C AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (94, N'Vietnam food', N'/Upload/images/Photo/Vietnam%20food/10488069_309068699261483_6849594311998671357_n.jpg', CAST(0x0000A535008F6AE4 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (95, N'Vietnam food', N'/Upload/images/Photo/Vietnam%20food/1476176_231736746994679_1081696167_n.jpg', CAST(0x0000A535008F899F AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (96, N'Vietnam food', N'/Upload/images/Photo/Vietnam%20food/1901226_261376974030656_254674065_n.jpg', CAST(0x0000A535008FA608 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (97, N'Vietnam food', N'/Upload/images/Photo/Vietnam%20food/1002036_236833253151695_1013360713_n.jpg', CAST(0x0000A535008FCA44 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (98, N'Vietnam food', N'/Upload/images/Photo/Vietnam%20food/1491668_241796605988693_2123585089_n.jpg', CAST(0x0000A535008FEA2F AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (99, N'Camping on beach', N'/Upload/images/Photo/Vietnam%20food/10389965_948291881868447_6275848988669647427_n.jpg', CAST(0x0000A53500900592 AS DateTime), 1)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (100, N'Camping on beach', N'/Upload/images/Photo/Vietnam%20food/1558555_249326091902411_638109291_n.jpg', CAST(0x0000A53500902485 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (101, N'Vietnam food', N'/Upload/images/Photo/Vietnam%20food/1480600_238866709615016_1202768437_n.jpg', CAST(0x0000A53500905239 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (102, N'Vietnam food', N'/Upload/images/Photo/Vietnam%20food/1525572_241796632655357_235213798_n.jpg', CAST(0x0000A535009071FA AS DateTime), 1)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (103, N'Vietnam food', N'/Upload/images/Photo/Cooking%20class/1526507_275179245983762_1398071385_n.jpg', CAST(0x0000A5350090A79D AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (104, N'Vietnam food', N'/Upload/images/Photo/Vietnam%20food/11245529_945424948802460_6673624105738099237_n.jpg', CAST(0x0000A5350090FBD1 AS DateTime), 1)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (105, N'Vietnam food', N'/Upload/images/Photo/Vietnam%20food/11264030_945424932135795_3137668311557642029_n.jpg', CAST(0x0000A5350091167E AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (106, N'Vietnam food', N'/Upload/images/Photo/Vietnam%20food/11021271_828580583882386_6397396902102593474_n.jpg', CAST(0x0000A5350091BCFA AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (107, N'Vietnam food', N'/Upload/images/Photo/Vietnam%20food/11006378_828580313882413_1118667682594133725_n.jpg', CAST(0x0000A5350091DBEE AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (108, N'Vietnam food', N'/Upload/images/Photo/Vietnam%20food/11017688_828580553882389_8953189352458682452_n.jpg', CAST(0x0000A53500921A7C AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (109, N'Homestay in floating house', N'/Upload/images/Photo/Vietnam%20food/10421321_10156047740770203_8823265955245194099_n.jpg', CAST(0x0000A535009247E6 AS DateTime), 1)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (110, N'Camping on beach', N'/Upload/images/Photo/Vietnam%20food/DSC09922-1024x768%20-%20Sao.jpg', CAST(0x0000A53500928245 AS DateTime), 1)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (111, N'Kayaking in Lan Ha bay', N'/Upload/images/Photo/Vietnam%20food/1458706_708666862527931_785618758510849992_n.jpg', CAST(0x0000A5350092A1D3 AS DateTime), 1)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (112, N'Cooking class', N'/Upload/images/Photo/Vietnam%20food/Ch%C6%B0a%208c%C3%B3%20t%C3%AAn.png', CAST(0x0000A5350092BF70 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (113, N'Cooking class', N'/Upload/images/Photo/Vietnam%20food/12029206_1488273101499376_1314452789_n.jpg', CAST(0x0000A5350092DF44 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (114, N'Kayaking in Lan Ha bay', N'/Upload/images/Photo/Kayaking%20in%20Lan%20Ha%20bay/11702803_976053979072890_4822495294078161064_n.jpg', CAST(0x0000A535009396F5 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (115, N'Cooking class', N'/Upload/images/Photo/Kayaking%20in%20Lan%20Ha%20bay/12039547_1889961081229769_4579512989045330328_n.jpg', CAST(0x0000A535009406C8 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (116, N'Cooking class', N'/Upload/images/Photo/Kayaking%20in%20Lan%20Ha%20bay/12052414_10207525109307352_1184470511718951111_o.jpg', CAST(0x0000A53500942BB1 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (117, N'Thinh Linh Valley', N'/Upload/images/Photo/Kayaking%20in%20Lan%20Ha%20bay/11811483_984234978254790_3194908100238609858_n.jpg', CAST(0x0000A5350094498C AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (118, N'Homestay in floating house', N'/Upload/images/Photo/10547753_873586499321003_5028877704542038465_o.jpg', CAST(0x0000A53500962AC4 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (119, N'Homestay in floating house', N'/Upload/images/Photo/Ch%C6%B0asf%20c%C3%B3%20t%C3%AAn_2.png', CAST(0x0000A53500965BD5 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (120, N'Homestay in floating house', N'/Upload/images/Photo/10656262_358955630919110_1850950396_n.jpg', CAST(0x0000A5350096D689 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (121, N'Camping on beach', N'/Upload/images/Photo/Camping%20on%20beach/11103081_943502659014036_163219428007253992_o.jpg', CAST(0x0000A5350097040E AS DateTime), 1)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (129, N'Stitlhouse', N'/Upload/images/Photo/BBQ%20party/1531555_479710898872243_6634147865278091932_n.jpg', CAST(0x0000A536007F3556 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (130, N'Stitlhouse', N'/Upload/images/Photo/BBQ%20party/11212730_479708512205815_2654819361228748788_o.jpg', CAST(0x0000A536007F49D9 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (131, N'Stitlhouse', N'/Upload/images/Photo/BBQ%20party/11221596_479710838872249_5452037685634007770_n.jpg', CAST(0x0000A536007F6097 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (132, N'Stitlhouse', N'/Upload/images/Photo/BBQ%20party/11694005_479710945538905_997122300496510867_n.jpg', CAST(0x0000A536007F745F AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (133, N'Stitlhouse', N'/Upload/images/Photo/BBQ%20party/1531555_479710898872243_6634147865278091932_n.jpg', CAST(0x0000A536007FC827 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (134, N'Stitlhouse', N'/Upload/images/Photo/BBQ%20party/11899823_499413536901979_3677620797778093339_n.jpg', CAST(0x0000A536007FEE94 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (135, N'Stitlhouse', N'/Upload/images/Photo/BBQ%20party/11701016_479710815538918_3812405859701066819_n.jpg', CAST(0x0000A53600800005 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (136, N'Stitlhouse', N'/Upload/images/Photo/BBQ%20party/12019780_509079505935382_5954976747315711574_n.jpg', CAST(0x0000A536008013EE AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (137, N'BBQ party', N'/Upload/images/Photo/BBQ%20party/11223659_484095621767104_586373077708952346_n.jpg', CAST(0x0000A53600F66CCE AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (138, N'BBQ party', N'/Upload/images/Photo/BBQ%20party/11224001_492040994305900_8195746894231313964_n.jpg', CAST(0x0000A53600F69016 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (139, N'BBQ party', N'/Upload/images/Photo/BBQ%20party/11236550_484095841767082_1921299999650112984_n.jpg', CAST(0x0000A53600F6A069 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (140, N'BBQ party', N'/Upload/images/Photo/BBQ%20party/11863434_492042787639054_4002024948856046732_n.jpg', CAST(0x0000A53600F6BD55 AS DateTime), 1)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (141, N'BBQ party', N'/Upload/images/Photo/BBQ%20party/12088067_512268625616470_7071400637475214499_n.jpg', CAST(0x0000A53600F71B06 AS DateTime), 1)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (142, N'BBQ party', N'/Upload/images/Photo/BBQ%20party/11825745_492042687639064_1633330819382158115_n.jpg', CAST(0x0000A53600F73703 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (143, N'BBQ party', N'/Upload/images/Photo/Vietnam%20food/11220921_969128866432068_2106633984912330292_n.jpg', CAST(0x0000A53600FDED37 AS DateTime), 1)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (144, N'BBQ party', N'/Upload/images/Photo/Vietnam%20food/11245529_945424948802460_6673624105738099237_n.jpg', CAST(0x0000A53600FE02F8 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (145, N'BBQ party', N'/Upload/images/Photo/Vietnam%20food/11264030_945424932135795_3137668311557642029_n.jpg', CAST(0x0000A53600FE2771 AS DateTime), 1)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (146, N'BBQ party', N'/Upload/images/Photo/Vietnam%20food/11021271_828580583882386_6397396902102593474_n.jpg', CAST(0x0000A53600FE3822 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (147, N'BBQ party', N'/Upload/images/Photo/Vietnam%20food/1002036_236833253151695_1013360713_n.jpg', CAST(0x0000A536010306E6 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (148, N'Beauty of Cat Ba island', N'/Upload/images/Photo/Beauty%20of%20Cat%20Ba%20island/10505014_10152582743304784_3641030331448036322_o.jpg', CAST(0x0000A53800A06D98 AS DateTime), 1)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (149, N'Beauty of Cat Ba island', N'/Upload/images/Photo/Beauty%20of%20Cat%20Ba%20island/11128385_989184431094542_283287921145699008_o.jpg', CAST(0x0000A53800A08586 AS DateTime), 1)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (150, N'Beauty of Cat Ba island', N'/Upload/images/Photo/Beauty%20of%20Cat%20Ba%20island/11312730_990167827662869_459847052148638691_o.jpg', CAST(0x0000A53800A095E7 AS DateTime), 1)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (151, N'Beauty of Cat Ba island', N'/Upload/images/Photo/Beauty%20of%20Cat%20Ba%20island/12122818_1065223970157254_1854837890734470205_n.jpg', CAST(0x0000A53800A0A774 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (152, N'Beauty of Cat Ba island', N'/Upload/images/Photo/Beauty%20of%20Cat%20Ba%20island/bien-cua-viet.jpg', CAST(0x0000A53800A0B736 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (153, N'Beauty of Cat Ba island', N'/Upload/images/Photo/Beauty%20of%20Cat%20Ba%20island/binh-minh-tren-bien-giaoducvietnam-5.jpg', CAST(0x0000A53800A0C7F5 AS DateTime), 1)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (154, N'Beauty of Cat Ba island', N'/Upload/images/Photo/Beauty%20of%20Cat%20Ba%20island/lan-ngam-san-ho-phu-quoc2.jpg', CAST(0x0000A53800A0DD0E AS DateTime), 1)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (155, N'Beauty of Cat Ba island', N'/Upload/images/Photo/Beauty%20of%20Cat%20Ba%20island/tour-ha-long.jpg', CAST(0x0000A53800A0F555 AS DateTime), 1)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (156, N'Beauty of Cat Ba island', N'/Upload/images/Photo/Beauty%20of%20Cat%20Ba%20island/Nenlam.jpg', CAST(0x0000A53800A1079D AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (157, N'Beauty of Cat Ba island', N'/Upload/images/Photo/Beauty%20of%20Cat%20Ba%20island/dc_150825_cat-ba.jpg', CAST(0x0000A53800A1203D AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (158, N'Beauty of Cat Ba island', N'/Upload/images/Photo/Camping%20on%20beach/10253768_293566630811690_2049723533328126578_n.jpg', CAST(0x0000A53800A2007A AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (159, N'Beauty of Cat Ba island', N'/Upload/images/Slide/bocaray%203.jpg', CAST(0x0000A53A008C67C6 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (160, N'Beauty of Cat Ba island', N'/Upload/images/Slide/11737983_10203538383900614_5561135361671533245_n.jpg', CAST(0x0000A53A008CA63D AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (161, N'Beauty of Cat Ba island', N'/Upload/images/Slide/deck_chairs_on_the_beach-wallpaper-2560x1600%20(1).jpg', CAST(0x0000A53A008CBDE5 AS DateTime), 1)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (162, N'Beauty of Cat Ba island', N'/Upload/images/Slide/boracay-beach1.jpg', CAST(0x0000A53A008CDD73 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (163, N'Beauty of Cat Ba island', N'/Upload/images/Slide/04_gfxe.jpg', CAST(0x0000A53A008CECF4 AS DateTime), 1)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (164, N'Beauty of Cat Ba island', N'/Upload/images/Slide/1IMG_1365.jpg', CAST(0x0000A53A008D048E AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (165, N'Beauty of Cat Ba island', N'/Upload/images/Slide/hoang%20hon.jpg', CAST(0x0000A53A008D2896 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (166, N'Beauty of Cat Ba island', N'/Upload/images/Slide/boracay2.jpg', CAST(0x0000A53A008DA3AC AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (167, N'Beauty of Cat Ba island', N'/Upload/images/Slide/dc_150825_cat-ba.jpg', CAST(0x0000A53A008DBE33 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (168, N'Beauty of Cat Ba island', N'/Upload/images/Slide/SOC%20TRANG.jpg', CAST(0x0000A53A008DD613 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (169, N'Beauty of Cat Ba island', N'/Upload/images/Slide/CD05.jpg', CAST(0x0000A54400949D04 AS DateTime), 1)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (170, N'Beauty of Cat Ba island', N'/Upload/images/Slide/10517482_607147719395964_9063302370992434265_n.jpg', CAST(0x0000A5440094BE8B AS DateTime), 1)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (171, N'Beauty of Cat Ba island', N'/Upload/images/Slide/beach-camp-scene.jpg', CAST(0x0000A5440094DD50 AS DateTime), 1)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (172, N'Snorkerling', N'/Upload/images/Photo/Snorkeling/IMG_6478.JPG', CAST(0x0000A54400BB9E16 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (173, N'Snorkerling', N'/Upload/images/Photo/Snorkeling/IMG_6467.JPG', CAST(0x0000A54400BBC054 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (174, N'Snorkerling', N'/Upload/images/Photo/Snorkeling/IMG_6471.JPG', CAST(0x0000A54400BBD3C3 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (175, N'Snorkerling', N'/Upload/images/Photo/Snorkeling/IMG_6481.JPG', CAST(0x0000A54400BBE7ED AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (176, N'Snorkerling', N'/Upload/images/Photo/Snorkeling/IMG_6480.JPG', CAST(0x0000A54400BBFB2D AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (177, N'Snorkerling', N'/Upload/images/Photo/Snorkeling/IMG_6499.JPG', CAST(0x0000A54400BC0E68 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (178, N'Snorkerling', N'/Upload/images/Photo/Snorkeling/IMG_6531.JPG', CAST(0x0000A54400BC211C AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (179, N'Snorkerling', N'/Upload/images/Photo/Snorkeling/IMG_6484.JPG', CAST(0x0000A54400BC39A0 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (180, N'Snorkerling', N'/Upload/images/Photo/Snorkeling/IMG_6478.JPG', CAST(0x0000A54400BC4E3A AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (181, N'Snorkerling', N'/Upload/images/Photo/Snorkeling/IMG_6534.JPG', CAST(0x0000A54400BC6770 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (182, N'Snorkerling', N'/Upload/images/Photo/Snorkeling/tour-lan-bien-hon-mun-nha-trang-9.jpg', CAST(0x0000A54600949B3B AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (183, N'Snorkerling', N'/Upload/images/Photo/Snorkeling/tour-lan-bien-hon-mun-nha-trang-4.jpg', CAST(0x0000A5460094B265 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (184, N'Snorkerling', N'/Upload/images/Photo/Snorkeling/tour-lan-bien-hon-mun-nha-trang-3.jpg', CAST(0x0000A5460094C60C AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (185, N'Snorkerling', N'/Upload/images/Photo/Snorkeling/tour-lan-bien-hon-mun-nha-trang-8.jpg', CAST(0x0000A5460094D93E AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (186, N'Snorkerling', N'/Upload/images/Photo/Snorkeling/tour-lan-bien-hon-mun-nha-trang-2.jpg', CAST(0x0000A546009504CE AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (187, N'Snorkerling', N'/Upload/images/Photo/Snorkeling/tour-lan-bien-hon-mun-nha-trang-5.jpg', CAST(0x0000A546009531E8 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (188, N'Beauty of Cat Ba island', N'/Upload/images/BaiViet/10487264_613086912135378_4836383291247483764_n.jpg', CAST(0x0000A54600D649B7 AS DateTime), 0)
GO
INSERT [ann77429_admin].[Phonto] ([Id], [Title], [img], [ModTime], [isHome]) VALUES (189, N'Homestay in floating village', N'/Upload/images/BaiViet/4190.jpg', CAST(0x0000A54600D6725F AS DateTime), 0)
GO
SET IDENTITY_INSERT [ann77429_admin].[Phonto] OFF
GO
INSERT [ann77429_admin].[Setting] ([Key], [Value]) VALUES (N'logo', N'/Upload/images/Logo/logoresize.png')
GO
INSERT [ann77429_admin].[Setting] ([Key], [Value]) VALUES (N'oderMail', N'catbastation@gmail.com')
GO
SET IDENTITY_INSERT [ann77429_admin].[SlideBaner] ON 

GO
INSERT [ann77429_admin].[SlideBaner] ([Id], [Txt1], [Txt2], [Img], [Link], [Oder]) VALUES (1, N'Life is Adventure', N'dare it', N'/Upload/images/Slide/kayak%20-%20Sao.jpg', N'http://www.catbastation.com/tour/7/homestay-in-floating-village', 10)
GO
INSERT [ann77429_admin].[SlideBaner] ([Id], [Txt1], [Txt2], [Img], [Link], [Oder]) VALUES (4, N'Live in the sunshine, swim the sea', N'drink the wild air', N'/Upload/images/Slide/slide01.jpg', N'http://www.catbastation.com/tour/5/exploring-local-culture-in-floating-village', 4)
GO
INSERT [ann77429_admin].[SlideBaner] ([Id], [Txt1], [Txt2], [Img], [Link], [Oder]) VALUES (28, N'We’re very pleased to share ', N'these moments with you!', N'/Upload/images/Slide/UBU_161_aspect16x9%20-%20Sao.jpg', N'http://www.catbastation.com/tour/2/unique-activities-tour', 3)
GO
INSERT [ann77429_admin].[SlideBaner] ([Id], [Txt1], [Txt2], [Img], [Link], [Oder]) VALUES (31, N'Let the sea', N'set your free', N'/Upload/images/Slide/beach-camp-scene.jpg', N'http://www.catbastation.com/tour/3/exploring-local-culture-in-cat-ba-island', 2)
GO
SET IDENTITY_INSERT [ann77429_admin].[SlideBaner] OFF
GO
SET IDENTITY_INSERT [HangFire].[AggregatedCounter] ON 

GO
INSERT [HangFire].[AggregatedCounter] ([Id], [Key], [Value], [ExpireAt]) VALUES (1, N'stats:succeeded', 93, NULL)
GO
INSERT [HangFire].[AggregatedCounter] ([Id], [Key], [Value], [ExpireAt]) VALUES (2, N'stats:succeeded:2015-11-04', 13, CAST(0x0000A564010F8E80 AS DateTime))
GO
INSERT [HangFire].[AggregatedCounter] ([Id], [Key], [Value], [ExpireAt]) VALUES (5, N'stats:succeeded:2015-11-05', 41, CAST(0x0000A56500C85278 AS DateTime))
GO
INSERT [HangFire].[AggregatedCounter] ([Id], [Key], [Value], [ExpireAt]) VALUES (13, N'stats:failed:2015-11-05', 1, CAST(0x0000A56500741916 AS DateTime))
GO
INSERT [HangFire].[AggregatedCounter] ([Id], [Key], [Value], [ExpireAt]) VALUES (16, N'stats:deleted', 10, NULL)
GO
INSERT [HangFire].[AggregatedCounter] ([Id], [Key], [Value], [ExpireAt]) VALUES (20, N'stats:succeeded:2015-11-06', 5, CAST(0x0000A566006DF31C AS DateTime))
GO
INSERT [HangFire].[AggregatedCounter] ([Id], [Key], [Value], [ExpireAt]) VALUES (22, N'stats:failed:2015-11-06', 2, CAST(0x0000A56600DD1184 AS DateTime))
GO
INSERT [HangFire].[AggregatedCounter] ([Id], [Key], [Value], [ExpireAt]) VALUES (25, N'stats:succeeded:2015-11-09', 38, CAST(0x0000A56900BE283F AS DateTime))
GO
INSERT [HangFire].[AggregatedCounter] ([Id], [Key], [Value], [ExpireAt]) VALUES (27, N'stats:failed:2015-11-09', 7, CAST(0x0000A569015142EB AS DateTime))
GO
INSERT [HangFire].[AggregatedCounter] ([Id], [Key], [Value], [ExpireAt]) VALUES (34, N'stats:succeeded:2015-11-10', 2, CAST(0x0000A56A011D743C AS DateTime))
GO
INSERT [HangFire].[AggregatedCounter] ([Id], [Key], [Value], [ExpireAt]) VALUES (35, N'stats:succeeded:2015-11-10-17', 2, CAST(0x0000A54D011D743C AS DateTime))
GO
INSERT [HangFire].[AggregatedCounter] ([Id], [Key], [Value], [ExpireAt]) VALUES (36, N'stats:failed:2015-11-10', 1, CAST(0x0000A56A0180B250 AS DateTime))
GO
INSERT [HangFire].[AggregatedCounter] ([Id], [Key], [Value], [ExpireAt]) VALUES (37, N'stats:failed:2015-11-10-23', 1, CAST(0x0000A54D0180B259 AS DateTime))
GO
INSERT [HangFire].[AggregatedCounter] ([Id], [Key], [Value], [ExpireAt]) VALUES (38, N'stats:succeeded:2015-11-11', 2, CAST(0x0000A56B00998138 AS DateTime))
GO
INSERT [HangFire].[AggregatedCounter] ([Id], [Key], [Value], [ExpireAt]) VALUES (39, N'stats:succeeded:2015-11-11-09', 2, CAST(0x0000A54E00998138 AS DateTime))
GO
SET IDENTITY_INSERT [HangFire].[AggregatedCounter] OFF
GO
INSERT [HangFire].[Schema] ([Version]) VALUES (5)
GO
SET IDENTITY_INSERT [HangFire].[Set] ON 

GO
INSERT [HangFire].[Set] ([Id], [Key], [Score], [Value], [ExpireAt]) VALUES (261, N'retries', 0, N'105', NULL)
GO
INSERT [HangFire].[Set] ([Id], [Key], [Score], [Value], [ExpireAt]) VALUES (262, N'schedule', 1447238472, N'105', NULL)
GO
SET IDENTITY_INSERT [HangFire].[Set] OFF
GO
