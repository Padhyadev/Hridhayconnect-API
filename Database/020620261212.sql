USE [padhyaso_Antic]
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'padhyaso_admin', @level1type=N'VIEW',@level1name=N'VW_Products'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'padhyaso_admin', @level1type=N'VIEW',@level1name=N'VW_Products'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'padhyaso_admin', @level1type=N'VIEW',@level1name=N'VW_Products'
GO
/****** Object:  StoredProcedure [dbo].[SP_Wishlist_Save]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Wishlist_Save]
GO
/****** Object:  StoredProcedure [dbo].[SP_Wishlist_List]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Wishlist_List]
GO
/****** Object:  StoredProcedure [dbo].[SP_Variant_Combo]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Variant_Combo]
GO
/****** Object:  StoredProcedure [dbo].[SP_Users_Save]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Users_Save]
GO
/****** Object:  StoredProcedure [dbo].[SP_Users_Get]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Users_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_UserMenuAccess]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_UserMenuAccess]
GO
/****** Object:  StoredProcedure [dbo].[SP_User_ForgotPassword_VerifyOTP]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_User_ForgotPassword_VerifyOTP]
GO
/****** Object:  StoredProcedure [dbo].[SP_User_ForgotPassword_ResetPassword]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_User_ForgotPassword_ResetPassword]
GO
/****** Object:  StoredProcedure [dbo].[SP_User_ForgotPassword_GenerateOTP]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_User_ForgotPassword_GenerateOTP]
GO
/****** Object:  StoredProcedure [dbo].[SP_SimilarProduct_Get]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_SimilarProduct_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_Roles_Save]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Roles_Save]
GO
/****** Object:  StoredProcedure [dbo].[SP_Roles_Get]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Roles_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_Reviews_Save]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Reviews_Save]
GO
/****** Object:  StoredProcedure [dbo].[SP_Reviews_Get]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Reviews_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_RemoveFromCart]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_RemoveFromCart]
GO
/****** Object:  StoredProcedure [dbo].[SP_ReleaseExpiredReservations]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_ReleaseExpiredReservations]
GO
/****** Object:  StoredProcedure [dbo].[SP_ProductStock_Get]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_ProductStock_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_ProductStock_Adjust]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_ProductStock_Adjust]
GO
/****** Object:  StoredProcedure [dbo].[SP_Product_Save]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Product_Save]
GO
/****** Object:  StoredProcedure [dbo].[SP_Product_Get]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Product_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_Product_Combo]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Product_Combo]
GO
/****** Object:  StoredProcedure [dbo].[SP_Orders_Save]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Orders_Save]
GO
/****** Object:  StoredProcedure [dbo].[SP_Orders_Get]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Orders_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_Order_Detail_Get]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Order_Detail_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_Offer_Save]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Offer_Save]
GO
/****** Object:  StoredProcedure [dbo].[SP_Offer_Get]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Offer_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_Menus_Save]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Menus_Save]
GO
/****** Object:  StoredProcedure [dbo].[SP_Menus_Get]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Menus_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_LovMaster_Delete]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_LovMaster_Delete]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Love_Combo]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[Sp_Love_Combo]
GO
/****** Object:  StoredProcedure [dbo].[SP_LovDtl_Save]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_LovDtl_Save]
GO
/****** Object:  StoredProcedure [dbo].[SP_LovDtl_Delete]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_LovDtl_Delete]
GO
/****** Object:  StoredProcedure [dbo].[SP_Lov_Save]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Lov_Save]
GO
/****** Object:  StoredProcedure [dbo].[SP_LOV_Get]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_LOV_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_Inquiry_Status_Change]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Inquiry_Status_Change]
GO
/****** Object:  StoredProcedure [dbo].[SP_Inquiry_Save]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Inquiry_Save]
GO
/****** Object:  StoredProcedure [dbo].[SP_Inquiry_History_Get]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Inquiry_History_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_Inquiry_Get]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Inquiry_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_HomePageComponent_Save]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_HomePageComponent_Save]
GO
/****** Object:  StoredProcedure [dbo].[SP_HomePageComponent_Get]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_HomePageComponent_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetOrderByCustomer]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_GetOrderByCustomer]
GO
/****** Object:  StoredProcedure [dbo].[SP_GenerateOrderNumber]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_GenerateOrderNumber]
GO
/****** Object:  StoredProcedure [dbo].[SP_ForgotPassword_VerifyOTP]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_ForgotPassword_VerifyOTP]
GO
/****** Object:  StoredProcedure [dbo].[SP_ForgotPassword_ResetPassword]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_ForgotPassword_ResetPassword]
GO
/****** Object:  StoredProcedure [dbo].[SP_ForgotPassword_GenerateOTP]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_ForgotPassword_GenerateOTP]
GO
/****** Object:  StoredProcedure [dbo].[SP_DD_User]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_DD_User]
GO
/****** Object:  StoredProcedure [dbo].[SP_DD_Product]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_DD_Product]
GO
/****** Object:  StoredProcedure [dbo].[SP_DD_Category_Get]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_DD_Category_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_CustomerLogin]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_CustomerLogin]
GO
/****** Object:  StoredProcedure [dbo].[SP_CustomerDashboard_Get]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_CustomerDashboard_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_CustomerAddress_Save]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_CustomerAddress_Save]
GO
/****** Object:  StoredProcedure [dbo].[SP_Customer_Save]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Customer_Save]
GO
/****** Object:  StoredProcedure [dbo].[SP_Customer_Get]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Customer_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_Customer_Cart_Save]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Customer_Cart_Save]
GO
/****** Object:  StoredProcedure [dbo].[SP_Customer_Cart_Get]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Customer_Cart_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_Coupons_Save]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Coupons_Save]
GO
/****** Object:  StoredProcedure [dbo].[SP_Coupons_Get]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Coupons_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_Checkout]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Checkout]
GO
/****** Object:  StoredProcedure [dbo].[SP_CheckAuthentication]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_CheckAuthentication]
GO
/****** Object:  StoredProcedure [dbo].[SP_ChangePassword]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_ChangePassword]
GO
/****** Object:  StoredProcedure [dbo].[SP_CategorySKU_GenerateUnique]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_CategorySKU_GenerateUnique]
GO
/****** Object:  StoredProcedure [dbo].[SP_Category_Save]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Category_Save]
GO
/****** Object:  StoredProcedure [dbo].[SP_Category_Get]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Category_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_AttributeValue_Save]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_AttributeValue_Save]
GO
/****** Object:  StoredProcedure [dbo].[SP_AttributeValue_Get]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_AttributeValue_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_Attribute_Save]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Attribute_Save]
GO
/****** Object:  StoredProcedure [dbo].[SP_Attribute_Get]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_Attribute_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_ApplyOffersToCart_OLD]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_ApplyOffersToCart_OLD]
GO
/****** Object:  StoredProcedure [dbo].[SP_ApplyOffersToCart]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_ApplyOffersToCart]
GO
/****** Object:  StoredProcedure [dbo].[SP_AddToCart]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[SP_AddToCart]
GO
/****** Object:  StoredProcedure [dbo].[CheckUserAuthenticationForUserMaster]    Script Date: 02-06-2026 12:08:34 ******/
DROP PROCEDURE [dbo].[CheckUserAuthenticationForUserMaster]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__CreatedDa__7073AF84]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__IsDeleted__6F7F8B4B]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__IsActive__6E8B6712]
GO
ALTER TABLE [dbo].[Roles] DROP CONSTRAINT [DF__Roles__CreatedDa__6D9742D9]
GO
ALTER TABLE [dbo].[Roles] DROP CONSTRAINT [DF__Roles__IsDeleted__6CA31EA0]
GO
ALTER TABLE [dbo].[Roles] DROP CONSTRAINT [DF__Roles__IsActive__6BAEFA67]
GO
ALTER TABLE [dbo].[RolePermissions] DROP CONSTRAINT [DF__RolePermi__Creat__6ABAD62E]
GO
ALTER TABLE [dbo].[RolePermissions] DROP CONSTRAINT [DF__RolePermi__IsDel__69C6B1F5]
GO
ALTER TABLE [dbo].[RolePermissions] DROP CONSTRAINT [DF__RolePermi__IsAct__68D28DBC]
GO
ALTER TABLE [dbo].[Reviews] DROP CONSTRAINT [DF__Reviews__Created__67DE6983]
GO
ALTER TABLE [dbo].[Reviews] DROP CONSTRAINT [DF__Reviews__IsDelet__66EA454A]
GO
ALTER TABLE [dbo].[Reviews] DROP CONSTRAINT [DF__Reviews__IsActiv__65F62111]
GO
ALTER TABLE [dbo].[ProductVariantMapping] DROP CONSTRAINT [DF__ProductVa__Creat__77DFC722]
GO
ALTER TABLE [dbo].[ProductVariantMapping] DROP CONSTRAINT [DF__ProductVa__IsDel__76EBA2E9]
GO
ALTER TABLE [dbo].[ProductVariantMapping] DROP CONSTRAINT [DF__ProductVa__IsAct__75F77EB0]
GO
ALTER TABLE [dbo].[ProductVariantDetails] DROP CONSTRAINT [DF__ProductVa__Creat__7CA47C3F]
GO
ALTER TABLE [dbo].[ProductVariantDetails] DROP CONSTRAINT [DF__ProductVa__IsDel__7BB05806]
GO
ALTER TABLE [dbo].[ProductVariantDetails] DROP CONSTRAINT [DF__ProductVa__IsAct__7ABC33CD]
GO
ALTER TABLE [dbo].[ProductStock] DROP CONSTRAINT [DF__ProductSt__Reser__1EF99443]
GO
ALTER TABLE [dbo].[ProductPriceHistory] DROP CONSTRAINT [DF__ProductPr__Creat__77AABCF8]
GO
ALTER TABLE [dbo].[ProductImages] DROP CONSTRAINT [DF__ProductIm__Creat__0C70CFB4]
GO
ALTER TABLE [dbo].[ProductImages] DROP CONSTRAINT [DF__ProductIm__IsDel__0B7CAB7B]
GO
ALTER TABLE [dbo].[ProductImages] DROP CONSTRAINT [DF__ProductIm__IsAct__0A888742]
GO
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [DF__Orders__CreatedD__59904A2C]
GO
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [DF__Orders__IsDelete__589C25F3]
GO
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [DF__Orders__IsActive__57A801BA]
GO
ALTER TABLE [dbo].[OrderItems] DROP CONSTRAINT [DF__OrderItem__Creat__56B3DD81]
GO
ALTER TABLE [dbo].[OrderItems] DROP CONSTRAINT [DF__OrderItem__IsDel__55BFB948]
GO
ALTER TABLE [dbo].[OrderItems] DROP CONSTRAINT [DF__OrderItem__IsAct__54CB950F]
GO
ALTER TABLE [dbo].[OfferUsage] DROP CONSTRAINT [DF__OfferUsag__UsedD__6CF8245B]
GO
ALTER TABLE [dbo].[Offers] DROP CONSTRAINT [DF__Offers__CreatedD__34B3CB38]
GO
ALTER TABLE [dbo].[Offers] DROP CONSTRAINT [DF__Offers__CreatedB__33BFA6FF]
GO
ALTER TABLE [dbo].[Offers] DROP CONSTRAINT [DF__Offers__IsDelete__32CB82C6]
GO
ALTER TABLE [dbo].[Offers] DROP CONSTRAINT [DF__Offers__IsActive__31D75E8D]
GO
ALTER TABLE [dbo].[Offers] DROP CONSTRAINT [DF__Offers__Priority__30E33A54]
GO
ALTER TABLE [dbo].[Offers] DROP CONSTRAINT [DF__Offers__AllowWit__2FEF161B]
GO
ALTER TABLE [dbo].[Offers] DROP CONSTRAINT [DF__Offers__IsPrimeO__2EFAF1E2]
GO
ALTER TABLE [dbo].[Offers] DROP CONSTRAINT [DF_Offers_IsPrimeOnly1]
GO
ALTER TABLE [dbo].[Offers] DROP CONSTRAINT [DF__Offers__IsFirstO__2E06CDA9]
GO
ALTER TABLE [dbo].[Offers] DROP CONSTRAINT [DF__Offers__IsCoupon__2D12A970]
GO
ALTER TABLE [dbo].[Inquiries] DROP CONSTRAINT [DF__Inquiries__Creat__53D770D6]
GO
ALTER TABLE [dbo].[Inquiries] DROP CONSTRAINT [DF__Inquiries__IsDel__52E34C9D]
GO
ALTER TABLE [dbo].[Inquiries] DROP CONSTRAINT [DF__Inquiries__IsAct__51EF2864]
GO
ALTER TABLE [dbo].[ForgetPassword] DROP CONSTRAINT [DF__ForgetPas__IsUse__6B44E613]
GO
ALTER TABLE [dbo].[ForgetPassword] DROP CONSTRAINT [DF__ForgetPas__Creat__6A50C1DA]
GO
ALTER TABLE [dbo].[Coupons] DROP CONSTRAINT [DF__Coupons__Created__50FB042B]
GO
ALTER TABLE [dbo].[Coupons] DROP CONSTRAINT [DF__Coupons__IsDelet__5006DFF2]
GO
ALTER TABLE [dbo].[Coupons] DROP CONSTRAINT [DF__Coupons__IsActiv__4F12BBB9]
GO
ALTER TABLE [dbo].[CollectionMapping] DROP CONSTRAINT [DF__Collectio__Displ__37C5420D]
GO
ALTER TABLE [dbo].[Collection] DROP CONSTRAINT [DF__Collectio__Creat__34E8D562]
GO
ALTER TABLE [dbo].[Collection] DROP CONSTRAINT [DF__Collectio__IsAct__33F4B129]
GO
ALTER TABLE [dbo].[Collection] DROP CONSTRAINT [DF__Collectio__Displ__33008CF0]
GO
ALTER TABLE [dbo].[Category] DROP CONSTRAINT [DF__Category__Create__7E22B05D]
GO
ALTER TABLE [dbo].[Category] DROP CONSTRAINT [DF__Category__IsDele__7D2E8C24]
GO
ALTER TABLE [dbo].[Category] DROP CONSTRAINT [DF__Category__IsActi__7C3A67EB]
GO
ALTER TABLE [dbo].[Cart] DROP CONSTRAINT [DF__Cart__CreatedDat__4B422AD5]
GO
ALTER TABLE [dbo].[Cart] DROP CONSTRAINT [DF__Cart__IsDeleted__4A4E069C]
GO
ALTER TABLE [dbo].[Cart] DROP CONSTRAINT [DF__Cart__IsActive__4959E263]
GO
ALTER TABLE [dbo].[AttributeValue] DROP CONSTRAINT [DF__Attribute__Creat__6C6E1476]
GO
ALTER TABLE [dbo].[AttributeValue] DROP CONSTRAINT [DF__Attribute__IsDel__6B79F03D]
GO
ALTER TABLE [dbo].[AttributeValue] DROP CONSTRAINT [DF__Attribute__IsAct__6A85CC04]
GO
ALTER TABLE [dbo].[Attribute] DROP CONSTRAINT [DF__Attribute__Creat__758D6A5C]
GO
ALTER TABLE [dbo].[Attribute] DROP CONSTRAINT [DF__Attribute__IsDel__74994623]
GO
ALTER TABLE [dbo].[Attribute] DROP CONSTRAINT [DF__Attribute__IsAct__73A521EA]
GO
/****** Object:  Index [UQ__Users__C9F28456A5D9BA6B]    Script Date: 02-06-2026 12:08:34 ******/
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [UQ__Users__C9F28456A5D9BA6B]
GO
/****** Object:  Index [UQ__Roles__8A2B61600C9DCEB3]    Script Date: 02-06-2026 12:08:34 ******/
ALTER TABLE [dbo].[Roles] DROP CONSTRAINT [UQ__Roles__8A2B61600C9DCEB3]
GO
/****** Object:  Table [dbo].[WishlistCustomer]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WishlistCustomer]') AND type in (N'U'))
DROP TABLE [dbo].[WishlistCustomer]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[User_ForgetPassword]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_ForgetPassword]') AND type in (N'U'))
DROP TABLE [dbo].[User_ForgetPassword]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Roles]') AND type in (N'U'))
DROP TABLE [dbo].[Roles]
GO
/****** Object:  Table [dbo].[RolePermissions]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RolePermissions]') AND type in (N'U'))
DROP TABLE [dbo].[RolePermissions]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reviews]') AND type in (N'U'))
DROP TABLE [dbo].[Reviews]
GO
/****** Object:  Table [dbo].[ProductVariantMapping]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductVariantMapping]') AND type in (N'U'))
DROP TABLE [dbo].[ProductVariantMapping]
GO
/****** Object:  Table [dbo].[ProductVariantDetails]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductVariantDetails]') AND type in (N'U'))
DROP TABLE [dbo].[ProductVariantDetails]
GO
/****** Object:  Table [dbo].[ProductStockHistory]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductStockHistory]') AND type in (N'U'))
DROP TABLE [dbo].[ProductStockHistory]
GO
/****** Object:  Table [dbo].[ProductStock]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductStock]') AND type in (N'U'))
DROP TABLE [dbo].[ProductStock]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
DROP TABLE [dbo].[Products]
GO
/****** Object:  Table [dbo].[ProductPriceHistory]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductPriceHistory]') AND type in (N'U'))
DROP TABLE [dbo].[ProductPriceHistory]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductImages]') AND type in (N'U'))
DROP TABLE [dbo].[ProductImages]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
DROP TABLE [dbo].[Orders]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderItems]') AND type in (N'U'))
DROP TABLE [dbo].[OrderItems]
GO
/****** Object:  Table [dbo].[OfferUsage]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OfferUsage]') AND type in (N'U'))
DROP TABLE [dbo].[OfferUsage]
GO
/****** Object:  Table [dbo].[Offers]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Offers]') AND type in (N'U'))
DROP TABLE [dbo].[Offers]
GO
/****** Object:  Table [dbo].[OfferConditions]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OfferConditions]') AND type in (N'U'))
DROP TABLE [dbo].[OfferConditions]
GO
/****** Object:  Table [dbo].[OfferBenefits]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OfferBenefits]') AND type in (N'U'))
DROP TABLE [dbo].[OfferBenefits]
GO
/****** Object:  Table [dbo].[OfferApplicability]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OfferApplicability]') AND type in (N'U'))
DROP TABLE [dbo].[OfferApplicability]
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Menus]') AND type in (N'U'))
DROP TABLE [dbo].[Menus]
GO
/****** Object:  Table [dbo].[LOV_MASTER]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LOV_MASTER]') AND type in (N'U'))
DROP TABLE [dbo].[LOV_MASTER]
GO
/****** Object:  Table [dbo].[InquiryStatusHistory]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InquiryStatusHistory]') AND type in (N'U'))
DROP TABLE [dbo].[InquiryStatusHistory]
GO
/****** Object:  Table [dbo].[InquiryReplies]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InquiryReplies]') AND type in (N'U'))
DROP TABLE [dbo].[InquiryReplies]
GO
/****** Object:  Table [dbo].[Inquiries]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Inquiries]') AND type in (N'U'))
DROP TABLE [dbo].[Inquiries]
GO
/****** Object:  Table [dbo].[HomePageComponentItem]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HomePageComponentItem]') AND type in (N'U'))
DROP TABLE [dbo].[HomePageComponentItem]
GO
/****** Object:  Table [dbo].[HomePageComponent]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HomePageComponent]') AND type in (N'U'))
DROP TABLE [dbo].[HomePageComponent]
GO
/****** Object:  Table [dbo].[ForgetPassword]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ForgetPassword]') AND type in (N'U'))
DROP TABLE [dbo].[ForgetPassword]
GO
/****** Object:  Table [dbo].[CustomerCart]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerCart]') AND type in (N'U'))
DROP TABLE [dbo].[CustomerCart]
GO
/****** Object:  Table [dbo].[CustomerAddress]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerAddress]') AND type in (N'U'))
DROP TABLE [dbo].[CustomerAddress]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
DROP TABLE [dbo].[Customer]
GO
/****** Object:  Table [dbo].[Coupons]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Coupons]') AND type in (N'U'))
DROP TABLE [dbo].[Coupons]
GO
/****** Object:  Table [dbo].[CollectionMapping]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CollectionMapping]') AND type in (N'U'))
DROP TABLE [dbo].[CollectionMapping]
GO
/****** Object:  Table [dbo].[Collection]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Collection]') AND type in (N'U'))
DROP TABLE [dbo].[Collection]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cart]') AND type in (N'U'))
DROP TABLE [dbo].[Cart]
GO
/****** Object:  Table [dbo].[AttributeValue]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AttributeValue]') AND type in (N'U'))
DROP TABLE [dbo].[AttributeValue]
GO
/****** Object:  Table [dbo].[Attribute]    Script Date: 02-06-2026 12:08:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Attribute]') AND type in (N'U'))
DROP TABLE [dbo].[Attribute]
GO
/****** Object:  View [padhyaso_admin].[VW_Products]    Script Date: 02-06-2026 12:08:34 ******/
DROP VIEW [padhyaso_admin].[VW_Products]
GO
/****** Object:  UserDefinedFunction [dbo].[GenerateUniqueCategorySKU_New]    Script Date: 02-06-2026 12:08:34 ******/
DROP FUNCTION [dbo].[GenerateUniqueCategorySKU_New]
GO
/****** Object:  UserDefinedFunction [dbo].[GenerateUniqueCategorySKU_New]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GenerateUniqueCategorySKU_New]
(
    @CategoryName VARCHAR(100),
    @ParentCategoryId INT = NULL
)
RETURNS VARCHAR(100)
AS
BEGIN
    DECLARE 
        @ParentName VARCHAR(100),
        @CategoryCode VARCHAR(10),
        @ParentCode VARCHAR(10),
        @BaseSKU VARCHAR(100),
        @FinalSKU VARCHAR(100),
        @Counter INT = 1;

    -- Get Parent Name
    SELECT @ParentName = CategoryName
    FROM Category
    WHERE Id = @ParentCategoryId;

    -- Create Codes
    SET @CategoryCode = UPPER(LEFT(REPLACE(@CategoryName,' ',''),3));
    SET @ParentCode = UPPER(LEFT(REPLACE(ISNULL(@ParentName,''),' ',''),3));

    -- Base SKU
    IF @ParentCategoryId IS NULL
        SET @BaseSKU = @CategoryCode;
    ELSE
        SET @BaseSKU = @ParentCode + '-' + @CategoryCode;

    SET @FinalSKU = @BaseSKU;

    -- Ensure uniqueness
    WHILE EXISTS (SELECT 1 FROM Category WHERE SKU = @FinalSKU)
    BEGIN
        SET @FinalSKU = @BaseSKU + '-' + CAST(@Counter AS VARCHAR);
        SET @Counter = @Counter + 1;
    END

    RETURN @FinalSKU;
END;
GO
/****** Object:  View [padhyaso_admin].[VW_Products]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [padhyaso_admin].[VW_Products]
AS
SELECT TOP (100) PERCENT X.Id AS ProductId, X.ProductDescription, PVM.Id AS VarientId, X.ProductName, C.Id AS CategoryId, C.CategoryName, C.ParentCategoryId, STRING_AGG(AV.Value, ', ') AS VariantAttributeValues_Only, 
                  STRING_AGG(A.Name + ' : ' + AV.Value, ', ') AS VariantAttributes, PVM.SKU, PVM.Price, PI.ImagePath, ISNULL(PS.TotalAvailableStock, 0) AS TotalAvailableStock
FROM     dbo.Products AS X LEFT OUTER JOIN
                  dbo.Category AS C ON C.Id = X.CategoryId INNER JOIN
                  dbo.ProductVariantMapping AS PVM ON PVM.ProductId = X.Id LEFT OUTER JOIN
                  dbo.ProductVariantDetails AS PVD ON PVD.VariantId = PVM.Id LEFT OUTER JOIN
                  dbo.Attribute AS A ON A.Id = PVD.AttributeId LEFT OUTER JOIN
                  dbo.AttributeValue AS AV ON AV.Id = PVD.AttributeValueId LEFT OUTER JOIN
                  dbo.ProductImages AS PI ON PI.ProductId = X.Id AND PI.VariantId = PVM.Id LEFT OUTER JOIN
                      (SELECT VariantId, SUM(ISNULL(AvailableStock, 0)) - SUM(ISNULL(ReservedStock, 0)) AS TotalAvailableStock
                       FROM      dbo.ProductStock
                       GROUP BY VariantId) AS PS ON PS.VariantId = PVM.Id
WHERE  (X.IsActive = 1) AND (PVM.IsActive = 1) AND (C.IsActive = 1) AND (X.IsDeleted = 0)
GROUP BY X.Id, X.ProductName, X.ProductDescription, C.Id, C.CategoryName, PVM.Id, PVM.ProductId, PVM.SKU, PVM.Price, PI.ImagePath, PS.TotalAvailableStock, C.ParentCategoryId
ORDER BY X.ProductName, C.CategoryName
GO
/****** Object:  Table [dbo].[Attribute]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attribute](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[DisplayName] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__Attribut__3214EC078348DF99] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AttributeValue]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttributeValue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AttributeId] [int] NULL,
	[Value] [nvarchar](150) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[VariantId] [int] NULL,
	[Quantity] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](150) NOT NULL,
	[ParentCategoryId] [int] NOT NULL,
	[ImagePath] [nvarchar](500) NULL,
	[SKU] [nvarchar](500) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__Category__3214EC07F470A8FF] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Collection]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Collection](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[ParentCollectionId] [bigint] NULL,
	[Description] [nvarchar](max) NULL,
	[BannerImage] [nvarchar](500) NULL,
	[Priority] [char](1) NULL,
	[DisplayOrder] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CollectionMapping]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CollectionMapping](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CollectionId] [bigint] NOT NULL,
	[ReferenceId] [bigint] NOT NULL,
	[ReferenceType] [varchar](20) NOT NULL,
	[DisplayOrder] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coupons]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coupons](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CouponCode] [nvarchar](50) NULL,
	[DiscountType] [nvarchar](20) NULL,
	[DiscountValue] [decimal](18, 2) NULL,
	[MinimumOrderAmount] [decimal](18, 2) NULL,
	[ExpiryDate] [datetime] NULL,
	[UsageLimit] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Coupons] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NOT NULL,
	[MobileNo] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](500) NULL,
	[DateOfBirth] [date] NULL,
	[Gender] [nvarchar](20) NULL,
	[AddressLine1] [nvarchar](200) NULL,
	[AddressLine2] [nvarchar](200) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[Country] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__Customer__3214EC0730886038] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerAddress]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerAddress](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[AddressLine1] [nvarchar](200) NOT NULL,
	[AddressLine2] [nvarchar](200) NULL,
	[City] [nvarchar](100) NOT NULL,
	[State] [nvarchar](100) NOT NULL,
	[PostalCode] [nvarchar](20) NOT NULL,
	[Country] [nvarchar](100) NOT NULL,
	[IsDefault] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[AddressType] [nvarchar](50) NULL,
	[MobileNo] [varchar](15) NULL,
	[AlternativeMobileNo] [varchar](15) NULL,
	[CustomerName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerCart]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerCart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[ProductId] [int] NULL,
	[VariantId] [int] NULL,
	[AttributeId] [varchar](max) NULL,
	[Quantity] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__Customer__3214EC07BBC128C3] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ForgetPassword]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ForgetPassword](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](256) NOT NULL,
	[OTP] [nvarchar](10) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[ExpiryDate] [datetime] NULL,
	[IsUsed] [bit] NOT NULL,
 CONSTRAINT [PK__ForgetPa__3214EC07FF297A4A] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomePageComponent]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomePageComponent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [varchar](100) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__HomePage__3214EC07CB66197D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomePageComponentItem]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomePageComponentItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ComponentId] [int] NULL,
	[Title] [varchar](200) NULL,
	[Subtitle] [varchar](200) NULL,
	[Description] [varchar](max) NULL,
	[ImagePath] [varchar](500) NULL,
	[RedirectUrl] [varchar](500) NULL,
	[RefId] [varchar](500) NULL,
	[RefType] [varchar](50) NULL,
	[DisplayOrder] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inquiries]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inquiries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[ProductId] [int] NULL,
	[Name] [varchar](max) NULL,
	[Email] [varchar](max) NULL,
	[PhoneNo] [varchar](10) NULL,
	[Subject] [nvarchar](200) NULL,
	[Message] [nvarchar](max) NULL,
	[Status] [nvarchar](50) NULL,
	[Inquiry_Date] [datetime2](7) NULL,
	[AdminReply] [nvarchar](max) NULL,
	[Replied_Date] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Inquiries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InquiryReplies]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InquiryReplies](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[InquiryId] [bigint] NULL,
	[ReplyBy] [bigint] NULL,
	[ReplyMessage] [nvarchar](max) NULL,
	[ReplyDate] [datetime2](7) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InquiryStatusHistory]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InquiryStatusHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[InquiryId] [bigint] NOT NULL,
	[OldStatus] [nvarchar](20) NULL,
	[NewStatus] [nvarchar](20) NULL,
	[Remarks] [nvarchar](500) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOV_MASTER]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOV_MASTER](
	[LOV_Column] [nvarchar](max) NOT NULL,
	[LOV_Code] [nvarchar](max) NOT NULL,
	[LOV_Desc] [nvarchar](max) NOT NULL,
	[DisplayOrder] [int] NULL,
	[CreatedBy] [bigint] NULL,
	[LastModifiedBy] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedDate] [datetime] NULL,
	[Display_Text] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NOT NULL,
	[Area] [nvarchar](100) NULL,
	[Controller] [nvarchar](100) NULL,
	[Url] [nvarchar](250) NULL,
	[Name] [nvarchar](150) NULL,
	[Icon] [nvarchar](150) NULL,
	[DisplayOrder] [int] NULL,
	[SuperAdmin] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Menus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OfferApplicability]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfferApplicability](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OfferId] [bigint] NULL,
	[ProductId] [bigint] NULL,
	[VariantId] [bigint] NULL,
	[CategoryId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OfferBenefits]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfferBenefits](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OfferId] [bigint] NULL,
	[BenefitType] [varchar](50) NULL,
	[Value] [decimal](18, 2) NULL,
	[FreeProductId] [bigint] NULL,
	[FreeQty] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OfferConditions]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfferConditions](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OfferId] [bigint] NULL,
	[ConditionType] [varchar](50) NULL,
	[ConditionValue] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offers]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offers](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OfferName] [nvarchar](200) NULL,
	[OfferType] [varchar](50) NULL,
	[DiscountType] [varchar](20) NULL,
	[DiscountValue] [decimal](18, 2) NULL,
	[MaxDiscountAmount] [decimal](18, 2) NULL,
	[MinOrderAmount] [decimal](18, 2) NULL,
	[MinQty] [int] NULL,
	[IsCouponRequired] [bit] NULL,
	[CouponCode] [nvarchar](50) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[StartTime] [time](7) NULL,
	[EndTime] [time](7) NULL,
	[MaxUsage] [int] NULL,
	[PerUserUsage] [int] NULL,
	[IsFirstOrderOnly] [bit] NULL,
	[IsAutoApply] [bit] NULL,
	[IsPrimeOnly] [bit] NULL,
	[AllowWithOtherOffers] [bit] NULL,
	[Priority] [int] NULL,
	[Remarks] [nvarchar](1000) NULL,
	[ApplyOnly_Category] [nvarchar](500) NULL,
	[ApplyOnly_Product] [nvarchar](500) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__Offers__3214EC07B4785A29] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OfferUsage]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfferUsage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OfferId] [int] NOT NULL,
	[RefType] [nvarchar](10) NOT NULL,
	[RefId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[UsedDate] [datetime] NOT NULL,
	[FinalDiscount] [decimal](18, 2) NULL,
 CONSTRAINT [PK__OfferUsa__3214EC07C007C3B1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NULL,
	[VariantId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[OrderNumber] [nvarchar](50) NULL,
	[OrderDate] [datetime2](7) NULL,
	[TotalAmount] [decimal](18, 2) NULL,
	[DiscountAmount] [decimal](18, 2) NULL,
	[FinalAmount] [decimal](18, 2) NULL,
	[OrderStatus] [nvarchar](50) NULL,
	[PaymentStatus] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[VariantId] [int] NOT NULL,
	[ImagePath] [nvarchar](500) NOT NULL,
	[IsPrimary] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__ProductI__3214EC0750FC14FC] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductPriceHistory]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductPriceHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[VariantId] [int] NULL,
	[Price] [decimal](18, 2) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NULL,
	[ProductName] [nvarchar](200) NULL,
	[ProductDescription] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductStock]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductStock](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[VariantId] [int] NOT NULL,
	[AvailableStock] [int] NOT NULL,
	[ReservedStock] [int] NOT NULL,
	[TotalStock]  AS ([AvailableStock]-[ReservedStock]),
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductStockHistory]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductStockHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[VariantId] [int] NOT NULL,
	[ChangeType] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ReferenceId] [int] NULL,
	[ReferenceType] [nvarchar](50) NULL,
	[Remarks] [nvarchar](200) NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductVariantDetails]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductVariantDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VariantId] [int] NULL,
	[AttributeId] [int] NULL,
	[AttributeValueId] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductVariantMapping]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductVariantMapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[SKU] [nvarchar](100) NULL,
	[Price] [decimal](18, 2) NULL,
	[StockQuantity] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[UserId] [int] NULL,
	[Rating] [int] NULL,
	[ReviewText] [nvarchar](max) NULL,
	[IsApproved] [bit] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolePermissions]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolePermissions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NULL,
	[ActionId] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_ForgetPassword]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_ForgetPassword](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](256) NOT NULL,
	[OTP] [nvarchar](10) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[ExpiryDate] [datetime] NULL,
	[IsUsed] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[UserName] [nvarchar](150) NULL,
	[Password] [nvarchar](255) NULL,
	[RoleId] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[Email] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WishlistCustomer]    Script Date: 02-06-2026 12:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WishlistCustomer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[ProductId] [int] NULL,
	[VariantId] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Attribute] ON 
GO
INSERT [dbo].[Attribute] ([Id], [Name], [DisplayName], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, N'GoldType', N'Gold Type', 1, 0, 1, CAST(N'2026-03-13T15:53:34.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Attribute] ([Id], [Name], [DisplayName], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2, N'Stone', N'Stone', 1, 0, 1, CAST(N'2026-03-13T15:53:34.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Attribute] ([Id], [Name], [DisplayName], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3, N'Size', N'Size', 1, 0, 1, CAST(N'2026-03-13T15:53:34.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Attribute] ([Id], [Name], [DisplayName], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (4, N'Color', N'Color', 1, 0, 1, CAST(N'2026-03-13T15:53:34.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Attribute] ([Id], [Name], [DisplayName], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (5, N'Gender', N'Gender', 1, 0, 1, CAST(N'2026-03-13T15:53:34.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Attribute] ([Id], [Name], [DisplayName], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (6, N'Attribute-1', N'Attribute-1', 0, 1, 1, CAST(N'2026-03-13T16:23:02.860' AS DateTime), 1, CAST(N'2026-03-13T16:31:19.260' AS DateTime))
GO
INSERT [dbo].[Attribute] ([Id], [Name], [DisplayName], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (7, N'Attribute-2', N'Attribute-2', 0, 1, 1, CAST(N'2026-03-13T16:26:56.410' AS DateTime), 1, CAST(N'2026-03-13T16:30:20.860' AS DateTime))
GO
INSERT [dbo].[Attribute] ([Id], [Name], [DisplayName], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (8, N'Attribute-1', N'Attribute-1', 1, 0, 1, CAST(N'2026-03-13T18:03:45.180' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Attribute] ([Id], [Name], [DisplayName], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (9, N'Skyler Garrett', N'Rae Howe', 0, 1, 2, CAST(N'2026-03-18T09:24:22.297' AS DateTime), 2, CAST(N'2026-03-18T09:24:37.390' AS DateTime))
GO
INSERT [dbo].[Attribute] ([Id], [Name], [DisplayName], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (10, N'Material', N'', 0, 1, 1, CAST(N'2026-03-19T17:09:38.917' AS DateTime), 1, CAST(N'2026-03-19T17:14:16.967' AS DateTime))
GO
INSERT [dbo].[Attribute] ([Id], [Name], [DisplayName], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (11, N'Attribute Name Testing', N'Color', 1, 0, 1, CAST(N'2026-05-30T09:58:17.047' AS DateTime), 2, CAST(N'2026-05-30T17:07:33.600' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Attribute] OFF
GO
SET IDENTITY_INSERT [dbo].[AttributeValue] ON 
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, 1, N'18K Gold', 1, 0, 1, CAST(N'2026-03-13T15:53:55.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2, 1, N'22K Gold', 1, 0, 1, CAST(N'2026-03-13T15:53:55.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3, 1, N'Platinum', 1, 0, 1, CAST(N'2026-03-13T15:53:55.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (4, 2, N'Diamond', 1, 0, 1, CAST(N'2026-03-13T15:53:55.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (5, 2, N'Ruby', 1, 0, 1, CAST(N'2026-03-13T15:53:55.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (6, 2, N'Sapphire', 1, 0, 1, CAST(N'2026-03-13T15:53:55.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (7, 2, N'Emerald', 1, 0, 1, CAST(N'2026-03-13T15:53:55.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (8, 3, N'16', 1, 0, 1, CAST(N'2026-03-13T15:53:55.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (9, 3, N'18', 1, 0, 1, CAST(N'2026-03-13T15:53:55.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (10, 3, N'20', 1, 0, 1, CAST(N'2026-03-13T15:53:55.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (11, 4, N'Yellow Gold', 1, 0, 1, CAST(N'2026-03-13T15:53:55.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (12, 4, N'White Gold', 1, 0, 1, CAST(N'2026-03-13T15:53:55.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (13, 4, N'Rose Gold', 1, 0, 1, CAST(N'2026-03-13T15:53:55.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (14, 5, N'Men', 1, 0, 1, CAST(N'2026-03-13T15:53:55.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (15, 5, N'Women', 1, 0, 1, CAST(N'2026-03-13T15:53:55.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (16, 5, N'Unisex', 1, 0, 1, CAST(N'2026-03-13T15:53:55.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (20, 6, N'Value-1', 0, 1, 1, CAST(N'2026-03-13T16:26:28.573' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (21, 6, N'Value-2', 0, 1, 1, CAST(N'2026-03-13T16:26:28.573' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (22, 6, N'Value-3', 0, 1, 1, CAST(N'2026-03-13T16:26:28.573' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (23, 6, N'Value-4', 0, 1, 1, CAST(N'2026-03-13T16:26:28.573' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (24, 7, N'Value-1', 0, 1, 1, CAST(N'2026-03-13T16:26:56.410' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (25, 7, N'Value-2', 0, 1, 1, CAST(N'2026-03-13T16:26:56.410' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (26, 7, N'Value-3', 0, 1, 1, CAST(N'2026-03-13T16:26:56.410' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (27, 7, N'Value-4', 0, 1, 1, CAST(N'2026-03-13T16:26:56.410' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (28, 8, N'Value-1', 1, 0, 1, CAST(N'2026-03-13T18:03:45.180' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (29, 8, N'Value-2', 1, 0, 1, CAST(N'2026-03-13T18:03:45.180' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (30, 8, N'Value-3', 1, 0, 1, CAST(N'2026-03-13T18:03:45.180' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (33, 9, N'Consequatur', 0, 1, 2, CAST(N'2026-03-18T09:24:32.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (34, 9, N'Laborum', 0, 1, 2, CAST(N'2026-03-18T09:24:32.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (35, 9, N'z', 0, 1, 2, CAST(N'2026-03-18T09:24:32.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (44, 10, N'Gold', 0, 1, 1, CAST(N'2026-03-19T17:11:18.647' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (45, 10, N' Silver', 0, 1, 1, CAST(N'2026-03-19T17:11:18.647' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (46, 10, N'Platinum', 0, 1, 1, CAST(N'2026-03-19T17:11:18.647' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (57, 11, N'valuesTesting', 1, 0, 2, CAST(N'2026-05-30T17:07:33.600' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (58, 11, N'valuesTesting', 1, 0, 2, CAST(N'2026-05-30T17:07:33.600' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (59, 11, N'valuesTesting', 1, 0, 2, CAST(N'2026-05-30T17:07:33.600' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (60, 11, N'valuesTesting', 1, 0, 2, CAST(N'2026-05-30T17:07:33.600' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (61, 11, N'valuesTesting', 1, 0, 2, CAST(N'2026-05-30T17:07:33.600' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[AttributeValue] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([Id], [CategoryName], [ParentCategoryId], [ImagePath], [SKU], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, N'Rings', 0, N'/Uploads/Category/e7f78772-eb9b-4748-a5c3-46a8e4d47cd7.jpg', N'-rings', 1, 0, 1, CAST(N'2026-03-13T15:51:10.540' AS DateTime), 2, CAST(N'2026-03-18T15:03:18.047' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [CategoryName], [ParentCategoryId], [ImagePath], [SKU], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2, N'Engagement Rings', 1, N'/Uploads/Category/e4cfc5df-3b3c-4a5c-b2ed-2db8661c3279.png', N'rings-engagement', 1, 0, 1, CAST(N'2026-03-13T15:51:10.540' AS DateTime), 2, CAST(N'2026-03-25T12:43:39.457' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [CategoryName], [ParentCategoryId], [ImagePath], [SKU], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3, N'Wedding Bands', 1, N'/Uploads/Category/50d5d966-6412-4d56-90c8-e12e4a936cae.png', N'rings-wedding-bands-1', 1, 0, 1, CAST(N'2026-03-13T15:51:10.540' AS DateTime), 2, CAST(N'2026-04-04T11:17:41.663' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [CategoryName], [ParentCategoryId], [ImagePath], [SKU], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (4, N'Necklaces', 0, N'/Uploads/Category/3eac9f62-e2f7-48e2-acd5-6e16c059e1ec.jpg', N'-necklaces', 1, 0, 1, CAST(N'2026-03-13T15:51:10.540' AS DateTime), 2, CAST(N'2026-03-18T15:03:08.020' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [CategoryName], [ParentCategoryId], [ImagePath], [SKU], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (5, N'Pendant Necklaces', 4, N'/Uploads/Category/52c185e3-8ea9-4f75-92c7-8e2fbe36550a.png', N'necklaces-pendant-necklaces', 1, 0, 1, CAST(N'2026-03-13T15:51:10.540' AS DateTime), 2, CAST(N'2026-03-25T12:44:20.583' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [CategoryName], [ParentCategoryId], [ImagePath], [SKU], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (6, N'Chain Necklaces', 4, N'/Uploads/Category/fcd0c08d-4e30-4954-b124-01fba8438eb3.png', N'necklaces-chain-necklaces', 1, 0, 1, CAST(N'2026-03-13T15:51:10.540' AS DateTime), 2, CAST(N'2026-03-25T12:42:43.383' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [CategoryName], [ParentCategoryId], [ImagePath], [SKU], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (7, N'Earrings', 0, N'/Uploads/Category/138524e3-5653-408c-95ae-2144c835e313.jpg', N'-earrings', 1, 0, 1, CAST(N'2026-03-13T15:51:10.540' AS DateTime), 2, CAST(N'2026-03-18T15:02:55.087' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [CategoryName], [ParentCategoryId], [ImagePath], [SKU], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (8, N'Stud Earrings', 7, N'/Uploads/Category/2bb04e1a-240c-48a9-a95d-09aff3e61787.jpg', N'earrings-stud-earrings', 1, 0, 1, CAST(N'2026-03-13T15:51:10.540' AS DateTime), 0, CAST(N'2026-04-03T17:36:34.323' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [CategoryName], [ParentCategoryId], [ImagePath], [SKU], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (9, N'Hoop Earrings', 7, N'/Uploads/Category/137c4e8d-9e8f-436a-b4a5-3e71a89ee635.png', N'earrings-hoop-earrings', 1, 0, 1, CAST(N'2026-03-13T15:51:10.540' AS DateTime), 2, CAST(N'2026-03-25T12:43:58.997' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [CategoryName], [ParentCategoryId], [ImagePath], [SKU], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (10, N'Bracelets', 0, N'/Uploads/Category/a22c9227-b9b0-41df-81cb-dd24f13514bb.jpg', N'-bracelets', 1, 0, 1, CAST(N'2026-03-13T15:51:10.540' AS DateTime), 2, CAST(N'2026-03-18T15:02:36.037' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [CategoryName], [ParentCategoryId], [ImagePath], [SKU], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (11, N'Charm Bracelets', 10, N'/Uploads/Category/4de88f1a-c914-4639-81f6-5f9abaf4e716.jpg', N'bracelets-charm-bracelets', 1, 0, 1, CAST(N'2026-03-13T15:51:10.540' AS DateTime), 0, CAST(N'2026-04-03T17:37:23.480' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [CategoryName], [ParentCategoryId], [ImagePath], [SKU], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (12, N'Tennis Bracelets', 10, N'/Uploads/Category/91d12556-0ddb-4baf-813c-53b514fbf9f2.jpg', N'bracelets-tennis-bracelets', 1, 0, 1, CAST(N'2026-03-13T15:51:10.540' AS DateTime), 0, CAST(N'2026-04-03T17:37:45.650' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [CategoryName], [ParentCategoryId], [ImagePath], [SKU], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (13, N'Hiram Nolan', 1, N'/Uploads/Category/3ccfea5a-a57c-4f1a-b0f2-9bcc98a3a411.jpg', NULL, 1, 1, 2, CAST(N'2026-03-18T08:58:47.780' AS DateTime), 2, CAST(N'2026-03-18T08:59:06.720' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [CategoryName], [ParentCategoryId], [ImagePath], [SKU], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (14, N'Ring-101', 1, NULL, N'rings-ring-101', 1, 1, 2, CAST(N'2026-03-18T14:10:19.227' AS DateTime), 2, CAST(N'2026-03-18T14:10:38.373' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Coupons] ON 
GO
INSERT [dbo].[Coupons] ([Id], [CouponCode], [DiscountType], [DiscountValue], [MinimumOrderAmount], [ExpiryDate], [UsageLimit], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, N'1001', N'Flat', CAST(250.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(N'2026-06-29T00:00:00.000' AS DateTime), 1, 1, 0, 2, CAST(N'2026-03-10T19:01:40.257' AS DateTime), 2, CAST(N'2026-05-30T14:40:06.360' AS DateTime))
GO
INSERT [dbo].[Coupons] ([Id], [CouponCode], [DiscountType], [DiscountValue], [MinimumOrderAmount], [ExpiryDate], [UsageLimit], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2, N'CP-1', N'Flat', CAST(1000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(N'2026-03-31T00:00:00.000' AS DateTime), 30, 0, 1, 2, CAST(N'2026-03-13T14:02:06.540' AS DateTime), 2, CAST(N'2026-03-13T14:03:07.420' AS DateTime))
GO
INSERT [dbo].[Coupons] ([Id], [CouponCode], [DiscountType], [DiscountValue], [MinimumOrderAmount], [ExpiryDate], [UsageLimit], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3, N'1002', N'Flat', CAST(1000.00 AS Decimal(18, 2)), CAST(12000.00 AS Decimal(18, 2)), CAST(N'2026-03-28T00:00:00.000' AS DateTime), 120, 1, 0, 2, CAST(N'2026-03-13T14:03:03.227' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Coupons] ([Id], [CouponCode], [DiscountType], [DiscountValue], [MinimumOrderAmount], [ExpiryDate], [UsageLimit], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (5, N'CP-1', N'Flat', CAST(1000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(N'2026-03-25T00:00:00.000' AS DateTime), 24, 1, 0, 0, CAST(N'2026-03-13T18:38:48.587' AS DateTime), 0, CAST(N'2026-03-13T18:40:22.733' AS DateTime))
GO
INSERT [dbo].[Coupons] ([Id], [CouponCode], [DiscountType], [DiscountValue], [MinimumOrderAmount], [ExpiryDate], [UsageLimit], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (6, N'Testing', N'FLAT', CAST(100.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), CAST(N'2026-06-30T09:11:04.197' AS DateTime), 10, 0, 1, 0, CAST(N'2026-05-30T14:44:33.117' AS DateTime), 0, CAST(N'2026-05-30T14:44:59.663' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Coupons] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, N'Amit', N'Sharma', N'amit.sharma@gmail.com', N'9876543210', N'pOOKQSM/foM=', CAST(N'1992-05-12' AS Date), N'Male', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, CAST(N'2026-03-13T16:12:26.337' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2, N'Priya', N'Mehta', N'priya.mehta@gmail.com', N'9898765432', N'pOOKQSM/foM=', CAST(N'1995-08-21' AS Date), N'Female', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, CAST(N'2026-03-13T16:12:26.337' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3, N'Rahul', N'Verma', N'rahul.verma@gmail.com', N'9823456789', N'pOOKQSM/foM=', CAST(N'1990-03-15' AS Date), N'Male', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, CAST(N'2026-03-13T16:12:26.337' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (4, N'Vijay', N'Viajy', N'vijay@gmail.com', N'9182734650', N'pOOKQSM/foM=', CAST(N'1993-11-09' AS Date), N'Female', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, CAST(N'2026-03-13T16:12:26.337' AS DateTime), 4, CAST(N'2026-04-07T11:01:29.780' AS DateTime))
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (5, N'Arjun', N'Patel', N'arjun.patel@gmail.com', N'9865432109', N'pOOKQSM/foM=', CAST(N'1991-07-18' AS Date), N'Male', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, CAST(N'2026-03-13T16:12:26.337' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (6, N'Sneha', N'Reddy', N'sneha.reddy@gmail.com', N'9845678901', N'pOOKQSM/foM=', CAST(N'1996-04-27' AS Date), N'Female', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, CAST(N'2026-03-13T16:12:26.337' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (7, N'Vikram', N'Singh', N'vikram.singh@gmail.com', N'9871234567', N'pOOKQSM/foM=', CAST(N'1989-12-05' AS Date), N'Male', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, CAST(N'2026-03-13T16:12:26.337' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (8, N'Ananya', N'Iyer', N'ananya.iyer@gmail.com', N'9834567890', N'pOOKQSM/foM=', CAST(N'1997-09-14' AS Date), N'Female', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, CAST(N'2026-03-13T16:12:26.337' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (9, N'Rohan', N'Desai', N'rohan.desai@gmail.com', N'9819876543', N'pOOKQSM/foM=', CAST(N'1994-01-30' AS Date), N'Male', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, CAST(N'2026-03-13T16:12:26.337' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (10, N'Kavya', N'Nair', N'kavya.nair@gmail.com', N'9891234567', N'pOOKQSM/foM=', CAST(N'1998-06-11' AS Date), N'Female', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, CAST(N'2026-03-13T16:12:26.337' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (11, N'Elizabeth', N'Beasley', N'gonupovesa@example.com', N'+1 (513) 323-9283', N'k5wV61ccalc=', CAST(N'2001-11-13' AS Date), N'undefined', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, CAST(N'2026-03-14T09:44:51.463' AS DateTime), 2, CAST(N'2026-03-14T10:17:49.943' AS DateTime))
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (12, N'Chiquita', N'Murray', N'zecu@example.com', N'+1 (386) 592-7651', NULL, CAST(N'1981-05-07' AS Date), N'undefined', N'89 Fabien Street', NULL, N'Phoenix', N'Dolores impedit soluta inventore laboris voluptatibus ex amet voluptas placeat velit autem impedit', N'Assumenda nisi sunt', N'Suscipit quis illum est libero', 0, 1, 2, CAST(N'2026-03-14T10:11:49.013' AS DateTime), 2, CAST(N'2026-03-14T10:17:41.330' AS DateTime))
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (13, N'Marah', N'Joyner', N'qohosav@example.com', N'+1 (442) 121-4497', NULL, CAST(N'1998-12-09' AS Date), N'F', N'15 Milton Parkway', N'Number 15', N'Minneapolis', N'Consectetur', N'Dolore cillum sit s', N'Et explicabo', 0, 1, 2, CAST(N'2026-03-18T09:25:15.227' AS DateTime), 2, CAST(N'2026-03-18T09:26:10.017' AS DateTime))
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (14, N'Kaval', N'Patel', N'kavalp377@gmail.com', N'9974249254', N'XD/PADfNCm2KEz5awFK9yg==', CAST(N'1995-06-15' AS Date), N'M', N'123, ABC Street', N'Near XYZ Circle', N'Ahmedabad', N'Gujarat', N'380001', N'India', 1, 0, 0, CAST(N'2026-03-18T14:00:35.093' AS DateTime), NULL, CAST(N'2026-03-20T16:31:12.787' AS DateTime))
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (15, N'Janvi', N'Patel', N'janvi@gmail.com', N'', N'XD/PADfNCm2KEz5awFK9yg==', NULL, N'', N'', N'', N'', N'', N'', N'', 1, 0, 0, CAST(N'2026-03-18T14:35:26.723' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (16, N'vishal', N'gami', N'vishal@gamil.com', N'1234567890', N'k5wV61ccalc=', NULL, N'Male', N'Test Address', N'', N'Ahmedabad', N'Gujarat', N'380001', N'India', 1, 0, 0, CAST(N'2026-03-18T16:11:16.750' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (18, N'Rakesh', N'Patel', N'rakesh@gmail.com', N'', N'bxGgZmaiCY90lM78MFwvhg==', CAST(N'1998-05-15' AS Date), N'Male', N'123 Main Street', N'Near Market Area', N'Ahmedabad', N'Gujarat', N'380001', N'India', 1, 0, 0, CAST(N'2026-03-19T17:30:17.970' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (19, N'Jignesh', N'Patel', N'', N'9456778901', N'bxGgZmaiCY90lM78MFwvhg==', CAST(N'1998-05-15' AS Date), N'Male', N'123 Main Street', N'Near Market Area', N'Ahmedabad', N'Gujarat', N'380001', N'India', 1, 0, 0, CAST(N'2026-03-19T17:31:36.480' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (20, N'kamlesh', N'Patel', N'kamlesh@gmail.com', N'9456778902', N'bxGgZmaiCY90lM78MFwvhg==', CAST(N'1998-05-15' AS Date), N'Male', N'123 Main Street', N'Near Market Area', N'Ahmedabad', N'Gujarat', N'380001', N'India', 1, 0, 0, CAST(N'2026-03-19T17:33:04.967' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (21, N'Vishal', N'Gami', N'vishal@gmail.com', N'', N'cN47iCxGCQMUSOvz95BccQ==', CAST(N'1998-05-15' AS Date), N'Male', N'123 Main Street', N'Near Market Area', N'Ahmedabad', N'Gujarat', N'380001', N'India', 1, 0, 0, CAST(N'2026-03-19T17:57:42.950' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (22, N'Vishal', N'Gami', N'vishal123@gmail.com', N'', N'cN47iCxGCQMUSOvz95BccQ==', NULL, NULL, N'', NULL, N'', N'', N'', N'', 1, 0, 0, CAST(N'2026-03-19T19:02:33.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (23, N'GHK', N'JKJK', N'vmgami@gmail.com', N'8968686868', N'kzvagHDvzDqTZR7iHpoSTA==', NULL, NULL, N'', NULL, N'', N'', N'', N'', 1, 0, 0, CAST(N'2026-03-20T10:54:25.800' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (24, N'Parth', N'Parth', N'admin@gmail.com', N'3645215852', N'tYgbcGc9HM0=', NULL, NULL, N'', NULL, N'', N'', N'', N'', 1, 0, 0, CAST(N'2026-03-20T10:59:34.570' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (25, N'sdfvfsdvsd', N'sdfsdfsf', N'vgdgv@gmail.com', N'5214585256', N'c4tIb2fuwGg=', NULL, NULL, N'', NULL, N'', N'', N'', N'', 1, 0, 0, CAST(N'2026-03-20T11:06:24.377' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (26, N'Sagar', N'Sharma', N'vsiahl@gmail.com', N'9510212154', N'B+SmGHVXsQE=', NULL, NULL, N'', NULL, N'', N'', N'', N'', 1, 0, 0, CAST(N'2026-03-20T11:07:19.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (27, N'Vishal', N'Gami', N'vmgami2001@gmail.com', N'9428011036', N'B+SmGHVXsQE=', NULL, N'M', N'NA', NULL, N'Ahmedabad', N'', N'', N'', 1, 0, 0, CAST(N'2026-03-20T14:52:27.170' AS DateTime), 2, CAST(N'2026-05-29T12:41:11.397' AS DateTime))
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (28, N'Akshay', N'Jani', N'akshayjani9397@gmail.com', N'8155030904', N'IND8V8eAAAc=', NULL, NULL, N'', NULL, N'', N'', N'', N'', 1, 0, 0, CAST(N'2026-04-02T11:03:13.877' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (29, N'fsddsfsd', N'asccdasc', N'dguvfdgf@gmail.com', N'', N'P2jlr+/7Sm8=', NULL, NULL, N'', NULL, N'', N'', N'', N'', 1, 0, 0, CAST(N'2026-04-02T15:15:26.913' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (30, N'GHNBGHNG', N'RTGHFHFGH', N'vfvdfv@gmail.com', N'1456453645', N'P2jlr+/7Sm8=', NULL, NULL, N'', NULL, N'', N'', N'', N'', 1, 0, 0, CAST(N'2026-04-02T15:22:45.040' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (31, N'TestingF', N'TestingL', N'vmgami333@gmail.com', N'9999999999', N'gyCu4yUUyh1aTv1IQ+uNow==', CAST(N'2026-05-30' AS Date), N'M', N'GandhiNagar', N'string', N'string', N'string', N'string', N'string', 1, 0, 0, CAST(N'2026-05-30T11:18:39.213' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (32, N'TestingF', N'TestingL', N'vmgami33@gmail.com', N'8888888888', N'GgBGEA+CEMQ8I/dmaqkQ0A==', CAST(N'2026-05-30' AS Date), N'M', N'GandhiNagar', N'string', N'string', N'string', N'string', N'string', 1, 0, 0, CAST(N'2026-05-30T11:20:19.790' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[CustomerAddress] ON 
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName]) VALUES (1, 1, N'House 1 MG Road', NULL, N'Mumbai', N'Maharashtra', N'400001', N'India', 0, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName]) VALUES (2, 2, N'House 2 MG Road', NULL, N'Mumbai', N'Maharashtra', N'400002', N'India', 1, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName]) VALUES (3, 3, N'House 3 MG Road', NULL, N'Mumbai', N'Maharashtra', N'400003', N'India', 0, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName]) VALUES (4, 4, N'House 4 MG Road', NULL, N'Mumbai', N'Maharashtra', N'400004', N'India', 1, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName]) VALUES (5, 5, N'House 5 MG Road', NULL, N'Mumbai', N'Maharashtra', N'400005', N'India', 0, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName]) VALUES (6, 6, N'House 6 MG Road', NULL, N'Mumbai', N'Maharashtra', N'400006', N'India', 1, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName]) VALUES (7, 7, N'House 7 MG Road', NULL, N'Mumbai', N'Maharashtra', N'400007', N'India', 0, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName]) VALUES (8, 8, N'House 8 MG Road', NULL, N'Mumbai', N'Maharashtra', N'400008', N'India', 1, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName]) VALUES (9, 9, N'House 9 MG Road', NULL, N'Mumbai', N'Maharashtra', N'400009', N'India', 0, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName]) VALUES (10, 10, N'House 10 MG Road', NULL, N'Mumbai', N'Maharashtra', N'400010', N'India', 1, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName]) VALUES (11, 1, N'Flat 1 Residency', NULL, N'Pune', N'Maharashtra', N'411001', N'India', 0, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName]) VALUES (12, 2, N'Flat 2 Residency', NULL, N'Pune', N'Maharashtra', N'411002', N'India', 0, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName]) VALUES (13, 3, N'Flat 3 Residency', NULL, N'Pune', N'Maharashtra', N'411003', N'India', 0, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName]) VALUES (14, 4, N'Flat 4 Residency', NULL, N'Pune', N'Maharashtra', N'411004', N'India', 0, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName]) VALUES (15, 5, N'Flat 5 Residency', NULL, N'Pune', N'Maharashtra', N'411005', N'India', 0, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName]) VALUES (16, 6, N'Flat 6 Residency', NULL, N'Pune', N'Maharashtra', N'411006', N'India', 0, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName]) VALUES (17, 7, N'Flat 7 Residency', NULL, N'Pune', N'Maharashtra', N'411007', N'India', 0, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName]) VALUES (18, 8, N'Flat 8 Residency', NULL, N'Pune', N'Maharashtra', N'411008', N'India', 0, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName]) VALUES (19, 9, N'Flat 9 Residency', NULL, N'Pune', N'Maharashtra', N'411009', N'India', 0, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName]) VALUES (20, 10, N'Flat 10 Residency', NULL, N'Pune', N'Maharashtra', N'411010', N'India', 0, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName]) VALUES (21, 11, N'', NULL, N'', N'', N'0', N'', 1, 1, 0, 0, CAST(N'2026-03-14T09:44:51.463' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName]) VALUES (28, 27, N'Sector 5', N'dgfrg', N'Gandhinagar', N'Gujrat', N'363425', N'India', 0, 1, 0, 27, CAST(N'2026-04-03T14:19:06.917' AS DateTime), 27, CAST(N'2026-04-03T14:40:14.630' AS DateTime), N'home', N'2552425426', NULL, N'Demo 305')
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName]) VALUES (29, 27, N'Sector 5Shipping', N'noShipping', N'SuratShipping', N'GujratShipping', N'888888', N'IndiaShipping', 0, 1, 0, 27, CAST(N'2026-04-03T14:21:56.783' AS DateTime), 27, CAST(N'2026-04-03T14:44:32.090' AS DateTime), N'shipping', N'8888888888', NULL, N'vishaljjsjbhShipping')
GO
SET IDENTITY_INSERT [dbo].[CustomerAddress] OFF
GO
SET IDENTITY_INSERT [dbo].[CustomerCart] ON 
GO
INSERT [dbo].[CustomerCart] ([Id], [CustomerId], [ProductId], [VariantId], [AttributeId], [Quantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (226, 27, 25, 105, NULL, 2, 1, 0, 27, CAST(N'2026-05-30T14:55:38.723' AS DateTime), NULL, CAST(N'2026-06-01T11:51:21.557' AS DateTime))
GO
INSERT [dbo].[CustomerCart] ([Id], [CustomerId], [ProductId], [VariantId], [AttributeId], [Quantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (227, 27, 2, 2, NULL, 1, 1, 0, 27, CAST(N'2026-05-30T14:55:49.020' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[CustomerCart] ([Id], [CustomerId], [ProductId], [VariantId], [AttributeId], [Quantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (228, 27, 2, 82, NULL, 1, 1, 0, 27, CAST(N'2026-05-30T14:55:55.230' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[CustomerCart] ([Id], [CustomerId], [ProductId], [VariantId], [AttributeId], [Quantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (229, 27, 22, 22, NULL, 1, 1, 0, 27, CAST(N'2026-05-30T18:16:44.160' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[CustomerCart] ([Id], [CustomerId], [ProductId], [VariantId], [AttributeId], [Quantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (230, 27, 11, 91, NULL, 1, 1, 0, 27, CAST(N'2026-06-01T12:22:09.823' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[CustomerCart] OFF
GO
SET IDENTITY_INSERT [dbo].[ForgetPassword] ON 
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (1, N'kavalp377@gmail.com', N'412392', CAST(N'2026-03-19T12:38:15.013' AS DateTime), CAST(N'2026-03-19T12:48:15.013' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (2, N'kavalp377@gmail.com', N'393766', CAST(N'2026-03-19T12:55:44.220' AS DateTime), CAST(N'2026-03-19T13:05:44.220' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (3, N'kavalp377@gmail.com', N'517465', CAST(N'2026-03-19T12:56:35.353' AS DateTime), CAST(N'2026-03-19T13:06:35.353' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (4, N'kavalp377@gmail.com', N'982274', CAST(N'2026-03-19T12:57:51.400' AS DateTime), CAST(N'2026-03-19T13:07:51.400' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (5, N'kavalp377@gmail.com', N'743337', CAST(N'2026-03-19T13:17:05.720' AS DateTime), CAST(N'2026-03-19T13:27:05.720' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (6, N'kavalp377@gmail.com', N'705181', CAST(N'2026-03-19T13:21:25.280' AS DateTime), CAST(N'2026-03-19T13:31:25.280' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (7, N'kavalp377@gmail.com', N'758323', CAST(N'2026-03-19T13:21:43.580' AS DateTime), CAST(N'2026-03-19T13:31:43.580' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (8, N'vmgami2001@gmail.com', N'501164', CAST(N'2026-03-20T14:54:05.937' AS DateTime), CAST(N'2026-03-20T15:04:05.937' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (9, N'vmgami2001@gmail.com', N'376033', CAST(N'2026-03-20T14:56:59.037' AS DateTime), CAST(N'2026-03-20T15:06:59.037' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (10, N'vmgami2001@gmail.com', N'179457', CAST(N'2026-03-20T14:58:05.670' AS DateTime), CAST(N'2026-03-20T15:08:05.670' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (11, N'vmgami2001@gmail.com', N'251804', CAST(N'2026-03-20T14:58:31.857' AS DateTime), CAST(N'2026-03-20T15:08:31.857' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (12, N'vmgami2001@gmail.com', N'175686', CAST(N'2026-03-20T14:58:35.727' AS DateTime), CAST(N'2026-03-20T15:08:35.727' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (13, N'kavalp377@gmail.com', N'794325', CAST(N'2026-03-20T14:59:15.617' AS DateTime), CAST(N'2026-03-20T15:09:15.617' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (14, N'kavalp377@gmail.com', N'770412', CAST(N'2026-03-20T15:04:20.137' AS DateTime), CAST(N'2026-03-20T15:14:20.137' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (15, N'kavalp377@gmail.com', N'192540', CAST(N'2026-03-20T15:07:56.913' AS DateTime), CAST(N'2026-03-20T15:17:56.913' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (16, N'kavalp377@gmail.com', N'315582', CAST(N'2026-03-20T15:09:22.390' AS DateTime), CAST(N'2026-03-20T15:19:22.390' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (17, N'vmgami2001@gmail.com', N'515676', CAST(N'2026-03-20T15:11:10.320' AS DateTime), CAST(N'2026-03-20T15:21:10.320' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (18, N'vmgami2001@gmail.com', N'264448', CAST(N'2026-03-20T15:20:58.860' AS DateTime), CAST(N'2026-03-20T15:30:58.860' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (19, N'vmgami2001@gmail.com', N'798826', CAST(N'2026-03-20T15:25:42.667' AS DateTime), CAST(N'2026-03-20T15:35:42.667' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (20, N'vmgami2001@gmail.com', N'350193', CAST(N'2026-03-20T15:28:46.727' AS DateTime), CAST(N'2026-03-20T15:38:46.727' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (21, N'kavalp377@gmail.com', N'935123', CAST(N'2026-03-20T16:32:03.257' AS DateTime), CAST(N'2026-03-20T16:42:03.257' AS DateTime), 0)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (22, N'vmgami2001@gmail.com', N'520713', CAST(N'2026-03-30T12:25:08.030' AS DateTime), CAST(N'2026-03-30T12:35:08.030' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (23, N'vmgami2001@gmail.com', N'690962', CAST(N'2026-03-31T16:25:47.660' AS DateTime), CAST(N'2026-03-31T16:35:47.660' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (24, N'vmgami2001@gmail.com', N'816550', CAST(N'2026-03-31T16:28:33.120' AS DateTime), CAST(N'2026-03-31T16:38:33.120' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (25, N'vmgami2001@gmail.com', N'439258', CAST(N'2026-04-01T11:44:52.510' AS DateTime), CAST(N'2026-04-01T11:54:52.510' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (26, N'vmgami2001@gmail.com', N'199580', CAST(N'2026-04-01T11:45:45.533' AS DateTime), CAST(N'2026-04-01T11:55:45.533' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (27, N'vmgami2001@gmail.com', N'901327', CAST(N'2026-04-01T11:46:47.383' AS DateTime), CAST(N'2026-04-01T11:56:47.383' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (28, N'vmgami2001@gmail.com', N'779251', CAST(N'2026-04-06T18:19:03.643' AS DateTime), CAST(N'2026-04-06T18:29:03.643' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (29, N'vmgami2001@gmail.com', N'919024', CAST(N'2026-04-06T18:28:39.340' AS DateTime), CAST(N'2026-04-06T18:38:39.340' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (30, N'vmgami2001@gmail.com', N'906146', CAST(N'2026-04-06T18:29:32.230' AS DateTime), CAST(N'2026-04-06T18:39:32.230' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (31, N'vmgami2001@gmail.com', N'833212', CAST(N'2026-04-06T18:32:55.563' AS DateTime), CAST(N'2026-04-06T18:42:55.563' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (32, N'vmgami2001@gmail.com', N'958922', CAST(N'2026-05-30T11:20:51.297' AS DateTime), CAST(N'2026-05-30T11:30:51.297' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (33, N'vmgami2001@gmail.com', N'333903', CAST(N'2026-06-02T07:36:57.083' AS DateTime), CAST(N'2026-06-02T07:46:57.083' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (34, N'vmgami2001@gmail.com', N'557769', CAST(N'2026-06-02T07:52:55.247' AS DateTime), CAST(N'2026-06-02T08:02:55.247' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (35, N'vmgami2001@gmail.com', N'806324', CAST(N'2026-06-02T08:01:16.330' AS DateTime), CAST(N'2026-06-02T08:11:16.330' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (36, N'vmgami2001@gmail.com', N'301144', CAST(N'2026-06-02T08:01:37.643' AS DateTime), CAST(N'2026-06-02T08:11:37.643' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (37, N'vmgami2001@gmail.com', N'830960', CAST(N'2026-06-02T08:05:10.957' AS DateTime), CAST(N'2026-06-02T08:15:10.957' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (38, N'vmgami2001@gmail.com', N'852887', CAST(N'2026-06-02T08:06:02.390' AS DateTime), CAST(N'2026-06-02T08:16:02.390' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (39, N'vmgami2001@gmail.com', N'396980', CAST(N'2026-06-02T08:06:59.643' AS DateTime), CAST(N'2026-06-02T08:16:59.643' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (40, N'vmgami2001@gmail.com', N'126379', CAST(N'2026-06-02T09:17:55.820' AS DateTime), CAST(N'2026-06-02T09:27:55.820' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (41, N'vmgami2001@gmail.com', N'896953', CAST(N'2026-06-02T09:19:49.723' AS DateTime), CAST(N'2026-06-02T09:29:49.723' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (42, N'vmgami2001@gmail.com', N'169499', CAST(N'2026-06-02T09:21:18.680' AS DateTime), CAST(N'2026-06-02T09:31:18.680' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (43, N'vmgami2001@gmail.com', N'284595', CAST(N'2026-06-02T09:42:16.873' AS DateTime), CAST(N'2026-06-02T09:52:16.873' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (44, N'vmgami2001@gmail.com', N'609438', CAST(N'2026-06-02T09:43:41.333' AS DateTime), CAST(N'2026-06-02T09:53:41.333' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (45, N'vmgami2001@gmail.com', N'346353', CAST(N'2026-06-02T09:53:36.627' AS DateTime), CAST(N'2026-06-02T10:03:36.627' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[ForgetPassword] OFF
GO
SET IDENTITY_INSERT [dbo].[HomePageComponent] ON 
GO
INSERT [dbo].[HomePageComponent] ([Id], [Key], [Name], [Type], [DisplayOrder], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, N'Hero', N'Hero Banner', N'Banner', 1, 1, 0, 1, CAST(N'2026-03-18T12:56:52.783' AS DateTime), 2, CAST(N'2026-04-08T11:13:07.560' AS DateTime))
GO
INSERT [dbo].[HomePageComponent] ([Id], [Key], [Name], [Type], [DisplayOrder], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2, N'Category', N'Category Section', N'Category', 2, 1, 0, 1, CAST(N'2026-03-18T12:56:52.783' AS DateTime), 2, CAST(N'2026-03-25T12:52:51.470' AS DateTime))
GO
INSERT [dbo].[HomePageComponent] ([Id], [Key], [Name], [Type], [DisplayOrder], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3, N'Trending', N'Trending Products', N'Product', 3, 1, 0, 1, CAST(N'2026-03-18T12:56:52.783' AS DateTime), 0, CAST(N'2026-03-18T16:38:59.623' AS DateTime))
GO
INSERT [dbo].[HomePageComponent] ([Id], [Key], [Name], [Type], [DisplayOrder], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (4, N'NewArrival', N'New Arrivals', N'Product', 4, 1, 0, 1, CAST(N'2026-03-18T12:56:52.783' AS DateTime), 2, CAST(N'2026-03-19T13:16:15.140' AS DateTime))
GO
INSERT [dbo].[HomePageComponent] ([Id], [Key], [Name], [Type], [DisplayOrder], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (5, N'Collection', N'Collections', N'Collection', 5, 0, 0, 1, CAST(N'2026-03-18T12:56:52.783' AS DateTime), 2, CAST(N'2026-03-19T13:22:15.150' AS DateTime))
GO
INSERT [dbo].[HomePageComponent] ([Id], [Key], [Name], [Type], [DisplayOrder], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (6, N'MostOrdered', N'Most Ordered', N'Product', 6, 1, 0, 1, CAST(N'2026-03-18T12:56:52.783' AS DateTime), 1, CAST(N'2026-03-18T12:56:52.783' AS DateTime))
GO
INSERT [dbo].[HomePageComponent] ([Id], [Key], [Name], [Type], [DisplayOrder], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (7, N'Offer', N'Offers Section', N'Offer', 7, 0, 0, 1, CAST(N'2026-03-18T12:56:52.783' AS DateTime), 2, CAST(N'2026-03-18T15:46:07.943' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[HomePageComponent] OFF
GO
SET IDENTITY_INSERT [dbo].[HomePageComponentItem] ON 
GO
INSERT [dbo].[HomePageComponentItem] ([Id], [ComponentId], [Title], [Subtitle], [Description], [ImagePath], [RedirectUrl], [RefId], [RefType], [DisplayOrder], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, 1, N'Test', N'', NULL, N'/Uploads/HomePage/3adaaa9c-954b-48cd-91ad-d8c956b6b105.png', N'/offers', NULL, N'Banner', 1, 1, 0, 1, CAST(N'2026-03-18T12:59:37.903' AS DateTime), 2, CAST(N'2026-04-08T11:13:07.577' AS DateTime))
GO
INSERT [dbo].[HomePageComponentItem] ([Id], [ComponentId], [Title], [Subtitle], [Description], [ImagePath], [RedirectUrl], [RefId], [RefType], [DisplayOrder], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2, 2, N'Top Categories', NULL, NULL, NULL, NULL, N'2,3,5,6', N'Category', NULL, 1, 0, 1, CAST(N'2026-03-18T12:59:37.903' AS DateTime), 2, CAST(N'2026-03-25T12:52:51.470' AS DateTime))
GO
INSERT [dbo].[HomePageComponentItem] ([Id], [ComponentId], [Title], [Subtitle], [Description], [ImagePath], [RedirectUrl], [RefId], [RefType], [DisplayOrder], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3, 3, N'Trending Products', NULL, NULL, NULL, NULL, N'16-16,16-56,16-96,16-128,20-130', N'Product', NULL, 1, 0, 1, CAST(N'2026-03-18T12:59:37.903' AS DateTime), 0, CAST(N'2026-03-18T16:38:59.623' AS DateTime))
GO
INSERT [dbo].[HomePageComponentItem] ([Id], [ComponentId], [Title], [Subtitle], [Description], [ImagePath], [RedirectUrl], [RefId], [RefType], [DisplayOrder], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (4, 4, N'New Arrivals', NULL, NULL, NULL, NULL, N'36-116,33-151,30-135,9-143,28-28', N'Product', NULL, 1, 0, 1, CAST(N'2026-03-18T12:59:37.903' AS DateTime), 2, CAST(N'2026-03-19T13:16:15.157' AS DateTime))
GO
INSERT [dbo].[HomePageComponentItem] ([Id], [ComponentId], [Title], [Subtitle], [Description], [ImagePath], [RedirectUrl], [RefId], [RefType], [DisplayOrder], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (5, 5, N'Collections', NULL, NULL, NULL, NULL, N'1,2,3', N'Collection', NULL, 1, 0, 1, CAST(N'2026-03-18T12:59:37.903' AS DateTime), 1, CAST(N'2026-03-18T12:59:37.903' AS DateTime))
GO
INSERT [dbo].[HomePageComponentItem] ([Id], [ComponentId], [Title], [Subtitle], [Description], [ImagePath], [RedirectUrl], [RefId], [RefType], [DisplayOrder], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (6, 7, N'Offers', NULL, NULL, NULL, NULL, N'1,2,3', N'Offer', NULL, 1, 0, 1, CAST(N'2026-03-18T12:59:37.903' AS DateTime), 1, CAST(N'2026-03-18T12:59:37.903' AS DateTime))
GO
INSERT [dbo].[HomePageComponentItem] ([Id], [ComponentId], [Title], [Subtitle], [Description], [ImagePath], [RedirectUrl], [RefId], [RefType], [DisplayOrder], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (10, 1, N'', N'', NULL, N'/Uploads/HomePage/780fd5fc-7367-4dcd-9470-e21beb5c2c22.png', NULL, NULL, N'Banner', 2, 1, 0, 2, CAST(N'2026-03-24T16:56:55.923' AS DateTime), 2, CAST(N'2026-04-08T11:13:07.577' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[HomePageComponentItem] OFF
GO
SET IDENTITY_INSERT [dbo].[Inquiries] ON 
GO
INSERT [dbo].[Inquiries] ([Id], [UserId], [ProductId], [Name], [Email], [PhoneNo], [Subject], [Message], [Status], [Inquiry_Date], [AdminReply], [Replied_Date], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (5, 2, 102, NULL, NULL, NULL, N'Subject-1', N'How is your product', N'REP', CAST(N'2026-03-13T00:00:00.0000000' AS DateTime2), N'Yes , Blue is not available, Black , Brown and Yellow is available ', CAST(N'2026-03-16T16:37:48.6033333' AS DateTime2), 1, 1, 2, CAST(N'2026-03-13T14:05:25.503' AS DateTime), 0, CAST(N'2026-03-16T16:41:47.347' AS DateTime))
GO
INSERT [dbo].[Inquiries] ([Id], [UserId], [ProductId], [Name], [Email], [PhoneNo], [Subject], [Message], [Status], [Inquiry_Date], [AdminReply], [Replied_Date], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (6, 0, 0, NULL, NULL, NULL, N'Product Availability', N'Is this product available in black color?', N'INP', CAST(N'2026-03-16T16:30:00.0000000' AS DateTime2), N'', CAST(N'2026-03-16T16:51:51.7300000' AS DateTime2), 0, 0, 0, CAST(N'2026-03-16T16:13:17.057' AS DateTime), 2, CAST(N'2026-03-16T16:51:51.730' AS DateTime))
GO
INSERT [dbo].[Inquiries] ([Id], [UserId], [ProductId], [Name], [Email], [PhoneNo], [Subject], [Message], [Status], [Inquiry_Date], [AdminReply], [Replied_Date], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (7, 0, 0, NULL, NULL, NULL, N'Product Availability 1', N'Is this product available in blue color?', N'PEND', CAST(N'2026-03-16T16:20:00.0000000' AS DateTime2), NULL, NULL, 0, 0, 0, CAST(N'2026-03-16T16:26:41.510' AS DateTime), 0, CAST(N'2026-03-16T16:26:41.510' AS DateTime))
GO
INSERT [dbo].[Inquiries] ([Id], [UserId], [ProductId], [Name], [Email], [PhoneNo], [Subject], [Message], [Status], [Inquiry_Date], [AdminReply], [Replied_Date], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (8, 0, 0, NULL, NULL, NULL, N'Product Availability 1', N'Is this product available in blue color?', N'PEND', CAST(N'2026-03-16T16:20:00.0000000' AS DateTime2), NULL, NULL, 0, 0, 0, CAST(N'2026-03-16T16:27:11.163' AS DateTime), 0, CAST(N'2026-03-16T16:27:11.163' AS DateTime))
GO
INSERT [dbo].[Inquiries] ([Id], [UserId], [ProductId], [Name], [Email], [PhoneNo], [Subject], [Message], [Status], [Inquiry_Date], [AdminReply], [Replied_Date], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (9, 0, 0, NULL, NULL, NULL, N'Product Availability 1', N'Is this product available in blue color?', N'PEND', CAST(N'2026-03-16T16:20:00.0000000' AS DateTime2), NULL, NULL, 0, 0, 0, CAST(N'2026-03-16T16:28:35.843' AS DateTime), 0, CAST(N'2026-03-16T16:28:35.843' AS DateTime))
GO
INSERT [dbo].[Inquiries] ([Id], [UserId], [ProductId], [Name], [Email], [PhoneNo], [Subject], [Message], [Status], [Inquiry_Date], [AdminReply], [Replied_Date], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (10, 0, 0, NULL, NULL, NULL, N'Product Availability-3', N'Is this product available in green color?', N'PEND', CAST(N'2026-03-16T11:30:00.0000000' AS DateTime2), NULL, NULL, 0, 0, 0, CAST(N'2026-03-16T16:55:26.157' AS DateTime), 0, CAST(N'2026-03-16T16:55:26.157' AS DateTime))
GO
INSERT [dbo].[Inquiries] ([Id], [UserId], [ProductId], [Name], [Email], [PhoneNo], [Subject], [Message], [Status], [Inquiry_Date], [AdminReply], [Replied_Date], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (11, 2, 1, NULL, NULL, NULL, N'Product Inquiry', N'Is this Product Available', N'PEND', CAST(N'2026-03-16T00:00:00.0000000' AS DateTime2), NULL, NULL, 0, 1, 2, CAST(N'2026-03-16T16:56:24.317' AS DateTime), 2, CAST(N'2026-03-16T16:56:29.823' AS DateTime))
GO
INSERT [dbo].[Inquiries] ([Id], [UserId], [ProductId], [Name], [Email], [PhoneNo], [Subject], [Message], [Status], [Inquiry_Date], [AdminReply], [Replied_Date], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (12, 0, 0, N'Kaval Patel', N'kaval@example.com', N'9876543210', N'Product Availability', N'Is this necklace available in 22K?', N'INP', CAST(N'2026-03-19T00:00:00.0000000' AS DateTime2), N'', CAST(N'2026-05-30T18:40:35.3866667' AS DateTime2), 0, 0, 0, CAST(N'2026-03-19T18:12:25.577' AS DateTime), 2, CAST(N'2026-05-30T18:40:35.387' AS DateTime))
GO
INSERT [dbo].[Inquiries] ([Id], [UserId], [ProductId], [Name], [Email], [PhoneNo], [Subject], [Message], [Status], [Inquiry_Date], [AdminReply], [Replied_Date], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (13, 0, 1, NULL, NULL, N'', N'Testing', N'Demo testing', N'PEND', CAST(N'2026-05-30T00:00:00.0000000' AS DateTime2), N'Testing', CAST(N'2026-05-30T16:36:35.7100000' AS DateTime2), 0, 0, 0, CAST(N'2026-05-30T16:29:58.697' AS DateTime), 0, CAST(N'2026-05-30T16:36:35.710' AS DateTime))
GO
INSERT [dbo].[Inquiries] ([Id], [UserId], [ProductId], [Name], [Email], [PhoneNo], [Subject], [Message], [Status], [Inquiry_Date], [AdminReply], [Replied_Date], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (14, 27, 1, N'string', N'vmgami2001@gmail.com', N'9645125485', N'testing for devloper', N'message testing', N'COMP', CAST(N'2026-05-30T12:49:16.0566667' AS DateTime2), N'', CAST(N'2026-05-30T18:38:21.1933333' AS DateTime2), 1, 0, 27, CAST(N'2026-05-30T18:24:11.130' AS DateTime), 2, CAST(N'2026-05-30T18:38:21.193' AS DateTime))
GO
INSERT [dbo].[Inquiries] ([Id], [UserId], [ProductId], [Name], [Email], [PhoneNo], [Subject], [Message], [Status], [Inquiry_Date], [AdminReply], [Replied_Date], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (15, 27, 1, N'Gami Vishal', N'vmgami2001@gmail.com', N'9645125485', N'testing for devloper', N'message testing', N'COMP', CAST(N'2026-05-30T12:49:16.0566667' AS DateTime2), N'Testing', CAST(N'2026-05-30T18:39:51.8333333' AS DateTime2), 0, 1, 27, CAST(N'2026-05-30T18:30:17.790' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.690' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Inquiries] OFF
GO
SET IDENTITY_INSERT [dbo].[InquiryReplies] ON 
GO
INSERT [dbo].[InquiryReplies] ([Id], [InquiryId], [ReplyBy], [ReplyMessage], [ReplyDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (4, 5, 0, N'Yes , Blue is not available, Black , Brown and Yellow is available ', CAST(N'2026-03-16T16:37:48.6033333' AS DateTime2), 1, 0, 0, CAST(N'2026-03-16T16:37:48.603' AS DateTime), 0, CAST(N'2026-03-16T16:37:48.603' AS DateTime))
GO
INSERT [dbo].[InquiryReplies] ([Id], [InquiryId], [ReplyBy], [ReplyMessage], [ReplyDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (5, 13, 0, N'first reply', CAST(N'2026-05-30T16:31:55.3366667' AS DateTime2), 1, 0, 0, CAST(N'2026-05-30T16:31:55.337' AS DateTime), 0, CAST(N'2026-05-30T16:31:55.337' AS DateTime))
GO
INSERT [dbo].[InquiryReplies] ([Id], [InquiryId], [ReplyBy], [ReplyMessage], [ReplyDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (6, 14, 2, N'testing demo', CAST(N'2026-05-30T18:27:08.4933333' AS DateTime2), 1, 0, 2, CAST(N'2026-05-30T18:27:08.493' AS DateTime), 2, CAST(N'2026-05-30T18:27:08.493' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[InquiryReplies] OFF
GO
SET IDENTITY_INSERT [dbo].[InquiryStatusHistory] ON 
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (7, 5, N'NA', N'PEND', NULL, 0, 1, 2, CAST(N'2026-03-13T14:05:25.503' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (8, 6, N'NA', N'PEND', NULL, 0, 1, 0, CAST(N'2026-03-16T16:13:17.073' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (9, 7, N'NA', N'PEND', NULL, 0, 1, 0, CAST(N'2026-03-16T16:26:41.510' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (10, 8, N'NA', N'PEND', NULL, 0, 1, 0, CAST(N'2026-03-16T16:27:11.163' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (11, 9, N'NA', N'PEND', NULL, 0, 1, 0, CAST(N'2026-03-16T16:28:35.843' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (12, 5, N'PEND', N'INP', N'', 0, 1, 0, CAST(N'2026-03-16T16:36:21.850' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (13, 5, N'INP', N'REP', N'Yes , Blue is not available, Black , Brown and Yellow is available ', 0, 1, 0, CAST(N'2026-03-16T16:37:48.603' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (14, 6, N'PEND', N'INP', N'', 0, 1, 0, CAST(N'2026-03-16T16:42:24.620' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (15, 6, N'INP', N'INP', N'', 0, 1, 2, CAST(N'2026-03-16T16:42:56.770' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (16, 6, N'INP', N'INP', N'', 0, 1, 2, CAST(N'2026-03-16T16:51:51.730' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (17, 10, N'NA', N'PEND', NULL, 0, 1, 0, CAST(N'2026-03-16T16:55:26.157' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (18, 11, N'NA', N'PEND', NULL, 0, 1, 2, CAST(N'2026-03-16T16:56:24.317' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (19, 12, N'NA', N'PEND', NULL, 0, 1, 0, CAST(N'2026-03-19T18:12:25.590' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (20, 0, NULL, N'INP', N'', 0, 1, 0, CAST(N'2026-03-19T18:14:32.270' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (21, 13, N'NA', N'PEND', NULL, 0, 1, 0, CAST(N'2026-05-30T16:29:58.697' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (22, 13, N'PEND', N'REP', N'first reply', 0, 1, 0, CAST(N'2026-05-30T16:31:55.337' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (23, 13, N'REP', N'PEND', N'Testing', 0, 1, 0, CAST(N'2026-05-30T16:36:35.710' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (24, 14, N'NA', N'PEND', NULL, 0, 1, 27, CAST(N'2026-05-30T18:24:11.130' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (25, 14, N'PEND', N'REP', N'testing demo', 0, 1, 2, CAST(N'2026-05-30T18:27:08.493' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (26, 15, N'NA', N'PEND', NULL, 0, 1, 27, CAST(N'2026-05-30T18:30:17.803' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (27, 12, N'PEND', N'INP', N'Demo for 104', 0, 1, 0, CAST(N'2026-05-30T18:31:46.340' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (28, 12, N'INP', N'INP', N'', 0, 1, 0, CAST(N'2026-05-30T18:32:29.397' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (29, 14, N'REP', N'INP', N'Process demo', 0, 1, 2, CAST(N'2026-05-30T18:33:28.327' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (30, 15, N'PEND', N'INP', N'', 0, 1, 0, CAST(N'2026-05-30T18:35:24.190' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (31, 15, N'INP', N'INP', N'id 15', 0, 1, 0, CAST(N'2026-05-30T18:36:17.803' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (32, 15, N'INP', N'INP', N'Put into Process', 0, 1, 0, CAST(N'2026-05-30T18:37:26.643' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (33, 14, N'INP', N'COMP', N'', 0, 1, 2, CAST(N'2026-05-30T18:38:21.193' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (34, 15, N'INP', N'COMP', N'', 0, 1, 0, CAST(N'2026-05-30T18:39:28.003' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (35, 15, N'COMP', N'COMP', N'Testing', 0, 1, 0, CAST(N'2026-05-30T18:39:51.833' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (36, 12, N'INP', N'INP', N'', 0, 1, 2, CAST(N'2026-05-30T18:40:35.387' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[InquiryStatusHistory] OFF
GO
INSERT [dbo].[LOV_MASTER] ([LOV_Column], [LOV_Code], [LOV_Desc], [DisplayOrder], [CreatedBy], [LastModifiedBy], [IsActive], [IsDeleted], [CreatedDate], [LastModifiedDate], [Display_Text]) VALUES (N'OrderStatus', N'1', N'Pending', 1, 1, NULL, 1, 0, CAST(N'2026-06-02T10:12:52.957' AS DateTime), NULL, N'Order Status')
GO
INSERT [dbo].[LOV_MASTER] ([LOV_Column], [LOV_Code], [LOV_Desc], [DisplayOrder], [CreatedBy], [LastModifiedBy], [IsActive], [IsDeleted], [CreatedDate], [LastModifiedDate], [Display_Text]) VALUES (N'OrderStatus', N'2', N'Confirmed', 1, 1, NULL, 1, 0, CAST(N'2026-06-02T10:19:23.617' AS DateTime), NULL, N'Order Status')
GO
INSERT [dbo].[LOV_MASTER] ([LOV_Column], [LOV_Code], [LOV_Desc], [DisplayOrder], [CreatedBy], [LastModifiedBy], [IsActive], [IsDeleted], [CreatedDate], [LastModifiedDate], [Display_Text]) VALUES (N'OrderStatus', N'3', N'Processing', 1, 1, NULL, 1, 0, CAST(N'2026-06-02T10:19:36.557' AS DateTime), NULL, N'Order Status')
GO
INSERT [dbo].[LOV_MASTER] ([LOV_Column], [LOV_Code], [LOV_Desc], [DisplayOrder], [CreatedBy], [LastModifiedBy], [IsActive], [IsDeleted], [CreatedDate], [LastModifiedDate], [Display_Text]) VALUES (N'OrderStatus', N'4', N'Completed', 1, 1, NULL, 1, 0, CAST(N'2026-06-02T10:19:44.740' AS DateTime), NULL, N'Order Status')
GO
INSERT [dbo].[LOV_MASTER] ([LOV_Column], [LOV_Code], [LOV_Desc], [DisplayOrder], [CreatedBy], [LastModifiedBy], [IsActive], [IsDeleted], [CreatedDate], [LastModifiedDate], [Display_Text]) VALUES (N'OrderStatus', N'5', N'Cancelled', 1, 1, NULL, 1, 0, CAST(N'2026-06-02T10:19:54.953' AS DateTime), NULL, N'Order Status')
GO
INSERT [dbo].[LOV_MASTER] ([LOV_Column], [LOV_Code], [LOV_Desc], [DisplayOrder], [CreatedBy], [LastModifiedBy], [IsActive], [IsDeleted], [CreatedDate], [LastModifiedDate], [Display_Text]) VALUES (N'OrderStatus', N'6', N'Returned', 1, 1, NULL, 1, 0, CAST(N'2026-06-02T10:20:01.473' AS DateTime), NULL, N'Order Status')
GO
SET IDENTITY_INSERT [dbo].[Menus] ON 
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, 0, NULL, NULL, NULL, N'Configuration', NULL, 1, N'1', 1, 0, 1, NULL, 1, NULL)
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2, 1, N'Admin', N'User', NULL, N'User', NULL, 2, N'1', 1, 0, 1, NULL, 1, NULL)
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3, 1, N'Admin', N'Role', NULL, N'Role', NULL, 3, N'1', 1, 0, 1, NULL, 1, NULL)
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (4, 1, N'Admin', N'Access', NULL, N'Access', NULL, 4, N'1', 0, 1, 1, NULL, 2, CAST(N'2026-03-06T13:08:50.873' AS DateTime))
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (5, 1, N'Admin', N'Menu', NULL, N'Menu', NULL, 5, N'1', 1, 0, 1, NULL, 1, NULL)
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (6, 0, NULL, N'Test', NULL, N'Test', NULL, 0, NULL, 0, 1, 2, CAST(N'2026-03-05T10:22:50.367' AS DateTime), 2, CAST(N'2026-03-06T13:12:50.217' AS DateTime))
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (7, 1, NULL, NULL, NULL, N'Test', NULL, 0, NULL, 0, 1, 2, CAST(N'2026-03-06T13:13:21.290' AS DateTime), 2, CAST(N'2026-03-06T13:13:27.330' AS DateTime))
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (8, 1, NULL, N'Z', NULL, N'Test', NULL, 0, NULL, 0, 1, 2, CAST(N'2026-03-06T13:15:22.820' AS DateTime), 2, CAST(N'2026-03-06T13:15:37.987' AS DateTime))
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (9, 0, N'Admin', N'Category', NULL, N'Category', NULL, 0, NULL, 1, 0, 2, CAST(N'2026-03-09T10:13:56.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (10, 0, N'Admin', N'Orders', NULL, N'Orders', NULL, 0, NULL, 1, 0, 2, CAST(N'2026-03-09T18:47:23.010' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (11, 0, N'Admin', N'Product', NULL, N'Product', NULL, 0, NULL, 1, 0, 0, CAST(N'2026-03-10T16:17:58.263' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (12, 0, N'Admin', N'Inquiry', NULL, N'Inquiry', NULL, 0, NULL, 1, 0, 2, CAST(N'2026-03-10T18:43:42.410' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (13, 0, N'admin', N'Attribute', NULL, N'Attribute', NULL, 0, NULL, 1, 0, 2, CAST(N'2026-03-10T18:59:09.573' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (14, 0, N'admin', N'Coupons', NULL, N'Coupon', NULL, 0, NULL, 1, 0, 2, CAST(N'2026-03-10T18:59:35.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (15, 0, N'admin', N'Reviews', NULL, N'Reviews', NULL, 0, NULL, 1, 0, 2, CAST(N'2026-03-11T12:54:50.067' AS DateTime), 2, CAST(N'2026-03-13T13:09:01.337' AS DateTime))
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (16, 0, NULL, NULL, NULL, N'Test-1', NULL, 0, NULL, 0, 1, 2, CAST(N'2026-03-13T13:47:36.320' AS DateTime), 2, CAST(N'2026-03-13T13:47:47.200' AS DateTime))
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (17, 0, NULL, NULL, NULL, N'Test-1', NULL, 0, NULL, 0, 1, 2, CAST(N'2026-03-13T13:47:54.823' AS DateTime), 2, CAST(N'2026-03-13T13:47:59.320' AS DateTime))
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (18, 1, N'Officia esse ullam q', N'Unde quidem repellen', N'Et neque exercitatio', N'Caldwell Zamora', NULL, 0, NULL, 0, 1, 2, CAST(N'2026-03-13T14:17:01.180' AS DateTime), 2, CAST(N'2026-03-13T14:17:24.570' AS DateTime))
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (19, 1, N'Error perferendis il', N'Ea aliquid voluptate', N'Deserunt et voluptat', N'Risa Douglas', NULL, 0, NULL, 1, 0, 2, CAST(N'2026-03-13T14:25:05.130' AS DateTime), 2, CAST(N'2026-03-13T14:25:13.240' AS DateTime))
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (20, 0, N'Admin', N'Customer', NULL, N'Customer', NULL, 0, NULL, 1, 0, 2, CAST(N'2026-03-14T09:31:15.903' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (21, 0, N'Admin', N'ProductStock', NULL, N'Product Stock', NULL, 0, NULL, 1, 0, 2, CAST(N'2026-03-14T11:42:03.777' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (22, 19, N'Consequatur Proiden', N'Consequatur Officii', N'Duis laborum amet d', N'Stacy Sandoval 1', NULL, 1, NULL, 0, 1, 2, CAST(N'2026-03-18T08:54:05.833' AS DateTime), 2, CAST(N'2026-03-18T08:58:16.603' AS DateTime))
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (23, 0, N'Admin', N'HomePage', NULL, N'Home Page', NULL, 10, NULL, 1, 0, 2, CAST(N'2026-03-19T08:53:09.280' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (24, 0, N'Admin', N'Offer', NULL, N'Offer', NULL, 11, NULL, 1, 0, 2, CAST(N'2026-03-20T12:34:12.897' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (25, 0, N'Testing', N'demo', N'demo', N'demo', NULL, 10, NULL, 0, 1, 2, CAST(N'2026-05-29T22:07:36.110' AS DateTime), 2, CAST(N'2026-05-29T22:07:56.493' AS DateTime))
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (26, 0, N'Testing', N'string', N'string', N'string', NULL, 0, NULL, 0, 1, 2, CAST(N'2026-05-30T09:18:35.370' AS DateTime), 2, CAST(N'2026-05-30T09:19:05.213' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Menus] OFF
GO
SET IDENTITY_INSERT [dbo].[Offers] ON 
GO
INSERT [dbo].[Offers] ([Id], [OfferName], [OfferType], [DiscountType], [DiscountValue], [MaxDiscountAmount], [MinOrderAmount], [MinQty], [IsCouponRequired], [CouponCode], [StartDate], [EndDate], [StartTime], [EndTime], [MaxUsage], [PerUserUsage], [IsFirstOrderOnly], [IsAutoApply], [IsPrimeOnly], [AllowWithOtherOffers], [Priority], [Remarks], [ApplyOnly_Category], [ApplyOnly_Product], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, N'Flat ?2000 Off Above 50K', N'ORDER', N'FLAT', CAST(2000.00 AS Decimal(18, 2)), NULL, CAST(50000.00 AS Decimal(18, 2)), NULL, 0, NULL, CAST(N'2026-03-11T19:00:27.773' AS DateTime), CAST(N'2026-04-20T19:00:27.773' AS DateTime), NULL, NULL, NULL, NULL, 0, 1, 0, 1, 1, N'Cart discount', NULL, NULL, 1, 0, 1, CAST(N'2026-03-21T19:00:27.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Offers] ([Id], [OfferName], [OfferType], [DiscountType], [DiscountValue], [MaxDiscountAmount], [MinOrderAmount], [MinQty], [IsCouponRequired], [CouponCode], [StartDate], [EndDate], [StartTime], [EndTime], [MaxUsage], [PerUserUsage], [IsFirstOrderOnly], [IsAutoApply], [IsPrimeOnly], [AllowWithOtherOffers], [Priority], [Remarks], [ApplyOnly_Category], [ApplyOnly_Product], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2, N'15% Off Bracelets', N'CATEGORY', N'PERCENT', CAST(15.00 AS Decimal(18, 2)), CAST(8000.00 AS Decimal(18, 2)), NULL, NULL, 0, NULL, CAST(N'2026-03-16T19:00:27.773' AS DateTime), CAST(N'2026-04-10T19:00:27.773' AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, 1, 2, N'Bracelet offer', N'11,12', NULL, 1, 0, 1, CAST(N'2026-03-21T19:00:27.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Offers] ([Id], [OfferName], [OfferType], [DiscountType], [DiscountValue], [MaxDiscountAmount], [MinOrderAmount], [MinQty], [IsCouponRequired], [CouponCode], [StartDate], [EndDate], [StartTime], [EndTime], [MaxUsage], [PerUserUsage], [IsFirstOrderOnly], [IsAutoApply], [IsPrimeOnly], [AllowWithOtherOffers], [Priority], [Remarks], [ApplyOnly_Category], [ApplyOnly_Product], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3, N'?5000 Off Premium Products', N'PRODUCT', N'FLAT', CAST(5000.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0, NULL, CAST(N'2026-03-16T19:00:27.773' AS DateTime), CAST(N'2026-04-10T19:00:27.773' AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, 0, 3, N'Premium products', NULL, N'35,36,37', 1, 0, 1, CAST(N'2026-03-21T19:00:27.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Offers] ([Id], [OfferName], [OfferType], [DiscountType], [DiscountValue], [MaxDiscountAmount], [MinOrderAmount], [MinQty], [IsCouponRequired], [CouponCode], [StartDate], [EndDate], [StartTime], [EndTime], [MaxUsage], [PerUserUsage], [IsFirstOrderOnly], [IsAutoApply], [IsPrimeOnly], [AllowWithOtherOffers], [Priority], [Remarks], [ApplyOnly_Category], [ApplyOnly_Product], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (4, N'10% Mixed Offer', N'MIXED', N'PERCENT', CAST(10.00 AS Decimal(18, 2)), CAST(6000.00 AS Decimal(18, 2)), NULL, NULL, 0, NULL, CAST(N'2026-03-16T19:00:27.773' AS DateTime), CAST(N'2026-04-10T19:00:27.773' AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, 1, 4, N'Mixed', N'8,9', N'25,26,30', 1, 0, 1, CAST(N'2026-03-21T19:00:27.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Offers] ([Id], [OfferName], [OfferType], [DiscountType], [DiscountValue], [MaxDiscountAmount], [MinOrderAmount], [MinQty], [IsCouponRequired], [CouponCode], [StartDate], [EndDate], [StartTime], [EndTime], [MaxUsage], [PerUserUsage], [IsFirstOrderOnly], [IsAutoApply], [IsPrimeOnly], [AllowWithOtherOffers], [Priority], [Remarks], [ApplyOnly_Category], [ApplyOnly_Product], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (5, N'FIRST25 Coupon', N'ORDER', N'PERCENT', CAST(25.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)), NULL, NULL, 1, N'FIRST25', CAST(N'2026-03-20T19:00:27.773' AS DateTime), CAST(N'2026-04-20T19:00:27.773' AS DateTime), NULL, NULL, 1000, 1, 1, 0, 0, 0, 1, N'First order coupon', NULL, NULL, 1, 0, 1, CAST(N'2026-03-21T19:00:27.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Offers] ([Id], [OfferName], [OfferType], [DiscountType], [DiscountValue], [MaxDiscountAmount], [MinOrderAmount], [MinQty], [IsCouponRequired], [CouponCode], [StartDate], [EndDate], [StartTime], [EndTime], [MaxUsage], [PerUserUsage], [IsFirstOrderOnly], [IsAutoApply], [IsPrimeOnly], [AllowWithOtherOffers], [Priority], [Remarks], [ApplyOnly_Category], [ApplyOnly_Product], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (6, N'Wedding Combo Offer', N'COMBO', N'PERCENT', CAST(20.00 AS Decimal(18, 2)), CAST(15000.00 AS Decimal(18, 2)), CAST(80000.00 AS Decimal(18, 2)), 2, 0, NULL, CAST(N'2026-03-16T19:00:27.773' AS DateTime), CAST(N'2026-05-20T19:00:27.773' AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, N'Wedding set', N'11,9', NULL, 1, 0, 1, CAST(N'2026-03-21T19:00:27.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Offers] ([Id], [OfferName], [OfferType], [DiscountType], [DiscountValue], [MaxDiscountAmount], [MinOrderAmount], [MinQty], [IsCouponRequired], [CouponCode], [StartDate], [EndDate], [StartTime], [EndTime], [MaxUsage], [PerUserUsage], [IsFirstOrderOnly], [IsAutoApply], [IsPrimeOnly], [AllowWithOtherOffers], [Priority], [Remarks], [ApplyOnly_Category], [ApplyOnly_Product], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (7, N'Weekend Flash 25%', N'TIME', N'PERCENT', CAST(25.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)), NULL, NULL, 0, NULL, CAST(N'2026-03-20T19:00:27.773' AS DateTime), CAST(N'2026-04-20T19:00:27.773' AS DateTime), CAST(N'08:00:00' AS Time), CAST(N'23:59:00' AS Time), NULL, 1, 0, 0, 0, 1, 1, N'Weekend sale', NULL, NULL, 1, 0, 1, CAST(N'2026-03-21T19:00:27.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Offers] ([Id], [OfferName], [OfferType], [DiscountType], [DiscountValue], [MaxDiscountAmount], [MinOrderAmount], [MinQty], [IsCouponRequired], [CouponCode], [StartDate], [EndDate], [StartTime], [EndTime], [MaxUsage], [PerUserUsage], [IsFirstOrderOnly], [IsAutoApply], [IsPrimeOnly], [AllowWithOtherOffers], [Priority], [Remarks], [ApplyOnly_Category], [ApplyOnly_Product], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (8, N'Diwali 30% OFF', N'ORDER', N'PERCENT', CAST(30.00 AS Decimal(18, 2)), CAST(20000.00 AS Decimal(18, 2)), CAST(50000.00 AS Decimal(18, 2)), NULL, 1, N'DIWALI30', CAST(N'2026-03-19T19:00:27.773' AS DateTime), CAST(N'2026-05-05T19:00:27.773' AS DateTime), NULL, NULL, 500, 1, 0, 0, 0, 0, 1, N'Festival', NULL, NULL, 1, 0, 1, CAST(N'2026-03-21T19:00:27.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Offers] ([Id], [OfferName], [OfferType], [DiscountType], [DiscountValue], [MaxDiscountAmount], [MinOrderAmount], [MinQty], [IsCouponRequired], [CouponCode], [StartDate], [EndDate], [StartTime], [EndTime], [MaxUsage], [PerUserUsage], [IsFirstOrderOnly], [IsAutoApply], [IsPrimeOnly], [AllowWithOtherOffers], [Priority], [Remarks], [ApplyOnly_Category], [ApplyOnly_Product], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (9, N'Buy 3 Get 10%', N'QTY', N'PERCENT', CAST(10.00 AS Decimal(18, 2)), CAST(8000.00 AS Decimal(18, 2)), NULL, 3, 0, NULL, CAST(N'2026-03-11T19:00:27.773' AS DateTime), CAST(N'2026-04-30T19:00:27.773' AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, 1, 2, N'Bulk', NULL, NULL, 1, 0, 1, CAST(N'2026-03-21T19:00:27.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Offers] ([Id], [OfferName], [OfferType], [DiscountType], [DiscountValue], [MaxDiscountAmount], [MinOrderAmount], [MinQty], [IsCouponRequired], [CouponCode], [StartDate], [EndDate], [StartTime], [EndTime], [MaxUsage], [PerUserUsage], [IsFirstOrderOnly], [IsAutoApply], [IsPrimeOnly], [AllowWithOtherOffers], [Priority], [Remarks], [ApplyOnly_Category], [ApplyOnly_Product], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (10, N'Prime Extra 5%', N'ORDER', N'PERCENT', CAST(5.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), NULL, NULL, 0, NULL, CAST(N'2026-03-20T19:00:27.773' AS DateTime), CAST(N'2026-06-19T19:00:27.773' AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 1, 1, 3, N'Prime', NULL, NULL, 1, 0, 1, CAST(N'2026-03-21T19:00:27.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Offers] ([Id], [OfferName], [OfferType], [DiscountType], [DiscountValue], [MaxDiscountAmount], [MinOrderAmount], [MinQty], [IsCouponRequired], [CouponCode], [StartDate], [EndDate], [StartTime], [EndTime], [MaxUsage], [PerUserUsage], [IsFirstOrderOnly], [IsAutoApply], [IsPrimeOnly], [AllowWithOtherOffers], [Priority], [Remarks], [ApplyOnly_Category], [ApplyOnly_Product], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (11, N'First Order ?2500 OFF', N'ORDER', N'FLAT', CAST(2500.00 AS Decimal(18, 2)), NULL, CAST(20000.00 AS Decimal(18, 2)), NULL, 0, NULL, CAST(N'2026-03-20T19:00:27.773' AS DateTime), CAST(N'2026-05-20T19:00:27.773' AS DateTime), NULL, NULL, NULL, 1, 1, 0, 0, 0, 1, N'New users', NULL, NULL, 1, 0, 1, CAST(N'2026-03-21T19:00:27.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Offers] ([Id], [OfferName], [OfferType], [DiscountType], [DiscountValue], [MaxDiscountAmount], [MinOrderAmount], [MinQty], [IsCouponRequired], [CouponCode], [StartDate], [EndDate], [StartTime], [EndTime], [MaxUsage], [PerUserUsage], [IsFirstOrderOnly], [IsAutoApply], [IsPrimeOnly], [AllowWithOtherOffers], [Priority], [Remarks], [ApplyOnly_Category], [ApplyOnly_Product], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (12, N'?7000 Off Above 1L', N'ORDER', N'FLAT', CAST(7000.00 AS Decimal(18, 2)), NULL, CAST(100000.00 AS Decimal(18, 2)), NULL, 0, NULL, CAST(N'2026-03-20T19:00:27.773' AS DateTime), CAST(N'2026-05-20T19:00:27.773' AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, 0, 2, N'High cart', NULL, NULL, 1, 0, 1, CAST(N'2026-03-21T19:00:27.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Offers] ([Id], [OfferName], [OfferType], [DiscountType], [DiscountValue], [MaxDiscountAmount], [MinOrderAmount], [MinQty], [IsCouponRequired], [CouponCode], [StartDate], [EndDate], [StartTime], [EndTime], [MaxUsage], [PerUserUsage], [IsFirstOrderOnly], [IsAutoApply], [IsPrimeOnly], [AllowWithOtherOffers], [Priority], [Remarks], [ApplyOnly_Category], [ApplyOnly_Product], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (13, N'20% OFF Earrings', N'CATEGORY', N'PERCENT', CAST(20.00 AS Decimal(18, 2)), CAST(7000.00 AS Decimal(18, 2)), NULL, NULL, 0, NULL, CAST(N'2026-03-19T19:00:27.773' AS DateTime), CAST(N'2026-03-31T19:00:27.773' AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, 1, 2, N'Earrings', N'8,9', NULL, 1, 0, 1, CAST(N'2026-03-21T19:00:27.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Offers] ([Id], [OfferName], [OfferType], [DiscountType], [DiscountValue], [MaxDiscountAmount], [MinOrderAmount], [MinQty], [IsCouponRequired], [CouponCode], [StartDate], [EndDate], [StartTime], [EndTime], [MaxUsage], [PerUserUsage], [IsFirstOrderOnly], [IsAutoApply], [IsPrimeOnly], [AllowWithOtherOffers], [Priority], [Remarks], [ApplyOnly_Category], [ApplyOnly_Product], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (14, N'Limited ?1000 OFF', N'ORDER', N'FLAT', CAST(1000.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0, NULL, CAST(N'2026-03-20T19:00:27.773' AS DateTime), CAST(N'2026-03-31T19:00:27.773' AS DateTime), NULL, NULL, 50, 1, 0, 0, 0, 0, 1, N'Limited usage', NULL, NULL, 1, 0, 1, CAST(N'2026-03-21T19:00:27.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Offers] ([Id], [OfferName], [OfferType], [DiscountType], [DiscountValue], [MaxDiscountAmount], [MinOrderAmount], [MinQty], [IsCouponRequired], [CouponCode], [StartDate], [EndDate], [StartTime], [EndTime], [MaxUsage], [PerUserUsage], [IsFirstOrderOnly], [IsAutoApply], [IsPrimeOnly], [AllowWithOtherOffers], [Priority], [Remarks], [ApplyOnly_Category], [ApplyOnly_Product], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (15, N'Extra 2% Stackable', N'ORDER', N'PERCENT', CAST(2.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), NULL, NULL, 0, NULL, CAST(N'2026-03-20T19:00:27.773' AS DateTime), CAST(N'2026-06-29T19:00:27.773' AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, 1, 5, N'Stackable', NULL, NULL, 1, 0, 1, CAST(N'2026-03-21T19:00:27.773' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Offers] OFF
GO
SET IDENTITY_INSERT [dbo].[OfferUsage] ON 
GO
INSERT [dbo].[OfferUsage] ([Id], [OfferId], [RefType], [RefId], [CustomerId], [UsedDate], [FinalDiscount]) VALUES (271, 1, N'ORDER', 121, 27, CAST(N'2026-04-14T10:33:13.077' AS DateTime), NULL)
GO
INSERT [dbo].[OfferUsage] ([Id], [OfferId], [RefType], [RefId], [CustomerId], [UsedDate], [FinalDiscount]) VALUES (272, 15, N'ORDER', 121, 27, CAST(N'2026-04-14T10:33:13.077' AS DateTime), NULL)
GO
INSERT [dbo].[OfferUsage] ([Id], [OfferId], [RefType], [RefId], [CustomerId], [UsedDate], [FinalDiscount]) VALUES (276, 15, N'ORDER', 122, 27, CAST(N'2026-05-08T14:31:27.880' AS DateTime), NULL)
GO
INSERT [dbo].[OfferUsage] ([Id], [OfferId], [RefType], [RefId], [CustomerId], [UsedDate], [FinalDiscount]) VALUES (277, 15, N'CART', 27, 27, CAST(N'2026-06-01T12:25:13.313' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[OfferUsage] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderItems] ON 
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (102, 100, 17, 97, 2, CAST(40532.00 AS Decimal(18, 2)), CAST(81064.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-04-04T16:05:38.713' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (103, 100, 35, 115, 1, CAST(44589.00 AS Decimal(18, 2)), CAST(44589.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-04-04T16:05:38.713' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (104, 101, 11, 91, 1, CAST(41641.00 AS Decimal(18, 2)), CAST(41641.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-04-06T11:30:05.877' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (105, 102, 11, 91, 1, CAST(41641.00 AS Decimal(18, 2)), CAST(41641.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-04-06T11:34:32.493' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (106, 103, 16, 16, 1, CAST(50500.00 AS Decimal(18, 2)), CAST(50500.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-04-06T11:39:22.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (107, 104, 25, 105, 1, CAST(38069.00 AS Decimal(18, 2)), CAST(38069.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-04-06T11:43:31.090' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (108, 105, 14, 127, 1, CAST(37389.00 AS Decimal(18, 2)), CAST(37389.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-04-06T11:44:46.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (109, 106, 25, 105, 1, CAST(38069.00 AS Decimal(18, 2)), CAST(38069.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-04-06T11:46:34.173' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (110, 107, 14, 127, 1, CAST(37389.00 AS Decimal(18, 2)), CAST(37389.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-04-06T11:47:47.807' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (111, 108, 35, 115, 1, CAST(44589.00 AS Decimal(18, 2)), CAST(44589.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-04-06T11:50:48.283' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (112, 109, 11, 91, 1, CAST(41641.00 AS Decimal(18, 2)), CAST(41641.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-04-06T14:44:55.740' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (113, 110, 25, 105, 1, CAST(38069.00 AS Decimal(18, 2)), CAST(38069.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-04-06T14:46:50.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (114, 111, 11, 91, 1, CAST(41641.00 AS Decimal(18, 2)), CAST(41641.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-04-06T15:13:33.213' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (115, 112, 11, 91, 1, CAST(41641.00 AS Decimal(18, 2)), CAST(41641.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-04-06T15:16:08.217' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (116, 113, 14, 127, 1, CAST(37389.00 AS Decimal(18, 2)), CAST(37389.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-04-06T15:21:01.010' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (117, 114, 12, 52, 1, CAST(39139.00 AS Decimal(18, 2)), CAST(39139.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-04-06T15:48:34.790' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (118, 114, 11, 91, 1, CAST(41641.00 AS Decimal(18, 2)), CAST(41641.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-04-06T15:48:34.790' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (119, 115, 11, 91, 1, CAST(41641.00 AS Decimal(18, 2)), CAST(41641.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-04-06T18:34:54.477' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (120, 115, 25, 105, 1, CAST(38069.00 AS Decimal(18, 2)), CAST(38069.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-04-06T18:34:54.477' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (121, 116, 11, 91, 1, CAST(41641.00 AS Decimal(18, 2)), CAST(41641.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-04-06T18:39:47.587' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (122, 117, 11, 91, 1, CAST(41641.00 AS Decimal(18, 2)), CAST(41641.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-04-06T18:41:54.130' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (123, 117, 25, 105, 1, CAST(38069.00 AS Decimal(18, 2)), CAST(38069.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-04-06T18:41:54.130' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (124, 118, 11, 91, 1, CAST(41641.00 AS Decimal(18, 2)), CAST(41641.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-04-13T15:32:31.713' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (125, 118, 25, 105, 1, CAST(38069.00 AS Decimal(18, 2)), CAST(38069.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-04-13T15:32:31.713' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (126, 119, 14, 127, 1, CAST(37389.00 AS Decimal(18, 2)), CAST(37389.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-04-13T15:41:48.303' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (127, 120, 25, 105, 1, CAST(38069.00 AS Decimal(18, 2)), CAST(38069.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-04-13T17:54:31.090' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (128, 121, 24, 64, 1, CAST(39411.00 AS Decimal(18, 2)), CAST(39411.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-04-14T10:33:13.077' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (129, 122, 14, 127, 2, CAST(37389.00 AS Decimal(18, 2)), CAST(74778.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-05-08T14:31:27.863' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (130, 122, 21, 147, 1, CAST(39722.00 AS Decimal(18, 2)), CAST(39722.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-05-08T14:31:27.863' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (131, 123, 16, 128, 2, CAST(50400.00 AS Decimal(18, 2)), CAST(100800.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-05-29T11:07:46.233' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (132, 123, 33, 151, 1, CAST(38221.00 AS Decimal(18, 2)), CAST(38221.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-05-29T11:07:46.233' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (133, 124, 14, 127, 1, CAST(37389.00 AS Decimal(18, 2)), CAST(37389.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-05-30T13:53:58.480' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (134, 125, 33, 151, 1, CAST(38221.00 AS Decimal(18, 2)), CAST(38221.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-05-30T13:55:28.370' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[OrderItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (100, 27, N'09414094-100', CAST(N'2026-04-04T16:05:38.7133333' AS DateTime2), CAST(125653.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(125653.00 AS Decimal(18, 2)), N'Placed', N'Pending', 1, 0, 27, CAST(N'2026-04-04T16:05:38.713' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (101, 27, N'09615096-101', CAST(N'2026-04-06T11:30:05.8766667' AS DateTime2), CAST(41641.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(41641.00 AS Decimal(18, 2)), N'Placed', N'Pending', 1, 0, 27, CAST(N'2026-04-06T11:30:05.877' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (102, 27, N'09615096-102', CAST(N'2026-04-06T11:34:32.4933333' AS DateTime2), CAST(41641.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(41641.00 AS Decimal(18, 2)), N'Placed', N'Pending', 1, 0, 27, CAST(N'2026-04-06T11:34:32.493' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (103, 27, N'09615096-103', CAST(N'2026-04-06T11:39:22.6800000' AS DateTime2), CAST(50500.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(50500.00 AS Decimal(18, 2)), N'Placed', N'Pending', 1, 0, 27, CAST(N'2026-04-06T11:39:22.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (104, 27, N'09615096-104', CAST(N'2026-04-06T11:43:31.0900000' AS DateTime2), CAST(38069.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(38069.00 AS Decimal(18, 2)), N'Placed', N'Pending', 1, 0, 27, CAST(N'2026-04-06T11:43:31.090' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (105, 27, N'09615096-105', CAST(N'2026-04-06T11:44:46.3200000' AS DateTime2), CAST(37389.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(37389.00 AS Decimal(18, 2)), N'Placed', N'Pending', 1, 0, 27, CAST(N'2026-04-06T11:44:46.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (106, 27, N'09615096-106', CAST(N'2026-04-06T11:46:34.1733333' AS DateTime2), CAST(38069.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(38069.00 AS Decimal(18, 2)), N'Placed', N'Pending', 1, 0, 27, CAST(N'2026-04-06T11:46:34.173' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (107, 27, N'09615096-107', CAST(N'2026-04-06T11:47:47.8066667' AS DateTime2), CAST(37389.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(37389.00 AS Decimal(18, 2)), N'Placed', N'Pending', 1, 0, 27, CAST(N'2026-04-06T11:47:47.807' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (108, 27, N'09615096-108', CAST(N'2026-04-06T11:50:48.2833333' AS DateTime2), CAST(44589.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(44589.00 AS Decimal(18, 2)), N'Placed', N'Pending', 1, 0, 27, CAST(N'2026-04-06T11:50:48.283' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (109, 27, N'09615096-109', CAST(N'2026-04-06T14:44:55.7400000' AS DateTime2), CAST(41641.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(41641.00 AS Decimal(18, 2)), N'Placed', N'Pending', 1, 0, 27, CAST(N'2026-04-06T14:44:55.740' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (110, 27, N'09615096-110', CAST(N'2026-04-06T14:46:50.8433333' AS DateTime2), CAST(38069.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(38069.00 AS Decimal(18, 2)), N'Placed', N'Pending', 1, 0, 27, CAST(N'2026-04-06T14:46:50.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (111, 27, N'09615096-111', CAST(N'2026-04-06T15:13:33.2133333' AS DateTime2), CAST(41641.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(41641.00 AS Decimal(18, 2)), N'Placed', N'Pending', 1, 0, 27, CAST(N'2026-04-06T15:13:33.213' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (112, 27, N'09615096-112', CAST(N'2026-04-06T15:16:08.2166667' AS DateTime2), CAST(41641.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(41641.00 AS Decimal(18, 2)), N'Placed', N'Pending', 1, 0, 27, CAST(N'2026-04-06T15:16:08.217' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (113, 27, N'09615096-113', CAST(N'2026-04-06T15:21:01.0100000' AS DateTime2), CAST(37389.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(37389.00 AS Decimal(18, 2)), N'Placed', N'Pending', 1, 0, 27, CAST(N'2026-04-06T15:21:01.010' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (114, 27, N'09615096-114', CAST(N'2026-04-06T15:48:34.7900000' AS DateTime2), CAST(80780.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(80780.00 AS Decimal(18, 2)), N'Placed', N'Pending', 1, 0, 27, CAST(N'2026-04-06T15:48:34.790' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (115, 27, N'09615096-115', CAST(N'2026-04-06T18:34:54.4766667' AS DateTime2), CAST(79710.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(79710.00 AS Decimal(18, 2)), N'Placed', N'Pending', 1, 0, 27, CAST(N'2026-04-06T18:34:54.477' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (116, 27, N'09615096-116', CAST(N'2026-04-06T18:39:47.5866667' AS DateTime2), CAST(41641.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(41641.00 AS Decimal(18, 2)), N'Placed', N'Pending', 1, 0, 27, CAST(N'2026-04-06T18:39:47.587' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (117, 27, N'09615096-117', CAST(N'2026-04-06T18:41:54.1300000' AS DateTime2), CAST(79710.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(79710.00 AS Decimal(18, 2)), N'Placed', N'Pending', 1, 0, 27, CAST(N'2026-04-06T18:41:54.130' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (118, 27, N'10316103-118', CAST(N'2026-04-13T15:32:31.7133333' AS DateTime2), CAST(79710.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(79710.00 AS Decimal(18, 2)), N'Placed', N'Pending', 1, 0, 27, CAST(N'2026-04-13T15:32:31.713' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (119, 27, N'10316103-119', CAST(N'2026-04-13T15:41:48.3033333' AS DateTime2), CAST(37389.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(37389.00 AS Decimal(18, 2)), N'Placed', N'Pending', 1, 0, 27, CAST(N'2026-04-13T15:41:48.303' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (120, 27, N'10316103-120', CAST(N'2026-04-13T17:54:31.0900000' AS DateTime2), CAST(38069.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(38069.00 AS Decimal(18, 2)), N'Placed', N'Pending', 1, 0, 27, CAST(N'2026-04-13T17:54:31.090' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (121, 27, N'10416104-121', CAST(N'2026-04-14T10:33:13.0766667' AS DateTime2), CAST(39411.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(39411.00 AS Decimal(18, 2)), N'Placed', N'Pending', 1, 0, 27, CAST(N'2026-04-14T10:33:13.077' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (122, 27, N'12819128-122', CAST(N'2026-05-08T14:31:27.8633333' AS DateTime2), CAST(114500.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(114500.00 AS Decimal(18, 2)), N'Placed', N'Pending', 1, 0, 27, CAST(N'2026-05-08T14:31:27.863' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (123, 27, N'14922149-123', CAST(N'2026-05-29T11:07:46.2333333' AS DateTime2), CAST(139021.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(139021.00 AS Decimal(18, 2)), N'Placed', N'Pending', 1, 0, 27, CAST(N'2026-05-29T11:07:46.233' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (124, 27, N'15022150-124', CAST(N'2026-05-30T13:53:58.4800000' AS DateTime2), CAST(37389.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(37389.00 AS Decimal(18, 2)), N'Placed', N'Pending', 1, 0, 27, CAST(N'2026-05-30T13:53:58.480' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (125, 27, N'15022150-125', CAST(N'2026-05-30T13:55:28.3700000' AS DateTime2), CAST(38221.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(38221.00 AS Decimal(18, 2)), N'Placed', N'Pending', 1, 0, 27, CAST(N'2026-05-30T13:55:28.370' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImages] ON 
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (38, 19, 0, N'/Uploads/Product/4423d04b-4767-4188-b74a-01ba67d68f62.png', 1, 1, 0, 2, CAST(N'2026-03-13T12:48:43.137' AS DateTime), 2, CAST(N'2026-03-26T17:26:13.733' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (39, 19, 328, N'/Uploads/Product/0389c562-229e-4dbf-8fcd-10aade9909c9.jpg', 0, 1, 0, 2, CAST(N'2026-03-13T12:48:43.180' AS DateTime), 2, CAST(N'2026-03-13T12:48:43.180' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (42, 79, 0, N'/Uploads/Product/323fee99-5c8c-4b80-a458-8bc671eee6a0.jpg', 0, 1, 0, 2, CAST(N'2026-03-13T14:36:06.997' AS DateTime), 2, CAST(N'2026-03-13T14:41:51.743' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (49, 44, 0, N'/Uploads/Product/872b3d99-6678-4ff9-8447-446fb0710869.png', 1, 1, 0, 1, CAST(N'2026-03-17T15:42:15.907' AS DateTime), 2, CAST(N'2026-03-26T17:10:33.780' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (50, 44, 160, N'/Uploads/Product/eaf93004-796f-4b56-ae2a-b960b12b889d.jpg', 0, 1, 0, 1, CAST(N'2026-03-17T15:42:15.923' AS DateTime), 1, CAST(N'2026-03-17T15:42:15.923' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (51, 44, 161, N'/Uploads/Product/f2e3b568-bd47-4731-8906-d8e4643e9bdb.jpg', 0, 1, 0, 1, CAST(N'2026-03-17T15:42:15.923' AS DateTime), 1, CAST(N'2026-03-17T15:42:15.923' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (52, 45, 0, N'/Uploads/Product/f47bc85b-dfda-429a-8de2-20b048c3a484.png', 1, 1, 0, 1, CAST(N'2026-03-17T16:47:00.830' AS DateTime), 2, CAST(N'2026-03-26T17:10:02.487' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (53, 45, 162, N'/Uploads/Product/d58cc762-c1e3-483c-990f-b11ed5ad67e3.jpg', 0, 1, 0, 1, CAST(N'2026-03-17T16:47:00.863' AS DateTime), 0, CAST(N'2026-03-17T16:52:23.160' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (54, 45, 163, N'/Uploads/Product/81ee3dda-793b-4046-8e17-83753cf635da.png', 0, 1, 0, 1, CAST(N'2026-03-17T16:47:00.863' AS DateTime), 2, CAST(N'2026-03-26T17:10:02.487' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (55, 5, 0, N'/Uploads/Product/5fcd3d7f-2348-4fb5-a542-ffa0ca6faf4b.png', 1, 1, 0, 2, CAST(N'2026-03-18T09:00:22.140' AS DateTime), 2, CAST(N'2026-03-26T17:09:20.230' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (56, 5, 0, N'/Uploads/Product/a7db1e54-9044-4dfd-842a-aa20b31a28be.jpg', 0, 1, 0, 2, CAST(N'2026-03-18T09:02:02.220' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (57, 5, 0, N'/Uploads/Product/1a521808-b3d1-48a4-89e3-f686f100e3c2.jpg', 0, 1, 0, 2, CAST(N'2026-03-18T09:04:33.880' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (75, 3, 43, N'/Uploads/Product/6fb118e8-86c8-4dd2-84a6-8861279533e6.jpg', 1, 1, 0, 2, CAST(N'2026-03-19T09:53:48.067' AS DateTime), 2, CAST(N'2026-03-23T18:52:11.517' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (76, 3, 3, N'/Uploads/Product/e3a88bb6-175e-4dc9-87c6-ce4b654ce982.jpg', 0, 1, 0, 2, CAST(N'2026-03-19T09:54:08.023' AS DateTime), 2, CAST(N'2026-03-23T18:52:11.517' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (77, 3, 0, N'/Uploads/Product/6a27f169-684a-4dba-971e-e77a71524c6f.png', 0, 1, 0, 2, CAST(N'2026-03-19T09:57:57.620' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (78, 16, 0, N'/Uploads/Product/f38755f8-f29c-41d4-a064-3faaa60caa35.png', 0, 1, 0, 2, CAST(N'2026-03-19T10:23:20.793' AS DateTime), 0, CAST(N'2026-03-26T14:50:07.207' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (79, 16, 16, N'/Uploads/Product/19290a4f-dc97-42e6-9b09-63a54c188a2a.jpg', 0, 1, 0, 2, CAST(N'2026-03-19T10:23:20.810' AS DateTime), 2, CAST(N'2026-03-24T18:45:47.223' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (80, 46, 0, N'/Uploads/Product/18390757-b206-46f9-a8f2-bd9f030610d7.png', 1, 1, 0, 0, CAST(N'2026-03-19T12:35:48.667' AS DateTime), 0, CAST(N'2026-03-26T14:52:51.460' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (81, 16, 128, N'/Uploads/Product/b20f4003-75dc-4a5e-bb7d-ed1498b82a87.jpg', 0, 1, 0, 2, CAST(N'2026-03-21T15:57:23.583' AS DateTime), 2, CAST(N'2026-03-24T18:45:47.223' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (82, 16, 56, N'/Uploads/Product/4f1a18ba-e170-4f63-b5c2-c14e1beeaa1d.jpg', 0, 1, 0, 2, CAST(N'2026-03-21T15:57:23.583' AS DateTime), 2, CAST(N'2026-03-24T18:45:47.223' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (83, 16, 96, N'/Uploads/Product/e5738479-79ed-4957-9414-44b90e204f3a.png', 0, 1, 0, 2, CAST(N'2026-03-21T15:57:23.583' AS DateTime), 2, CAST(N'2026-03-24T18:45:47.223' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (84, 3, 0, N'/Uploads/Product/d2322f45-e3a0-4531-bcdf-bf028051e1aa.jpg', 0, 1, 0, 2, CAST(N'2026-03-23T18:39:24.820' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (85, 3, 141, N'/Uploads/Product/67070767-e956-4330-9b10-06a092d86ac5.jpg', 0, 1, 0, 2, CAST(N'2026-03-23T18:39:24.820' AS DateTime), 2, CAST(N'2026-03-23T18:52:11.517' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (86, 3, 166, N'/Uploads/Product/1622fd0b-1316-4194-b791-988537d36e04.jpg', 0, 1, 0, 2, CAST(N'2026-03-23T18:39:24.820' AS DateTime), 2, CAST(N'2026-03-23T18:52:11.517' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (87, 3, 83, N'/Uploads/Product/8101f543-2de7-4e67-bb6d-61fe61dcdd4a.jpg', 0, 1, 0, 2, CAST(N'2026-03-23T18:39:24.820' AS DateTime), 2, CAST(N'2026-03-23T18:52:11.517' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (88, 3, 0, N'/Uploads/Product/e588b5a2-28e5-4e31-8d14-3aaa2bfa1a16.jpg', 0, 1, 0, 2, CAST(N'2026-03-23T18:39:29.510' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (89, 3, 0, N'/Uploads/Product/28024831-21a6-4a89-8b72-af10c9f37bda.jpg', 0, 1, 0, 2, CAST(N'2026-03-23T18:46:06.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (90, 3, 0, N'/Uploads/Product/3acfbd1b-95d1-4922-b01a-4b879bee746c.jpg', 0, 1, 0, 2, CAST(N'2026-03-23T18:46:29.583' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (91, 3, 0, N'/Uploads/Product/b9484e6f-c172-4fd4-acfb-05186c7f0ffe.jpg', 0, 1, 0, 2, CAST(N'2026-03-23T18:52:11.390' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (92, 20, 0, N'/Uploads/Product/b644af32-d85e-47d5-99ad-ba53df61f6b6.jpg', 0, 1, 0, 2, CAST(N'2026-03-24T18:46:54.170' AS DateTime), 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (93, 36, 0, N'/Uploads/Product/244a7bef-1417-4ca3-b3d7-1de78fb3f7ad.jpg', 0, 1, 0, 2, CAST(N'2026-03-25T10:20:05.533' AS DateTime), 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (94, 36, 116, N'/Uploads/Product/a53c2c5c-6a75-4523-a3ff-89b2f64edfef.jpg', 0, 1, 0, 2, CAST(N'2026-03-25T10:20:05.567' AS DateTime), 2, CAST(N'2026-03-25T10:20:05.567' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (95, 30, 0, N'/Uploads/Product/7e4a53d1-4b8e-4bc2-8da9-5a35874201d3.jpg', 0, 1, 0, 2, CAST(N'2026-03-25T10:23:07.927' AS DateTime), 0, CAST(N'2026-03-26T12:51:35.937' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (96, 30, 135, N'/Uploads/Product/5bb1a1e9-d117-42c2-9dfc-e55e47705880.jpg', 0, 1, 0, 2, CAST(N'2026-03-25T10:23:07.940' AS DateTime), 2, CAST(N'2026-03-25T10:23:07.940' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (97, 9, 143, N'/Uploads/Product/9d6462db-5d20-46ce-a31f-0abdafef0ff8.jpg', 1, 1, 0, 2, CAST(N'2026-03-25T10:23:33.580' AS DateTime), 2, CAST(N'2026-03-25T10:23:33.580' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (98, 28, 28, N'/Uploads/Product/6f897046-2c2b-4eb8-8b15-10d135b82360.jpg', 1, 1, 0, 2, CAST(N'2026-03-25T10:24:19.323' AS DateTime), 2, CAST(N'2026-03-25T10:24:19.323' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (99, 28, 0, N'/Uploads/Product/6b8cf840-1dfe-4e6e-be21-00dc8e9d025a.png', 0, 1, 0, 0, CAST(N'2026-03-26T12:49:41.833' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (100, 28, 108, N'/Uploads/Product/14909626-993b-4f75-b2a6-b64a8538fcce.png', 0, 1, 0, 0, CAST(N'2026-03-26T12:49:41.850' AS DateTime), 0, CAST(N'2026-03-26T12:49:41.850' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (101, 28, 134, N'/Uploads/Product/6ace3b6f-6185-4bd4-9576-8b24ae92aeba.png', 0, 1, 0, 0, CAST(N'2026-03-26T12:49:41.850' AS DateTime), 0, CAST(N'2026-03-26T12:49:41.850' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (102, 28, 68, N'/Uploads/Product/c4d5d6b7-8069-4935-a5ab-3a5d1999e9a7.png', 0, 1, 0, 0, CAST(N'2026-03-26T12:49:41.850' AS DateTime), 0, CAST(N'2026-03-26T12:49:41.850' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (103, 30, 110, N'/Uploads/Product/e49893be-a749-4992-bda9-92106ccf6351.png', 0, 1, 0, 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime), 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (104, 30, 150, N'/Uploads/Product/42be7add-38e2-4f33-a5fc-a7d15c61f2c4.png', 0, 1, 0, 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime), 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (105, 30, 30, N'/Uploads/Product/9a096eda-2ba4-4019-ba61-51069c5f772f.png', 0, 1, 0, 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime), 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (106, 30, 70, N'/Uploads/Product/f161fed1-7ca3-4aac-9b4d-3db5474eebcf.png', 0, 1, 0, 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime), 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (107, 29, 0, N'/Uploads/Product/b7dc7038-7dfd-4720-a241-a9b392687823.png', 0, 1, 0, 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (108, 29, 109, N'/Uploads/Product/1b3c8654-beb2-4af7-aa7f-49079cd70b2d.png', 0, 1, 0, 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime), 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (109, 29, 29, N'/Uploads/Product/c5c74b30-86f4-464a-84ab-5bcea53c01ad.png', 0, 1, 0, 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime), 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (110, 29, 69, N'/Uploads/Product/76d41fe5-988a-4bce-bb10-3d7bea63c4ce.png', 0, 1, 0, 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime), 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (111, 26, 0, N'/Uploads/Product/f69f58f0-a579-42f5-a00f-71fda1cdd037.png', 0, 1, 0, 0, CAST(N'2026-03-26T12:53:54.183' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (112, 26, 106, N'/Uploads/Product/45f2fa54-84d6-47aa-a8b7-0e3f7a3ff371.png', 0, 1, 0, 0, CAST(N'2026-03-26T12:53:54.207' AS DateTime), 0, CAST(N'2026-03-26T12:53:54.207' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (113, 26, 133, N'/Uploads/Product/087ae7e5-f631-42fe-a847-20c4e27ecb9f.png', 0, 1, 0, 0, CAST(N'2026-03-26T12:53:54.207' AS DateTime), 0, CAST(N'2026-03-26T12:53:54.207' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (114, 26, 26, N'/Uploads/Product/922b42a3-3adf-4cc2-b038-662d2f379006.png', 0, 1, 0, 0, CAST(N'2026-03-26T12:53:54.207' AS DateTime), 0, CAST(N'2026-03-26T12:53:54.207' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (115, 26, 66, N'/Uploads/Product/861808b8-524d-4b19-994c-44e927a8563b.png', 0, 1, 0, 0, CAST(N'2026-03-26T12:53:54.207' AS DateTime), 0, CAST(N'2026-03-26T12:53:54.207' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (116, 27, 0, N'/Uploads/Product/cce753f2-06d3-47d4-80df-d8872ed8beaf.png', 0, 1, 0, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (117, 27, 107, N'/Uploads/Product/f7fefe73-43f7-454e-8c0e-de23e4f39dad.png', 0, 1, 0, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime), 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (118, 27, 149, N'/Uploads/Product/276c4d71-e833-446f-bea7-9e857f511adb.png', 0, 1, 0, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime), 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (119, 27, 27, N'/Uploads/Product/257b3246-7459-44fe-aa70-801a6b652274.png', 0, 1, 0, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime), 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (120, 27, 67, N'/Uploads/Product/1b723e99-ea70-4303-91c5-22d106def984.png', 0, 1, 0, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime), 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (121, 36, 138, N'/Uploads/Product/9ab96512-732a-47e2-b505-0f9a9cd198f0.png', 0, 1, 0, 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime), 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (122, 36, 152, N'/Uploads/Product/fe992a93-f713-4412-9851-846701e35b03.png', 0, 1, 0, 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime), 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (123, 36, 36, N'/Uploads/Product/6cfe2f65-0dda-4cc6-844d-7b1d077a8bd8.png', 0, 1, 0, 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime), 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (124, 36, 76, N'/Uploads/Product/9c2bb075-2e1e-4181-88c2-45aafa20a32a.png', 0, 1, 0, 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime), 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (125, 37, 0, N'/Uploads/Product/96c236b3-69b2-40fd-85a8-79af4311da57.png', 0, 1, 0, 0, CAST(N'2026-03-26T13:04:43.447' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (126, 37, 117, N'/Uploads/Product/5d95103d-1cb9-4191-b3c9-cb3bddee8427.png', 0, 1, 0, 0, CAST(N'2026-03-26T13:04:43.460' AS DateTime), 0, CAST(N'2026-03-26T13:04:43.460' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (127, 37, 37, N'/Uploads/Product/80605bb0-4ce5-466a-9361-bc480e6fa6ad.png', 0, 1, 0, 0, CAST(N'2026-03-26T13:04:43.460' AS DateTime), 0, CAST(N'2026-03-26T13:04:43.460' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (128, 37, 77, N'/Uploads/Product/8a4f8bdf-1fd9-40a5-94d1-e54e8517bdcf.png', 0, 1, 0, 0, CAST(N'2026-03-26T13:04:43.460' AS DateTime), 0, CAST(N'2026-03-26T13:04:43.460' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (129, 38, 0, N'/Uploads/Product/cf4d469e-6d49-4d55-ac73-14ea6aa5284f.png', 0, 1, 0, 0, CAST(N'2026-03-26T13:05:36.973' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (130, 38, 118, N'/Uploads/Product/bf1d6433-eca5-4bc0-bef6-fedc12de6eb6.png', 0, 1, 0, 0, CAST(N'2026-03-26T13:05:37.007' AS DateTime), 0, CAST(N'2026-03-26T13:05:37.007' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (131, 38, 139, N'/Uploads/Product/f7cd6bef-ec5a-474e-94f2-1bd991efe11c.png', 0, 1, 0, 0, CAST(N'2026-03-26T13:05:37.007' AS DateTime), 0, CAST(N'2026-03-26T13:05:37.007' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (132, 38, 38, N'/Uploads/Product/8556dfeb-0c55-4f40-8b70-883758b30a20.png', 0, 1, 0, 0, CAST(N'2026-03-26T13:05:37.007' AS DateTime), 0, CAST(N'2026-03-26T13:05:37.007' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (133, 38, 78, N'/Uploads/Product/4eaaf381-56dc-433f-9298-b8906ee80282.png', 0, 1, 0, 0, CAST(N'2026-03-26T13:05:37.007' AS DateTime), 0, CAST(N'2026-03-26T13:05:37.007' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (134, 39, 0, N'/Uploads/Product/06d2f714-0cad-47bb-921e-1994bafca481.png', 0, 1, 0, 0, CAST(N'2026-03-26T13:06:24.180' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (135, 39, 119, N'/Uploads/Product/8a102de8-634b-4b14-a97b-255dff4b3beb.png', 0, 1, 0, 0, CAST(N'2026-03-26T13:06:24.287' AS DateTime), 0, CAST(N'2026-03-26T13:06:24.287' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (136, 39, 153, N'/Uploads/Product/0ab72eae-290f-45d3-93d5-5a2088366d47.png', 0, 1, 0, 0, CAST(N'2026-03-26T13:06:24.287' AS DateTime), 0, CAST(N'2026-03-26T13:06:24.287' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (137, 39, 39, N'/Uploads/Product/5abe9b53-dae6-4b1e-b1b5-c4a92b8b275c.png', 0, 1, 0, 0, CAST(N'2026-03-26T13:06:24.287' AS DateTime), 0, CAST(N'2026-03-26T13:06:24.287' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (138, 39, 79, N'/Uploads/Product/02fd6532-b098-4f6a-ae9d-b439cb48d2f4.png', 0, 1, 0, 0, CAST(N'2026-03-26T13:06:24.287' AS DateTime), 0, CAST(N'2026-03-26T13:06:24.287' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (139, 40, 0, N'/Uploads/Product/f48d5aa7-f885-4aa0-bac8-54a6382a04cb.png', 0, 1, 0, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (140, 40, 120, N'/Uploads/Product/6be4d335-8f23-4648-b36a-0a97bfd2df5c.png', 0, 1, 0, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime), 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (141, 40, 140, N'/Uploads/Product/ca61f8af-acba-46e1-8444-3d56219229e7.png', 0, 1, 0, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime), 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (142, 40, 40, N'/Uploads/Product/ab7e10b7-a9ec-441a-adad-774588cb23bb.png', 0, 1, 0, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime), 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (143, 40, 80, N'/Uploads/Product/eab95e4b-61ad-4599-8a56-6cb34f956b13.png', 0, 1, 0, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime), 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (144, 21, 0, N'/Uploads/Product/f8658108-bc2c-447b-bf84-c9d5b8d62cd1.png', 0, 1, 0, 0, CAST(N'2026-03-26T14:35:08.493' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (145, 21, 101, N'/Uploads/Product/7e9d9ee2-fa4a-4721-80a9-0cc908f85b29.png', 0, 1, 0, 0, CAST(N'2026-03-26T14:35:08.650' AS DateTime), 0, CAST(N'2026-03-26T14:35:08.667' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (146, 21, 147, N'/Uploads/Product/30106c8d-488c-435f-bde8-7603113b0385.png', 0, 1, 0, 0, CAST(N'2026-03-26T14:35:08.650' AS DateTime), 0, CAST(N'2026-03-26T14:35:08.667' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (147, 21, 21, N'/Uploads/Product/95e8d188-4942-429e-8bc8-a9cac8650cd2.png', 0, 1, 0, 0, CAST(N'2026-03-26T14:35:08.650' AS DateTime), 0, CAST(N'2026-03-26T14:35:08.667' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (148, 21, 61, N'/Uploads/Product/cbcc7544-6f4f-4076-bbf1-45592dfe557b.png', 0, 1, 0, 0, CAST(N'2026-03-26T14:35:08.650' AS DateTime), 0, CAST(N'2026-03-26T14:35:08.667' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (149, 22, 0, N'/Uploads/Product/07b12f5a-ef16-457b-bf0b-094c69f2e562.png', 0, 1, 0, 0, CAST(N'2026-03-26T14:36:12.453' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (150, 22, 102, N'/Uploads/Product/8f936cfb-7b55-4994-a3fb-f26053f362a5.png', 0, 1, 0, 0, CAST(N'2026-03-26T14:36:12.580' AS DateTime), 0, CAST(N'2026-03-26T14:36:12.597' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (151, 22, 131, N'/Uploads/Product/5b4f845c-eea4-404e-af1b-a74aba0e8a5d.png', 0, 1, 0, 0, CAST(N'2026-03-26T14:36:12.580' AS DateTime), 0, CAST(N'2026-03-26T14:36:12.597' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (152, 22, 22, N'/Uploads/Product/5ed64a44-2fca-47c1-a5b2-be29f25ba648.png', 0, 1, 0, 0, CAST(N'2026-03-26T14:36:12.580' AS DateTime), 0, CAST(N'2026-03-26T14:36:12.597' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (153, 22, 62, N'/Uploads/Product/a91f5228-497e-44ce-b10e-94bb454b0e62.png', 0, 1, 0, 0, CAST(N'2026-03-26T14:36:12.580' AS DateTime), 0, CAST(N'2026-03-26T14:36:12.597' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (154, 23, 0, N'/Uploads/Product/9919d869-295c-4291-98ec-7cdce086af0e.png', 0, 1, 0, 0, CAST(N'2026-03-26T14:37:17.910' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (155, 23, 103, N'/Uploads/Product/a3853b4b-84ce-4e7c-b788-8cf4e39f79d1.png', 0, 1, 0, 0, CAST(N'2026-03-26T14:37:17.940' AS DateTime), 0, CAST(N'2026-03-26T14:37:17.940' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (156, 23, 23, N'/Uploads/Product/09cad0dd-6aca-4ae4-ae2b-02400e8f4017.png', 0, 1, 0, 0, CAST(N'2026-03-26T14:37:17.940' AS DateTime), 0, CAST(N'2026-03-26T14:37:17.940' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (157, 23, 63, N'/Uploads/Product/1260536a-f7a7-455e-80d7-db841d196749.png', 0, 1, 0, 0, CAST(N'2026-03-26T14:37:17.940' AS DateTime), 0, CAST(N'2026-03-26T14:37:17.940' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (158, 24, 0, N'/Uploads/Product/e6db77d6-63e0-44cb-a466-f5de801f848a.png', 0, 1, 0, 0, CAST(N'2026-03-26T14:39:15.153' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (159, 24, 104, N'/Uploads/Product/23994065-039e-49e8-8e9d-99817e3d96db.png', 0, 1, 0, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime), 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (160, 24, 132, N'/Uploads/Product/20763be0-cb28-4bd5-90f8-95b2f82e7e8c.png', 0, 1, 0, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime), 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (161, 24, 148, N'/Uploads/Product/38a36236-87fd-4fe6-9104-8e9578ed0c1a.png', 0, 1, 0, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime), 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (162, 24, 24, N'/Uploads/Product/27af9f4a-eff6-407b-a107-da78d7b83d4c.png', 0, 1, 0, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime), 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (163, 24, 64, N'/Uploads/Product/374ddd97-367b-4c68-85ff-8df6f1fc825d.png', 0, 1, 0, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime), 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (164, 25, 0, N'/Uploads/Product/78fb5d29-6170-40e7-ac89-6eb494a8f9ef.png', 0, 1, 0, 0, CAST(N'2026-03-26T14:43:47.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (165, 25, 105, N'/Uploads/Product/4e6ae303-ad75-4fb7-92b2-7f8516dde929.png', 0, 1, 0, 0, CAST(N'2026-03-26T14:43:47.680' AS DateTime), 0, CAST(N'2026-03-26T14:43:47.680' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (166, 25, 25, N'/Uploads/Product/6fa2612c-fbcb-4cfb-835a-0efaf7cffd30.png', 0, 1, 0, 0, CAST(N'2026-03-26T14:43:47.680' AS DateTime), 0, CAST(N'2026-03-26T14:43:47.680' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (167, 25, 65, N'/Uploads/Product/e9e445c0-35a4-4eb4-bf18-0ae25ddfad21.png', 0, 1, 0, 0, CAST(N'2026-03-26T14:43:47.680' AS DateTime), 0, CAST(N'2026-03-26T14:43:47.680' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (168, 47, 0, N'/Uploads/Product/7f601bcf-a506-41f4-ae79-2656465ea4b1.png', 1, 0, 1, 2, CAST(N'2026-03-26T14:44:52.657' AS DateTime), 2, CAST(N'2026-03-26T14:49:02.510' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (169, 20, 100, N'/Uploads/Product/e164afae-d956-4202-80dc-63313b083316.png', 0, 1, 0, 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime), 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (170, 20, 130, N'/Uploads/Product/e216e5b9-215f-4c3f-ba3d-9da19e95bffe.png', 0, 1, 0, 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime), 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (171, 20, 20, N'/Uploads/Product/cd5d867b-5f5e-4522-a26f-0861a3832eae.png', 0, 1, 0, 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime), 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (172, 20, 60, N'/Uploads/Product/384086ed-3857-4202-abce-5fec4947ec60.png', 0, 1, 0, 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime), 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (173, 48, 0, N'/Uploads/Product/bc7d2b56-aa52-4620-bb02-8f68891559bf.jpg', 1, 0, 1, 2, CAST(N'2026-03-26T14:50:27.910' AS DateTime), 0, CAST(N'2026-03-26T16:38:21.143' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (174, 48, 169, N'/Uploads/Product/dfea0a2b-4c56-48ac-8123-5c4264cbdf1a.jpg', 0, 0, 1, 2, CAST(N'2026-03-26T14:50:27.923' AS DateTime), 0, CAST(N'2026-03-26T16:38:21.143' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (175, 48, 170, N'/Uploads/Product/71b2634d-4511-4249-9794-18e819717112.jpg', 0, 0, 1, 2, CAST(N'2026-03-26T14:50:27.923' AS DateTime), 0, CAST(N'2026-03-26T16:38:21.143' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (176, 49, 0, N'/Uploads/Product/c1d79395-805b-4f38-a8fd-b37780cba766.jpg', 1, 0, 1, 2, CAST(N'2026-03-26T14:59:22.603' AS DateTime), 0, CAST(N'2026-03-26T16:38:12.917' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (177, 49, 171, N'/Uploads/Product/081919ff-08ab-4d3b-8398-79387cb1f5b5.jpg', 0, 0, 1, 2, CAST(N'2026-03-26T14:59:22.603' AS DateTime), 0, CAST(N'2026-03-26T16:38:12.917' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (178, 49, 172, N'/Uploads/Product/d5b1d373-777a-415b-8ebb-6366d9ca48c8.jpg', 0, 0, 1, 2, CAST(N'2026-03-26T14:59:22.603' AS DateTime), 0, CAST(N'2026-03-26T16:38:12.917' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (179, 17, 0, N'/Uploads/Product/3877b09c-f798-4ce2-9c06-d75c943fdd50.png', 0, 1, 0, 0, CAST(N'2026-03-26T15:00:42.130' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (180, 17, 17, N'/Uploads/Product/98fb9722-080a-4916-9c58-a022266358dc.png', 0, 1, 0, 0, CAST(N'2026-03-26T15:00:42.143' AS DateTime), 0, CAST(N'2026-03-26T15:00:42.143' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (181, 17, 57, N'/Uploads/Product/2568745a-5111-404d-8462-21e5da9bcc8a.png', 0, 1, 0, 0, CAST(N'2026-03-26T15:00:42.143' AS DateTime), 0, CAST(N'2026-03-26T15:00:42.143' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (182, 17, 97, N'/Uploads/Product/d9f0c286-43aa-465d-84f8-09928d26c5c3.png', 0, 1, 0, 0, CAST(N'2026-03-26T15:00:42.143' AS DateTime), 0, CAST(N'2026-03-26T15:00:42.143' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (183, 18, 0, N'/Uploads/Product/74d9c627-5bf6-4795-9937-03e142c3d7f9.png', 0, 1, 0, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (184, 18, 129, N'/Uploads/Product/59e48e0c-de89-445c-a6f5-0eeb1f073e9b.png', 0, 1, 0, 0, CAST(N'2026-03-26T15:01:42.240' AS DateTime), 0, CAST(N'2026-03-26T15:01:42.240' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (185, 18, 146, N'/Uploads/Product/0075c57a-dad2-48b4-bb5c-9a582984e90a.png', 0, 1, 0, 0, CAST(N'2026-03-26T15:01:42.240' AS DateTime), 0, CAST(N'2026-03-26T15:01:42.240' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (186, 18, 18, N'/Uploads/Product/2df5d97a-7a65-42e8-a081-d54a8bcf497b.png', 0, 1, 0, 0, CAST(N'2026-03-26T15:01:42.240' AS DateTime), 0, CAST(N'2026-03-26T15:01:42.240' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (187, 18, 58, N'/Uploads/Product/ab95022a-139f-4d82-bcd3-1721464b65f8.png', 0, 1, 0, 0, CAST(N'2026-03-26T15:01:42.240' AS DateTime), 0, CAST(N'2026-03-26T15:01:42.240' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (188, 18, 98, N'/Uploads/Product/1d9e1475-f2ab-4af4-8e12-e8d1ae167604.png', 0, 1, 0, 0, CAST(N'2026-03-26T15:01:42.240' AS DateTime), 0, CAST(N'2026-03-26T15:01:42.240' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (189, 11, 0, N'/Uploads/Product/4b8bea8e-f760-4956-9225-e7befdc2d6c3.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:43:06.873' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (190, 11, 11, N'/Uploads/Product/7a8bdab1-a4a9-426d-9d49-450a6d79d637.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:43:06.887' AS DateTime), 0, CAST(N'2026-03-26T16:43:06.887' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (191, 11, 51, N'/Uploads/Product/c335d10a-d83a-4b4a-b7cf-560f5ada2427.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:43:06.887' AS DateTime), 0, CAST(N'2026-03-26T16:43:06.887' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (192, 11, 91, N'/Uploads/Product/cd39c8f0-4a9f-4699-93ce-2e1648584be7.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:43:06.887' AS DateTime), 0, CAST(N'2026-03-26T16:43:06.887' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (193, 12, 0, N'/Uploads/Product/9b2572cd-3af8-4f22-a279-a7bedb8af0be.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (194, 12, 12, N'/Uploads/Product/fe602018-6a11-4ecd-ac70-53d43b5560e3.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (195, 12, 126, N'/Uploads/Product/136404d3-563c-4bb4-8c1b-1ed4d29bfe9b.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (196, 12, 144, N'/Uploads/Product/39a867fd-01eb-4fdc-a88d-f5fdc3f8aab3.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (197, 12, 52, N'/Uploads/Product/1f2957b6-d267-47cc-a28d-45436c94aefd.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (198, 12, 92, N'/Uploads/Product/c8c4d3b9-7386-46f8-b608-0b1247209dc3.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (199, 13, 0, N'/Uploads/Product/0bdd1814-2b92-4f6a-ba5c-e3e4e93e7371.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (200, 13, 13, N'/Uploads/Product/793b88a6-e9f4-4119-8aa4-cf57eaf11401.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime), 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (201, 13, 53, N'/Uploads/Product/ba7054b0-7841-44c7-81ac-0c2ff7caa6d7.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime), 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (202, 13, 93, N'/Uploads/Product/f2ead215-f947-4d58-99ec-3f8792159caa.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime), 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (203, 14, 0, N'/Uploads/Product/5e5f1863-40ba-485a-a21e-1b38554787ac.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (204, 14, 127, N'/Uploads/Product/eb627d1a-0c60-46b1-8a3c-e34814c949e6.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime), 0, CAST(N'2026-03-26T16:45:30.223' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (205, 14, 14, N'/Uploads/Product/5306727b-5157-4c13-881a-98630e104fd5.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime), 0, CAST(N'2026-03-26T16:45:30.223' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (206, 14, 54, N'/Uploads/Product/4efab560-3069-4551-9dbd-45b3c4651307.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime), 0, CAST(N'2026-03-26T16:45:30.223' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (207, 14, 94, N'/Uploads/Product/3eb49e37-f7c1-49e3-9be0-36d8305e8aa1.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime), 0, CAST(N'2026-03-26T16:45:30.223' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (208, 15, 0, N'/Uploads/Product/0ae05ee1-2509-4771-a4e0-c1bb822075d4.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:46:19.510' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (209, 15, 145, N'/Uploads/Product/81533968-d1e6-4aad-9812-5d81e637dbb2.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:46:19.540' AS DateTime), 0, CAST(N'2026-03-26T16:46:19.540' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (210, 15, 15, N'/Uploads/Product/99f89008-0ca5-44c8-9d60-252482d9f408.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:46:19.540' AS DateTime), 0, CAST(N'2026-03-26T16:46:19.540' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (211, 15, 55, N'/Uploads/Product/36614b11-93e5-43ee-982d-b5126e3b6397.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:46:19.540' AS DateTime), 0, CAST(N'2026-03-26T16:46:19.540' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (212, 15, 95, N'/Uploads/Product/d89b9edd-e063-4500-9c8e-4436eee55bd9.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:46:19.540' AS DateTime), 0, CAST(N'2026-03-26T16:46:19.540' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (213, 9, 0, N'/Uploads/Product/940700e6-ac1d-4070-8e6f-9ef7d64e6016.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:53:49.867' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (214, 9, 49, N'/Uploads/Product/69e20248-e1ab-4a82-b78f-a7099b8c41ac.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:53:49.880' AS DateTime), 0, CAST(N'2026-03-26T16:53:49.880' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (215, 9, 89, N'/Uploads/Product/f0d2003d-b880-4884-a371-29057241a3e3.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:53:49.880' AS DateTime), 0, CAST(N'2026-03-26T16:53:49.880' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (216, 9, 9, N'/Uploads/Product/00c92602-8c81-4eb9-86d2-c3802b55e96f.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:53:49.880' AS DateTime), 0, CAST(N'2026-03-26T16:53:49.880' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (217, 6, 0, N'/Uploads/Product/d6cf4fea-d416-4678-9ea7-e8e92ae045d6.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:55:08.650' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (218, 6, 123, N'/Uploads/Product/80fed5dc-9dba-45da-8882-d6359c987327.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:55:08.677' AS DateTime), 0, CAST(N'2026-03-26T16:55:08.677' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (219, 6, 142, N'/Uploads/Product/b77f8edc-403a-483d-a807-1969170c2942.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:55:08.677' AS DateTime), 0, CAST(N'2026-03-26T16:55:08.677' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (220, 6, 46, N'/Uploads/Product/9865594d-5909-4c1c-9d17-8e76cf59d0cf.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:55:08.677' AS DateTime), 0, CAST(N'2026-03-26T16:55:08.677' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (221, 6, 6, N'/Uploads/Product/7f671796-1df0-4330-8188-70616e172f20.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:55:08.677' AS DateTime), 0, CAST(N'2026-03-26T16:55:08.677' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (222, 6, 86, N'/Uploads/Product/0a05d3ae-1952-46ab-8fe4-1833b4654390.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:55:08.677' AS DateTime), 0, CAST(N'2026-03-26T16:55:08.677' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (223, 10, 0, N'/Uploads/Product/32cb7744-f586-430f-ab01-5992871f6d0c.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:56:00.830' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (224, 10, 10, N'/Uploads/Product/e572e725-8aa3-462c-a6fb-80b5d89dde4c.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime), 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (225, 10, 125, N'/Uploads/Product/f98d2a92-59e4-477e-adfb-ac06a39d3de3.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime), 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (226, 10, 50, N'/Uploads/Product/8995b24d-dd7c-40b5-915d-baa6156e963e.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime), 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (227, 10, 90, N'/Uploads/Product/78a6df7a-c46a-4275-8e38-bd1b5b92bce6.png', 0, 1, 0, 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime), 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (228, 7, 0, N'/Uploads/Product/fa43b6aa-3560-45d8-9eb3-615aa3beacb6.png', 0, 1, 0, 2, CAST(N'2026-03-26T16:57:49.663' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (229, 7, 47, N'/Uploads/Product/9fa85cc4-382c-4aa1-9ee5-e48b143e3aa5.png', 0, 1, 0, 2, CAST(N'2026-03-26T16:57:49.680' AS DateTime), 2, CAST(N'2026-03-26T16:57:49.680' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (230, 7, 7, N'/Uploads/Product/52e48b0a-ad24-4380-a936-a74c49421b2a.png', 0, 1, 0, 2, CAST(N'2026-03-26T16:57:49.680' AS DateTime), 2, CAST(N'2026-03-26T16:57:49.680' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (231, 7, 87, N'/Uploads/Product/9c9b4e03-d798-4859-b2e3-11c564cee53f.png', 0, 1, 0, 2, CAST(N'2026-03-26T16:57:49.680' AS DateTime), 2, CAST(N'2026-03-26T16:57:49.680' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (232, 8, 0, N'/Uploads/Product/33298aee-e315-4ebb-a484-eb0b116dfb5d.png', 0, 1, 0, 2, CAST(N'2026-03-26T16:59:00.663' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (233, 8, 124, N'/Uploads/Product/c40bbf1d-0fa7-48f7-85c5-8c0d9ce3bcb8.png', 0, 1, 0, 2, CAST(N'2026-03-26T16:59:00.697' AS DateTime), 2, CAST(N'2026-03-26T16:59:00.710' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (234, 8, 48, N'/Uploads/Product/2a111981-fdd1-4d0e-acb1-9fd28c4a4a49.png', 0, 1, 0, 2, CAST(N'2026-03-26T16:59:00.697' AS DateTime), 2, CAST(N'2026-03-26T16:59:00.710' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (235, 8, 8, N'/Uploads/Product/85eada90-2afb-4ed4-ad6b-de5365f793bf.png', 0, 1, 0, 2, CAST(N'2026-03-26T16:59:00.697' AS DateTime), 2, CAST(N'2026-03-26T16:59:00.710' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (236, 8, 88, N'/Uploads/Product/3c9a837b-de9a-4781-b2cf-a9ab2fa8e79f.png', 0, 1, 0, 2, CAST(N'2026-03-26T16:59:00.697' AS DateTime), 2, CAST(N'2026-03-26T16:59:00.710' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (237, 3, 0, N'/Uploads/Product/eb5d1011-c666-4b99-8c14-4ee3a76a74c9.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:07:45.520' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (238, 4, 0, N'/Uploads/Product/af8388b3-112f-4960-9f7d-c9a46b37070e.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:08:32.330' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (239, 4, 122, N'/Uploads/Product/7d4e66d0-bc05-4d66-98a4-42610809948a.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime), 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (240, 4, 165, N'/Uploads/Product/28e856a5-239d-4b37-93a9-b57d590d892a.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime), 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (241, 4, 4, N'/Uploads/Product/d47d5ca0-1198-4b06-a54b-85baed48bba2.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime), 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (242, 4, 44, N'/Uploads/Product/68cf1820-8027-4c05-800b-ab9cdaa6714b.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime), 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (243, 4, 84, N'/Uploads/Product/e2c8a615-33ef-4f41-aa5e-d357224abaa0.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime), 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (244, 1, 0, N'/Uploads/Product/ec283b82-d3f5-461a-bf89-0cdd5602b0b1.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:12:54.153' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (245, 1, 1, N'/Uploads/Product/c1e98b06-0a05-47c5-8476-e0db1fdb93c7.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:12:54.183' AS DateTime), 2, CAST(N'2026-03-26T17:12:54.183' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (246, 1, 41, N'/Uploads/Product/dc80050d-22ef-4d05-b7b6-7bff480b0d31.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:12:54.183' AS DateTime), 2, CAST(N'2026-03-26T17:12:54.183' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (247, 1, 81, N'/Uploads/Product/bbd801c4-4670-43e4-9fec-1d06b350cfa3.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:12:54.183' AS DateTime), 2, CAST(N'2026-03-26T17:12:54.183' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (248, 2, 0, N'/Uploads/Product/e8c2fcc8-bf18-4306-8cf8-a5d9ca26ef07.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (249, 2, 121, N'/Uploads/Product/510c9c25-1f98-4a13-a2b0-4e003e02c7f4.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime), 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (250, 2, 2, N'/Uploads/Product/2d535da7-a639-4529-9a07-1e6ecb3b57bb.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime), 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (251, 2, 42, N'/Uploads/Product/aced2843-47be-4e98-bb9a-e94230897c42.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime), 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (252, 2, 82, N'/Uploads/Product/ff87de73-a7c3-4faa-ac19-7da76c46c605.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime), 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (253, 31, 0, N'/Uploads/Product/8aae8471-2644-459e-b0e2-a1f17d27d64b.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (254, 31, 111, N'/Uploads/Product/21ec0e23-9359-42c4-84bb-9feae3df2ac1.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime), 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (255, 31, 31, N'/Uploads/Product/6ce93617-6f96-45ed-a095-102b0d5c7a8e.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime), 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (256, 31, 71, N'/Uploads/Product/9e56a6af-d579-43ad-a91c-82888094da0c.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime), 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (257, 32, 0, N'/Uploads/Product/797f2cac-d087-4fb8-9ef6-1e74474a6099.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:21:42.497' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (258, 32, 112, N'/Uploads/Product/677c9b84-2c15-493f-ae00-38bf874adaef.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:21:42.510' AS DateTime), 2, CAST(N'2026-03-26T17:21:42.510' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (259, 32, 136, N'/Uploads/Product/dc178821-cdfe-48c8-972d-7754e0b10e1f.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:21:42.510' AS DateTime), 2, CAST(N'2026-03-26T17:21:42.510' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (260, 32, 32, N'/Uploads/Product/2b41eb3b-e4ee-4903-8d82-bd6839c8783d.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:21:42.510' AS DateTime), 2, CAST(N'2026-03-26T17:21:42.510' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (261, 32, 72, N'/Uploads/Product/7f66b9f9-63e2-4f70-bc62-433269ac8418.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:21:42.510' AS DateTime), 2, CAST(N'2026-03-26T17:21:42.510' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (262, 33, 0, N'/Uploads/Product/ce7af76c-e61f-4170-9b61-ea8c9f37bee3.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (263, 33, 113, N'/Uploads/Product/a92bdf0d-e1fb-47d8-bb1f-153afe156960.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime), 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (264, 33, 151, N'/Uploads/Product/405e6e90-7e2f-4b37-90bf-d63a20f94047.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime), 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (265, 33, 33, N'/Uploads/Product/8f5819d2-0578-433f-b0ec-364ea47e6d9d.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime), 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (266, 33, 73, N'/Uploads/Product/26d3fd7a-208a-408e-bd29-7c19c994a23b.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime), 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (267, 34, 0, N'/Uploads/Product/67a17a01-58c9-4617-9cfc-24decf79c514.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:23:46.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (268, 34, 114, N'/Uploads/Product/04da6dba-9ece-41b9-9cd5-2330b49394c7.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:23:46.317' AS DateTime), 2, CAST(N'2026-03-26T17:23:46.317' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (269, 34, 137, N'/Uploads/Product/eb820cfb-fb2a-4d82-939c-476e3c9b02ae.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:23:46.317' AS DateTime), 2, CAST(N'2026-03-26T17:23:46.317' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (270, 34, 34, N'/Uploads/Product/64538c65-28ae-4748-b75a-49f4ef4f1896.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:23:46.317' AS DateTime), 2, CAST(N'2026-03-26T17:23:46.317' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (271, 34, 74, N'/Uploads/Product/c19f7f23-b7f8-4594-862f-9bcc5a87965d.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:23:46.317' AS DateTime), 2, CAST(N'2026-03-26T17:23:46.317' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (272, 35, 0, N'/Uploads/Product/31984943-0224-4966-982b-05e8240dc530.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:24:40.023' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (273, 35, 115, N'/Uploads/Product/5561f149-714a-4c16-bbac-a95ad146b1e6.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:24:40.050' AS DateTime), 2, CAST(N'2026-03-26T17:24:40.050' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (274, 35, 35, N'/Uploads/Product/f19c9579-80d5-4896-9673-49441d2848d2.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:24:40.050' AS DateTime), 2, CAST(N'2026-03-26T17:24:40.050' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (275, 35, 75, N'/Uploads/Product/76b1c768-930f-4e9a-9a6f-36005d72ebe2.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:24:40.050' AS DateTime), 2, CAST(N'2026-03-26T17:24:40.050' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (276, 19, 19, N'/Uploads/Product/fd1a65ad-9cab-4e5a-a534-41d24ed894d3.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:26:13.847' AS DateTime), 2, CAST(N'2026-03-26T17:26:13.847' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (277, 19, 59, N'/Uploads/Product/8564ad9a-703e-4ebd-adc3-32bef2a7d222.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:26:13.847' AS DateTime), 2, CAST(N'2026-03-26T17:26:13.847' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (278, 19, 99, N'/Uploads/Product/b3579cca-7edc-4699-95ce-4974a8ee8c2e.png', 0, 1, 0, 2, CAST(N'2026-03-26T17:26:13.847' AS DateTime), 2, CAST(N'2026-03-26T17:26:13.847' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (279, 50, 0, N'/Uploads/Product/e814a14f-456e-4b62-8c28-6e57b3a4212b.png', 1, 0, 1, 1, CAST(N'2026-06-01T15:01:37.027' AS DateTime), 2, CAST(N'2026-06-01T15:35:35.687' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (281, 51, 174, N'/Uploads/Product/d707b605-50bd-4812-ac1a-e41bc1b97808.png', 0, 1, 0, 1, CAST(N'2026-06-01T15:06:30.450' AS DateTime), 1, CAST(N'2026-06-01T15:06:30.450' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (282, 51, 0, N'/Uploads/Product/0d036de2-9c7d-4c89-bda0-50d5a64149f0.png', 0, 1, 0, 1, CAST(N'2026-06-01T15:32:35.047' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (283, 51, 175, N'/Uploads/Product/59a6a6df-5999-476c-879d-fd6b578ef4b7.png', 0, 1, 0, 1, CAST(N'2026-06-01T15:32:35.063' AS DateTime), 1, CAST(N'2026-06-01T15:32:35.063' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (284, 51, 0, N'/Uploads/Product/ca3eae70-14fb-4f9f-ad36-4ae195d4da84.png', 0, 1, 0, 1, CAST(N'2026-06-01T15:34:53.587' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (285, 51, 176, N'/Uploads/Product/e7e49643-0620-41c4-b907-feb3fa81825e.png', 0, 1, 0, 1, CAST(N'2026-06-01T15:34:53.633' AS DateTime), 1, CAST(N'2026-06-01T15:34:53.633' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (286, 52, 0, N'/Uploads/Product/dc30ea8e-d821-43d6-b4b4-7628766537d5.png', 0, 1, 0, 2, CAST(N'2026-06-01T15:36:34.113' AS DateTime), 2, CAST(N'2026-06-01T15:36:45.650' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (287, 52, 177, N'/Uploads/Product/51d37e5a-9b7e-49a2-af9e-981480b9fb8d.png', 0, 1, 0, 2, CAST(N'2026-06-01T15:36:34.113' AS DateTime), 2, CAST(N'2026-06-01T15:36:34.113' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (288, 53, 0, N'/Uploads/Product/7ae97cdb-4c30-452d-b059-a077040aed2a.png', 1, 1, 0, 1, CAST(N'2026-06-01T15:39:37.440' AS DateTime), 1, CAST(N'2026-06-01T15:49:50.910' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (289, 53, 178, N'/Uploads/Product/2cfb0ae2-7bf6-4236-8664-86426e77d00d.png', 0, 1, 0, 1, CAST(N'2026-06-01T15:39:37.480' AS DateTime), 1, CAST(N'2026-06-01T15:49:50.993' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ProductImages] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductPriceHistory] ON 
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (1, 16, 128, CAST(50400.00 AS Decimal(18, 2)), CAST(N'2026-03-19T12:11:33.010' AS DateTime), NULL, 0, CAST(N'2026-03-19T12:11:33.010' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (2, 16, 16, CAST(50100.00 AS Decimal(18, 2)), CAST(N'2026-03-19T12:11:33.020' AS DateTime), CAST(N'2026-03-19T12:12:15.950' AS DateTime), 0, CAST(N'2026-03-19T12:11:33.020' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (3, 16, 56, CAST(50200.00 AS Decimal(18, 2)), CAST(N'2026-03-19T12:11:33.020' AS DateTime), NULL, 0, CAST(N'2026-03-19T12:11:33.020' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (4, 16, 96, CAST(50300.00 AS Decimal(18, 2)), CAST(N'2026-03-19T12:11:33.020' AS DateTime), NULL, 0, CAST(N'2026-03-19T12:11:33.020' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (5, 16, 16, CAST(50500.00 AS Decimal(18, 2)), CAST(N'2026-03-19T12:12:15.950' AS DateTime), NULL, 0, CAST(N'2026-03-19T12:12:15.950' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (6, 46, 160, NULL, CAST(N'2026-03-19T12:35:48.667' AS DateTime), CAST(N'2026-03-19T12:37:34.297' AS DateTime), 0, CAST(N'2026-03-19T12:35:48.667' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (7, 46, 160, NULL, CAST(N'2026-03-19T12:37:34.310' AS DateTime), CAST(N'2026-03-19T12:40:00.390' AS DateTime), 0, CAST(N'2026-03-19T12:37:34.310' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (8, 46, 160, NULL, CAST(N'2026-03-19T12:40:00.407' AS DateTime), CAST(N'2026-03-19T12:43:50.440' AS DateTime), 0, CAST(N'2026-03-19T12:40:00.407' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (9, 46, 160, CAST(100.00 AS Decimal(18, 2)), CAST(N'2026-03-19T12:43:50.440' AS DateTime), NULL, 0, CAST(N'2026-03-19T12:43:50.440' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (10, 46, 167, CAST(0.00 AS Decimal(18, 2)), CAST(N'2026-03-23T18:38:05.880' AS DateTime), CAST(N'2026-03-24T11:47:04.203' AS DateTime), 2, CAST(N'2026-03-23T18:38:05.880' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (11, 3, 141, CAST(37356.00 AS Decimal(18, 2)), CAST(N'2026-03-23T18:39:24.820' AS DateTime), NULL, 2, CAST(N'2026-03-23T18:39:24.820' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (12, 3, 166, CAST(30000.00 AS Decimal(18, 2)), CAST(N'2026-03-23T18:39:24.820' AS DateTime), NULL, 2, CAST(N'2026-03-23T18:39:24.820' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (13, 3, 3, CAST(35311.00 AS Decimal(18, 2)), CAST(N'2026-03-23T18:39:24.820' AS DateTime), NULL, 2, CAST(N'2026-03-23T18:39:24.820' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (14, 3, 43, CAST(37311.00 AS Decimal(18, 2)), CAST(N'2026-03-23T18:39:24.820' AS DateTime), NULL, 2, CAST(N'2026-03-23T18:39:24.820' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (15, 3, 83, CAST(37798.00 AS Decimal(18, 2)), CAST(N'2026-03-23T18:39:24.820' AS DateTime), NULL, 2, CAST(N'2026-03-23T18:39:24.820' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (16, 46, 167, CAST(350.00 AS Decimal(18, 2)), CAST(N'2026-03-24T11:47:04.203' AS DateTime), NULL, 2, CAST(N'2026-03-24T11:47:04.203' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (17, 20, 100, CAST(42381.00 AS Decimal(18, 2)), CAST(N'2026-03-24T18:46:54.170' AS DateTime), NULL, 2, CAST(N'2026-03-24T18:46:54.170' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (18, 20, 130, CAST(39299.00 AS Decimal(18, 2)), CAST(N'2026-03-24T18:46:54.183' AS DateTime), NULL, 2, CAST(N'2026-03-24T18:46:54.183' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (19, 20, 20, CAST(43585.00 AS Decimal(18, 2)), CAST(N'2026-03-24T18:46:54.183' AS DateTime), NULL, 2, CAST(N'2026-03-24T18:46:54.183' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (20, 20, 60, CAST(40556.00 AS Decimal(18, 2)), CAST(N'2026-03-24T18:46:54.183' AS DateTime), NULL, 2, CAST(N'2026-03-24T18:46:54.183' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (21, 36, 116, CAST(40190.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:20:05.550' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:20:05.550' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (22, 36, 138, CAST(43616.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:20:05.550' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:20:05.550' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (23, 36, 152, CAST(40224.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:20:05.550' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:20:05.550' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (24, 36, 36, CAST(36947.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:20:05.550' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:20:05.550' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (25, 36, 76, CAST(42215.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:20:05.550' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:20:05.550' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (26, 30, 110, CAST(42592.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:23:07.927' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:23:07.927' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (27, 30, 135, CAST(36955.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:23:07.927' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:23:07.927' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (28, 30, 150, CAST(45463.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:23:07.927' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:23:07.927' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (29, 30, 30, CAST(38762.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:23:07.937' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:23:07.937' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (30, 30, 70, CAST(38447.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:23:07.937' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:23:07.937' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (31, 9, 143, CAST(45904.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:23:33.580' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:23:33.580' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (32, 9, 49, CAST(37467.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:23:33.580' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:23:33.580' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (33, 9, 89, CAST(40995.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:23:33.580' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:23:33.580' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (34, 9, 9, CAST(38218.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:23:33.580' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:23:33.580' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (35, 28, 108, CAST(44839.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:24:19.323' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:24:19.323' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (36, 28, 134, CAST(36559.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:24:19.323' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:24:19.323' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (37, 28, 28, CAST(42731.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:24:19.323' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:24:19.323' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (38, 28, 68, CAST(41556.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:24:19.323' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:24:19.323' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (39, 29, 109, CAST(43455.00 AS Decimal(18, 2)), CAST(N'2026-03-26T12:52:58.717' AS DateTime), NULL, 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (40, 29, 29, CAST(41171.00 AS Decimal(18, 2)), CAST(N'2026-03-26T12:52:58.717' AS DateTime), NULL, 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (41, 29, 69, CAST(35075.00 AS Decimal(18, 2)), CAST(N'2026-03-26T12:52:58.717' AS DateTime), NULL, 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (42, 26, 106, CAST(39450.00 AS Decimal(18, 2)), CAST(N'2026-03-26T12:53:54.200' AS DateTime), NULL, 0, CAST(N'2026-03-26T12:53:54.200' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (43, 26, 133, CAST(41566.00 AS Decimal(18, 2)), CAST(N'2026-03-26T12:53:54.200' AS DateTime), NULL, 0, CAST(N'2026-03-26T12:53:54.200' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (44, 26, 26, CAST(43972.00 AS Decimal(18, 2)), CAST(N'2026-03-26T12:53:54.200' AS DateTime), NULL, 0, CAST(N'2026-03-26T12:53:54.200' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (45, 26, 66, CAST(37025.00 AS Decimal(18, 2)), CAST(N'2026-03-26T12:53:54.200' AS DateTime), NULL, 0, CAST(N'2026-03-26T12:53:54.200' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (46, 27, 107, CAST(43815.00 AS Decimal(18, 2)), CAST(N'2026-03-26T12:54:44.677' AS DateTime), NULL, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (47, 27, 149, CAST(43979.00 AS Decimal(18, 2)), CAST(N'2026-03-26T12:54:44.677' AS DateTime), NULL, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (48, 27, 27, CAST(41561.00 AS Decimal(18, 2)), CAST(N'2026-03-26T12:54:44.677' AS DateTime), NULL, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (49, 27, 67, CAST(42783.00 AS Decimal(18, 2)), CAST(N'2026-03-26T12:54:44.677' AS DateTime), NULL, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (50, 37, 117, CAST(44530.00 AS Decimal(18, 2)), CAST(N'2026-03-26T13:04:43.447' AS DateTime), NULL, 0, CAST(N'2026-03-26T13:04:43.447' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (51, 37, 37, CAST(37155.00 AS Decimal(18, 2)), CAST(N'2026-03-26T13:04:43.447' AS DateTime), NULL, 0, CAST(N'2026-03-26T13:04:43.447' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (52, 37, 77, CAST(43271.00 AS Decimal(18, 2)), CAST(N'2026-03-26T13:04:43.447' AS DateTime), NULL, 0, CAST(N'2026-03-26T13:04:43.447' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (53, 38, 118, CAST(37970.00 AS Decimal(18, 2)), CAST(N'2026-03-26T13:05:36.990' AS DateTime), NULL, 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (54, 38, 139, CAST(37275.00 AS Decimal(18, 2)), CAST(N'2026-03-26T13:05:36.990' AS DateTime), NULL, 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (55, 38, 38, CAST(42449.00 AS Decimal(18, 2)), CAST(N'2026-03-26T13:05:36.990' AS DateTime), NULL, 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (56, 38, 78, CAST(40735.00 AS Decimal(18, 2)), CAST(N'2026-03-26T13:05:36.990' AS DateTime), NULL, 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (57, 39, 119, CAST(41870.00 AS Decimal(18, 2)), CAST(N'2026-03-26T13:06:24.180' AS DateTime), NULL, 0, CAST(N'2026-03-26T13:06:24.180' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (58, 39, 153, CAST(38012.00 AS Decimal(18, 2)), CAST(N'2026-03-26T13:06:24.180' AS DateTime), NULL, 0, CAST(N'2026-03-26T13:06:24.180' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (59, 39, 39, CAST(38066.00 AS Decimal(18, 2)), CAST(N'2026-03-26T13:06:24.180' AS DateTime), NULL, 0, CAST(N'2026-03-26T13:06:24.180' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (60, 39, 79, CAST(35008.00 AS Decimal(18, 2)), CAST(N'2026-03-26T13:06:24.180' AS DateTime), NULL, 0, CAST(N'2026-03-26T13:06:24.180' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (61, 40, 120, CAST(43320.00 AS Decimal(18, 2)), CAST(N'2026-03-26T13:07:21.400' AS DateTime), NULL, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (62, 40, 140, CAST(41156.00 AS Decimal(18, 2)), CAST(N'2026-03-26T13:07:21.400' AS DateTime), NULL, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (63, 40, 40, CAST(39549.00 AS Decimal(18, 2)), CAST(N'2026-03-26T13:07:21.400' AS DateTime), NULL, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (64, 40, 80, CAST(44169.00 AS Decimal(18, 2)), CAST(N'2026-03-26T13:07:21.400' AS DateTime), NULL, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (65, 21, 101, CAST(35504.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:35:08.523' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:35:08.523' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (66, 21, 147, CAST(39722.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:35:08.540' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:35:08.540' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (67, 21, 21, CAST(35070.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:35:08.540' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:35:08.540' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (68, 21, 61, CAST(39009.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:35:08.540' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:35:08.540' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (69, 22, 102, CAST(38808.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:36:12.463' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:36:12.463' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (70, 22, 131, CAST(40056.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:36:12.483' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:36:12.483' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (71, 22, 22, CAST(44116.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:36:12.487' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:36:12.487' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (72, 22, 62, CAST(39671.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:36:12.487' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:36:12.487' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (73, 23, 103, CAST(37088.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:37:17.927' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:37:17.927' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (74, 23, 23, CAST(44420.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:37:17.927' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:37:17.927' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (75, 23, 63, CAST(42363.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:37:17.927' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:37:17.927' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (76, 24, 104, CAST(35436.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (77, 24, 132, CAST(37774.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (78, 24, 148, CAST(41864.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (79, 24, 24, CAST(42833.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (80, 24, 64, CAST(39411.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (81, 25, 105, CAST(38069.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:43:47.680' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:43:47.680' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (82, 25, 25, CAST(38186.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:43:47.680' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:43:47.680' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (83, 25, 65, CAST(38520.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:43:47.680' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:43:47.680' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (84, 47, 168, CAST(1500.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:44:52.657' AS DateTime), NULL, 2, CAST(N'2026-03-26T14:44:52.657' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (85, 48, 169, CAST(1500.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:50:27.910' AS DateTime), NULL, 2, CAST(N'2026-03-26T14:50:27.910' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (86, 48, 170, CAST(1500.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:50:27.910' AS DateTime), NULL, 2, CAST(N'2026-03-26T14:50:27.910' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (87, 49, 171, CAST(1500.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:59:22.603' AS DateTime), NULL, 2, CAST(N'2026-03-26T14:59:22.603' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (88, 49, 172, CAST(1500.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:59:22.603' AS DateTime), NULL, 2, CAST(N'2026-03-26T14:59:22.603' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (89, 17, 17, CAST(37544.00 AS Decimal(18, 2)), CAST(N'2026-03-26T15:00:42.143' AS DateTime), NULL, 0, CAST(N'2026-03-26T15:00:42.143' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (90, 17, 57, CAST(43349.00 AS Decimal(18, 2)), CAST(N'2026-03-26T15:00:42.143' AS DateTime), NULL, 0, CAST(N'2026-03-26T15:00:42.143' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (91, 17, 97, CAST(40532.00 AS Decimal(18, 2)), CAST(N'2026-03-26T15:00:42.143' AS DateTime), NULL, 0, CAST(N'2026-03-26T15:00:42.143' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (92, 18, 129, CAST(38588.00 AS Decimal(18, 2)), CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (93, 18, 146, CAST(39551.00 AS Decimal(18, 2)), CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (94, 18, 18, CAST(43478.00 AS Decimal(18, 2)), CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (95, 18, 58, CAST(42999.00 AS Decimal(18, 2)), CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (96, 18, 98, CAST(43987.00 AS Decimal(18, 2)), CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (97, 11, 11, CAST(38808.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:43:06.873' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:43:06.873' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (98, 11, 51, CAST(35615.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:43:06.873' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:43:06.873' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (99, 11, 91, CAST(41641.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:43:06.873' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:43:06.873' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (100, 12, 12, CAST(39005.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (101, 12, 126, CAST(37165.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (102, 12, 144, CAST(43998.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (103, 12, 52, CAST(39139.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (104, 12, 92, CAST(44358.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (105, 13, 13, CAST(44674.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:44:40.840' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (106, 13, 53, CAST(35802.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:44:40.840' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (107, 13, 93, CAST(35390.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:44:40.840' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (108, 14, 127, CAST(37389.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:45:30.207' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (109, 14, 14, CAST(43736.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:45:30.207' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (110, 14, 54, CAST(39321.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:45:30.207' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (111, 14, 94, CAST(41080.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:45:30.207' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (112, 15, 145, CAST(39425.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:46:19.527' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:46:19.527' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (113, 15, 15, CAST(36200.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:46:19.527' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:46:19.527' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (114, 15, 55, CAST(41938.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:46:19.527' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:46:19.527' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (115, 15, 95, CAST(36842.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:46:19.527' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:46:19.527' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (116, 6, 123, CAST(42089.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:55:08.650' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:55:08.650' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (117, 6, 142, CAST(42151.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:55:08.650' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:55:08.650' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (118, 6, 46, CAST(40854.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:55:08.650' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:55:08.650' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (119, 6, 6, CAST(37131.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:55:08.667' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:55:08.667' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (120, 6, 86, CAST(43586.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:55:08.667' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:55:08.667' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (121, 10, 10, CAST(37474.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:56:00.830' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:56:00.830' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (122, 10, 125, CAST(37169.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:56:00.830' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:56:00.830' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (123, 10, 50, CAST(37942.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:56:00.843' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (124, 10, 90, CAST(40939.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:56:00.843' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (125, 7, 47, CAST(38110.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:57:49.680' AS DateTime), NULL, 2, CAST(N'2026-03-26T16:57:49.680' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (126, 7, 7, CAST(44425.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:57:49.680' AS DateTime), NULL, 2, CAST(N'2026-03-26T16:57:49.680' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (127, 7, 87, CAST(35633.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:57:49.680' AS DateTime), NULL, 2, CAST(N'2026-03-26T16:57:49.680' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (128, 8, 124, CAST(41613.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:59:00.680' AS DateTime), NULL, 2, CAST(N'2026-03-26T16:59:00.680' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (129, 8, 48, CAST(40178.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:59:00.680' AS DateTime), NULL, 2, CAST(N'2026-03-26T16:59:00.680' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (130, 8, 8, CAST(39320.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:59:00.680' AS DateTime), NULL, 2, CAST(N'2026-03-26T16:59:00.680' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (131, 8, 88, CAST(40753.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:59:00.680' AS DateTime), NULL, 2, CAST(N'2026-03-26T16:59:00.680' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (132, 4, 122, CAST(42488.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:08:32.347' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:08:32.347' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (133, 4, 165, CAST(35395.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:08:32.347' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:08:32.347' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (134, 4, 4, CAST(35395.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:08:32.347' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:08:32.347' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (135, 4, 44, CAST(43582.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:08:32.347' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:08:32.347' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (136, 4, 84, CAST(44968.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:08:32.350' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (137, 5, 164, CAST(35374.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:09:20.243' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:09:20.243' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (138, 45, 162, CAST(1500.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:09:39.060' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:09:39.060' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (139, 45, 163, CAST(1500.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:09:39.060' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:09:39.060' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (140, 44, 161, CAST(1500.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:10:33.780' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:10:33.780' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (141, 1, 1, CAST(36278.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:12:54.170' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:12:54.170' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (142, 1, 41, CAST(43028.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:12:54.170' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:12:54.170' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (143, 1, 81, CAST(42159.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:12:54.170' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:12:54.170' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (144, 2, 121, CAST(40217.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:13:43.177' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (145, 2, 2, CAST(43301.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:13:43.177' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (146, 2, 42, CAST(35536.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:13:43.177' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (147, 2, 82, CAST(42935.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:13:43.177' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (148, 31, 111, CAST(38168.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:20:48.640' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (149, 31, 31, CAST(41905.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:20:48.640' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (150, 31, 71, CAST(37518.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:20:48.640' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (151, 32, 112, CAST(41821.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:21:42.497' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:21:42.497' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (152, 32, 136, CAST(37167.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:21:42.497' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:21:42.497' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (153, 32, 32, CAST(44890.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:21:42.497' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:21:42.497' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (154, 32, 72, CAST(36977.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:21:42.497' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:21:42.497' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (155, 33, 113, CAST(42823.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:22:51.657' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (156, 33, 151, CAST(38221.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:22:51.657' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (157, 33, 33, CAST(41640.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:22:51.657' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (158, 33, 73, CAST(35168.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:22:51.657' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (159, 34, 114, CAST(44139.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:23:46.237' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:23:46.237' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (160, 34, 137, CAST(40893.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:23:46.237' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:23:46.237' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (161, 34, 34, CAST(37242.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:23:46.253' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:23:46.253' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (162, 34, 74, CAST(44834.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:23:46.253' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:23:46.253' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (163, 35, 115, CAST(44589.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:24:40.040' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:24:40.040' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (164, 35, 35, CAST(44716.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:24:40.040' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:24:40.040' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (165, 35, 75, CAST(39092.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:24:40.040' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:24:40.040' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (166, 19, 19, CAST(44104.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:26:13.750' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:26:13.750' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (167, 19, 59, CAST(37968.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:26:13.763' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:26:13.763' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (168, 19, 99, CAST(36790.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:26:13.763' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:26:13.763' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (169, 50, 173, NULL, CAST(N'2026-06-01T15:01:37.043' AS DateTime), NULL, 1, CAST(N'2026-06-01T15:01:37.043' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (170, 51, 174, NULL, CAST(N'2026-06-01T15:06:30.450' AS DateTime), CAST(N'2026-06-01T15:33:11.697' AS DateTime), 1, CAST(N'2026-06-01T15:06:30.450' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (171, 51, 175, NULL, CAST(N'2026-06-01T15:32:35.063' AS DateTime), CAST(N'2026-06-01T15:33:11.697' AS DateTime), 1, CAST(N'2026-06-01T15:32:35.063' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (172, 51, 174, CAST(0.00 AS Decimal(18, 2)), CAST(N'2026-06-01T15:33:11.697' AS DateTime), NULL, 0, CAST(N'2026-06-01T15:33:11.697' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (173, 51, 175, CAST(0.00 AS Decimal(18, 2)), CAST(N'2026-06-01T15:33:11.697' AS DateTime), NULL, 0, CAST(N'2026-06-01T15:33:11.697' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (174, 51, 176, NULL, CAST(N'2026-06-01T15:34:53.600' AS DateTime), NULL, 1, CAST(N'2026-06-01T15:34:53.600' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (175, 52, 177, CAST(250.00 AS Decimal(18, 2)), CAST(N'2026-06-01T15:36:34.113' AS DateTime), NULL, 2, CAST(N'2026-06-01T15:36:34.113' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (176, 53, 178, NULL, CAST(N'2026-06-01T15:39:37.463' AS DateTime), CAST(N'2026-06-01T15:40:07.513' AS DateTime), 1, CAST(N'2026-06-01T15:39:37.463' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (177, 53, 178, CAST(0.00 AS Decimal(18, 2)), CAST(N'2026-06-01T15:40:07.513' AS DateTime), NULL, 2, CAST(N'2026-06-01T15:40:07.513' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ProductPriceHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, 2, N'Classic Diamond Solitaire Ring', N'A timeless classic solitaire ring featuring a single brilliant-cut diamond, perfect for engagements and special occasions.', 1, 0, 1, CAST(N'2026-03-13T15:56:16.227' AS DateTime), 2, CAST(N'2026-03-26T17:12:54.153' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2, 2, N'Emerald Halo Engagement Ring', N'An elegant emerald halo engagement ring surrounded by sparkling diamonds for a luxurious and eye-catching look.', 1, 0, 1, CAST(N'2026-03-13T15:56:16.227' AS DateTime), 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3, 2, N'Princess Cut Diamond Ring', N'A modern princess cut diamond ring with sharp brilliance and contemporary appeal.', 1, 0, 1, CAST(N'2026-03-13T15:56:16.227' AS DateTime), 2, CAST(N'2026-03-26T17:07:45.520' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (4, 2, N'Vintage Rose Gold Ring', N'A vintage-inspired rose gold ring with intricate detailing and a warm romantic finish.', 1, 0, 1, CAST(N'2026-03-13T15:56:16.227' AS DateTime), 2, CAST(N'2026-03-26T17:08:32.330' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (5, 2, N'Platinum Sapphire Ring', N'A sophisticated platinum ring featuring a stunning sapphire centerpiece for a royal touch.', 1, 0, 1, CAST(N'2026-03-13T15:56:16.227' AS DateTime), 2, CAST(N'2026-03-26T17:09:20.230' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (6, 3, N'Classic Gold Wedding Band', N'A classic gold wedding band symbolizing eternal love with a simple and elegant design.', 1, 0, 1, CAST(N'2026-03-13T15:56:26.740' AS DateTime), 0, CAST(N'2026-03-26T16:55:08.633' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (7, 3, N'Platinum Wedding Band', N'A premium platinum wedding band offering durability and timeless elegance.', 1, 0, 1, CAST(N'2026-03-13T15:56:26.740' AS DateTime), 2, CAST(N'2026-03-26T16:57:49.663' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (8, 3, N'Diamond Eternity Band', N'A diamond eternity band adorned with continuous diamonds representing everlasting love.', 1, 0, 1, CAST(N'2026-03-13T15:56:26.740' AS DateTime), 2, CAST(N'2026-03-26T16:59:00.663' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (9, 3, N'Rose Gold Couple Band', N'A romantic rose gold couple band designed for matching pairs with a modern touch.', 1, 0, 1, CAST(N'2026-03-13T15:56:26.740' AS DateTime), 0, CAST(N'2026-03-26T16:53:49.867' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (10, 3, N'Minimalist Gold Band', N'A minimalist gold band with a sleek and simple design for everyday elegance.', 1, 0, 1, CAST(N'2026-03-13T15:56:26.740' AS DateTime), 0, CAST(N'2026-03-26T16:56:00.813' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (11, 5, N'Heart Diamond Pendant', N'A heart-shaped diamond pendant symbolizing love and affection with sparkling brilliance.', 1, 0, 1, CAST(N'2026-03-13T15:56:32.623' AS DateTime), 0, CAST(N'2026-03-26T16:43:06.857' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (12, 5, N'Ruby Drop Pendant', N'A ruby drop pendant featuring a vibrant red gemstone for a bold and elegant statement.', 1, 0, 1, CAST(N'2026-03-13T15:56:32.623' AS DateTime), 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (13, 5, N'Emerald Halo Pendant', N'An emerald halo pendant surrounded by diamonds, offering a luxurious and graceful look.', 1, 0, 1, CAST(N'2026-03-13T15:56:32.623' AS DateTime), 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (14, 5, N'Minimal Gold Bar Pendant', N'A minimalist gold bar pendant with a modern and sleek design suitable for everyday wear.', 1, 0, 1, CAST(N'2026-03-13T15:56:32.623' AS DateTime), 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (15, 5, N'Infinity Diamond Pendant', N'An infinity diamond pendant symbolizing endless love with a stylish and sparkling finish.', 1, 0, 1, CAST(N'2026-03-13T15:56:32.623' AS DateTime), 0, CAST(N'2026-03-26T16:46:19.493' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (16, 6, N'22K Gold Chain', N'A 22K gold chain crafted for durability and elegance, perfect for daily wear or special occasions.', 1, 0, 1, CAST(N'2026-03-13T15:56:38.840' AS DateTime), 0, CAST(N'2026-03-26T14:50:07.207' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (17, 6, N'White Gold Rope Chain', N'A white gold rope chain with a twisted design that adds texture and shine.', 1, 0, 1, CAST(N'2026-03-13T15:56:38.840' AS DateTime), 0, CAST(N'2026-03-26T15:00:42.130' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (18, 6, N'Rose Gold Cable Chain', N'A rose gold cable chain offering a delicate and modern look for any outfit.', 1, 0, 1, CAST(N'2026-03-13T15:56:38.840' AS DateTime), 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (19, 6, N'Platinum Chain Necklace', N'A platinum chain necklace with a premium finish and long-lasting durability.', 1, 0, 1, CAST(N'2026-03-13T15:56:38.840' AS DateTime), 2, CAST(N'2026-03-26T17:26:13.733' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (20, 6, N'Box Chain Necklace', N'A box chain necklace featuring square links for a sleek and contemporary appearance.', 1, 0, 1, CAST(N'2026-03-13T15:56:38.840' AS DateTime), 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (21, 8, N'Diamond Stud Earrings', N'Classic diamond stud earrings that add timeless sparkle and elegance to any look.', 1, 0, 1, CAST(N'2026-03-13T15:56:44.310' AS DateTime), 0, CAST(N'2026-03-26T14:35:08.477' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (22, 8, N'Ruby Stud Earrings', N'Ruby stud earrings with rich red gemstones for a bold and luxurious style.', 1, 0, 1, CAST(N'2026-03-13T15:56:44.310' AS DateTime), 0, CAST(N'2026-03-26T14:36:12.453' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (23, 8, N'Sapphire Stud Earrings', N'Sapphire stud earrings offering deep blue brilliance and refined elegance.', 1, 0, 1, CAST(N'2026-03-13T15:56:44.310' AS DateTime), 0, CAST(N'2026-03-26T14:37:17.910' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (24, 8, N'Emerald Stud Earrings', N'Emerald stud earrings with vibrant green stones for a fresh and sophisticated look.', 1, 0, 1, CAST(N'2026-03-13T15:56:44.310' AS DateTime), 0, CAST(N'2026-03-26T14:39:15.153' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (25, 8, N'Minimal Gold Studs', N'Minimal gold studs with a simple yet elegant design suitable for daily wear.', 1, 0, 1, CAST(N'2026-03-13T15:56:44.310' AS DateTime), 0, CAST(N'2026-03-26T14:43:47.667' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (26, 9, N'Gold Hoop Earrings', N'Gold hoop earrings with a classic circular design for versatile styling.', 1, 0, 1, CAST(N'2026-03-13T15:56:52.090' AS DateTime), 0, CAST(N'2026-03-26T12:53:54.183' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (27, 9, N'Diamond Hoop Earrings', N'Diamond hoop earrings combining sparkle and elegance for a premium look.', 1, 0, 1, CAST(N'2026-03-13T15:56:52.090' AS DateTime), 0, CAST(N'2026-03-26T12:54:44.660' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (28, 9, N'White Gold Hoop Earrings', N'White gold hoop earrings offering a modern and polished appearance.', 1, 0, 1, CAST(N'2026-03-13T15:56:52.090' AS DateTime), 0, CAST(N'2026-03-26T12:49:41.820' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (29, 9, N'Rose Gold Hoop Earrings', N'Rose gold hoop earrings with a soft pink tone for a trendy and stylish finish.', 1, 0, 1, CAST(N'2026-03-13T15:56:52.090' AS DateTime), 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (30, 9, N'Large Hoop Earrings', N'Large hoop earrings designed to make a bold and fashionable statement.', 1, 0, 1, CAST(N'2026-03-13T15:56:52.090' AS DateTime), 0, CAST(N'2026-03-26T12:51:35.920' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (31, 11, N'Gold Charm Bracelet', N'A gold charm bracelet featuring decorative charms for a personalized style.', 1, 0, 1, CAST(N'2026-03-13T15:56:59.960' AS DateTime), 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (32, 11, N'Heart Charm Bracelet', N'A heart charm bracelet symbolizing love and affection with delicate detailing.', 1, 0, 1, CAST(N'2026-03-13T15:56:59.960' AS DateTime), 2, CAST(N'2026-03-26T17:21:42.480' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (33, 11, N'Infinity Charm Bracelet', N'An infinity charm bracelet representing endless connection and elegance.', 1, 0, 1, CAST(N'2026-03-13T15:56:59.960' AS DateTime), 2, CAST(N'2026-03-26T17:22:51.640' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (34, 11, N'Diamond Charm Bracelet', N'A diamond charm bracelet adding sparkle and luxury to your wrist.', 1, 0, 1, CAST(N'2026-03-13T15:56:59.960' AS DateTime), 2, CAST(N'2026-03-26T17:23:46.223' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (35, 11, N'Rose Gold Charm Bracelet', N'A rose gold charm bracelet with a trendy and feminine touch.', 1, 0, 1, CAST(N'2026-03-13T15:56:59.960' AS DateTime), 2, CAST(N'2026-03-26T17:24:40.023' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (36, 12, N'Diamond Tennis Bracelet', N'A diamond tennis bracelet featuring a continuous line of diamonds for timeless elegance.', 1, 0, 1, CAST(N'2026-03-13T15:57:06.237' AS DateTime), 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (37, 12, N'Ruby Tennis Bracelet', N'A ruby tennis bracelet with vibrant red stones for a bold and elegant style.', 1, 0, 1, CAST(N'2026-03-13T15:57:06.237' AS DateTime), 0, CAST(N'2026-03-26T13:04:43.447' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (38, 12, N'Sapphire Tennis Bracelet', N'A sapphire tennis bracelet offering deep blue brilliance and classic charm.', 1, 0, 1, CAST(N'2026-03-13T15:57:06.237' AS DateTime), 0, CAST(N'2026-03-26T13:05:36.973' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (39, 12, N'Emerald Tennis Bracelet', N'An emerald tennis bracelet showcasing rich green gemstones for a luxurious look.', 1, 0, 1, CAST(N'2026-03-13T15:57:06.237' AS DateTime), 0, CAST(N'2026-03-26T13:06:24.163' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (40, 12, N'White Gold Tennis Bracelet', N'A white gold tennis bracelet combining modern style with timeless sparkle.', 1, 0, 1, CAST(N'2026-03-13T15:57:06.237' AS DateTime), 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (44, 2, N'Three-Stone Engagement Ring Style', N'A three-stone engagement ring style symbolizing past, present, and future love.', 1, 0, 1, CAST(N'2026-03-17T15:42:15.907' AS DateTime), 2, CAST(N'2026-03-26T17:10:33.780' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (45, 2, N'Vintage Engagement Ring Style', N'A vintage engagement ring style featuring intricate detailing and timeless beauty.', 1, 0, 1, CAST(N'2026-03-17T16:47:00.830' AS DateTime), 2, CAST(N'2026-03-26T17:10:02.470' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (46, 6, N'Orlando Knox', N'A uniquely styled chain product with a modern and distinctive design.', 1, 0, 0, CAST(N'2026-03-19T12:35:48.653' AS DateTime), 0, CAST(N'2026-03-26T14:52:51.460' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (47, 1, N'Product-1', NULL, 0, 1, 2, CAST(N'2026-03-26T14:44:52.657' AS DateTime), 2, CAST(N'2026-03-26T14:49:02.493' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (48, 1, N'Product-1', NULL, 0, 1, 2, CAST(N'2026-03-26T14:50:27.893' AS DateTime), 0, CAST(N'2026-03-26T16:38:21.143' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (49, 1, N'Product-2', NULL, 0, 1, 2, CAST(N'2026-03-26T14:59:22.590' AS DateTime), 0, CAST(N'2026-03-26T16:38:12.917' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (50, 10, N'Gold Necklace 101', N'101-Elegant gold necklace for special occasions', 0, 1, 1, CAST(N'2026-06-01T15:01:37.027' AS DateTime), 2, CAST(N'2026-06-01T15:35:35.687' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (51, 10, N'Gold Necklace 102', N'102-Elegant gold necklace for special occasions', 1, 0, 1, CAST(N'2026-06-01T15:06:30.433' AS DateTime), 1, CAST(N'2026-06-01T15:34:53.570' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (52, 3, N'devloepr demo', NULL, 1, 0, 2, CAST(N'2026-06-01T15:36:34.100' AS DateTime), 2, CAST(N'2026-06-01T15:36:45.650' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (53, 10, N'Gold Necklace 103', N'103-Elegant gold necklace for special occasions', 1, 0, 1, CAST(N'2026-06-01T15:39:37.440' AS DateTime), 1, CAST(N'2026-06-01T15:49:50.910' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductStock] ON 
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (1, 1, 1, 43, 28, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (2, 2, 2, 23, 8, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (3, 3, 3, 20, 3, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (4, 4, 4, 22, 6, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (5, 5, 5, 44, 17, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (6, 6, 6, 33, 11, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (7, 7, 7, 50, 21, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (8, 8, 8, 40, 15, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (9, 9, 9, 22, 5, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (10, 10, 10, 30, 9, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (11, 11, 11, 44, 27, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (12, 12, 12, 52, 23, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (13, 13, 13, 41, 26, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (14, 14, 14, 45, 27, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (15, 15, 15, 38, 23, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (16, 16, 16, 45, 28, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (17, 17, 17, 50, 21, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (18, 18, 18, 44, 26, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (19, 19, 19, 37, 22, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (20, 20, 20, 48, 28, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (21, 21, 21, 47, 28, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (22, 22, 22, 45, 20, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (23, 23, 23, 28, 8, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (24, 24, 24, 35, 13, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (25, 25, 25, 24, 9, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (26, 26, 26, 37, 13, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (27, 27, 27, 25, 10, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (28, 28, 28, 43, 25, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (29, 29, 29, 37, 21, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (30, 30, 30, 47, 28, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (31, 31, 31, 52, 32, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (32, 32, 32, 43, 17, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (33, 33, 33, 31, 10, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (34, 34, 34, 44, 26, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (35, 35, 35, 49, 29, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (36, 36, 36, 35, 15, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (37, 37, 37, 44, 19, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (38, 38, 38, 39, 14, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (39, 39, 39, 53, 31, 2, CAST(N'2026-03-16T14:08:16.800' AS DateTime))
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (40, 40, 40, 26, 7, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (41, 1, 41, 31, 10, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (42, 2, 42, 39, 23, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (43, 3, 43, 39, 14, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (44, 4, 44, 35, 12, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (45, 5, 45, 50, 30, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (46, 6, 46, 36, 13, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (47, 7, 47, 20, 3, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (48, 8, 48, 42, 16, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (49, 9, 49, 43, 25, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (50, 10, 50, 38, 23, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (51, 11, 51, 28, 8, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (52, 12, 52, 44, 18, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (53, 13, 53, 32, 10, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (54, 14, 54, 41, 24, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (55, 15, 55, 47, 28, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (56, 16, 56, 54, 28, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (57, 17, 57, 27, 10, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (58, 18, 58, 39, 23, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (59, 19, 59, 46, 19, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (60, 20, 60, 44, 18, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (61, 21, 61, 49, 20, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (62, 22, 62, 41, 24, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (63, 23, 63, 43, 17, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (64, 24, 64, 39, 15, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (65, 25, 65, 57, 32, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (66, 26, 66, 47, 32, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (67, 27, 67, 65, 50, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (68, 28, 68, 27, 12, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (69, 29, 69, 54, 32, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (70, 30, 70, 49, 20, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (71, 31, 71, 46, 27, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (72, 32, 72, 45, 28, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (73, 33, 73, 40, 15, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (74, 34, 74, 44, 17, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (75, 35, 75, 48, 28, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (76, 36, 76, 34, 12, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (77, 37, 77, 47, 19, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (78, 38, 78, 24, 6, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (79, 39, 79, 53, 31, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (80, 40, 80, 31, 10, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (81, 1, 81, 36, 7, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (82, 2, 82, 71, 31, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (83, 3, 83, 44, 26, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (84, 4, 84, 42, 16, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (85, 5, 85, 36, 21, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (86, 6, 86, 49, 29, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (87, 7, 87, 42, 25, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (88, 8, 88, 51, 30, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (89, 9, 89, 49, 29, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (90, 10, 90, 45, 18, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (91, 11, 91, 13, 7, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (92, 12, 92, 36, 14, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (93, 13, 93, 46, 27, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (94, 14, 94, 44, 26, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (95, 15, 95, 40, 16, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (96, 16, 96, 37, 22, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (97, 17, 97, 44, 19, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (98, 18, 98, 52, 31, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (99, 19, 99, 41, 16, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (100, 20, 100, 54, 32, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (101, 21, 101, 39, 23, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (102, 22, 102, 22, 5, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (103, 23, 103, 30, 10, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (104, 24, 104, 51, 30, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (105, 25, 105, 40, 29, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (106, 26, 106, 25, 7, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (107, 27, 107, 46, 31, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (108, 28, 108, 31, 16, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (109, 29, 109, 40, 24, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (110, 30, 110, 27, 7, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (111, 31, 111, 20, 3, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (112, 32, 112, 37, 13, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (113, 33, 113, 32, 10, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (114, 34, 114, 38, 23, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (115, 35, 115, 16, 3, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (116, 36, 116, 42, 16, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (117, 37, 117, 23, 5, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (118, 38, 118, 44, 27, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (119, 39, 119, 44, 26, 2, CAST(N'2026-03-16T14:08:16.800' AS DateTime))
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (120, 40, 120, 20, 3, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (121, 2, 121, 47, 30, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (122, 4, 122, 46, 27, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (123, 6, 123, 46, 19, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (124, 8, 124, 29, 9, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (125, 10, 125, 47, 28, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (126, 12, 126, 42, 25, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (127, 14, 127, 31, 15, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (128, 16, 128, 31, 11, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (129, 18, 129, 39, 23, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (130, 20, 130, 50, 30, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (131, 22, 131, 65, 46, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (132, 24, 132, 30, 9, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (133, 26, 133, 46, 20, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (134, 28, 134, 29, 14, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (135, 30, 135, 44, 17, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (136, 32, 136, 47, 19, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (137, 34, 137, 44, 17, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (138, 36, 138, 24, 6, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (139, 38, 139, 49, 20, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (140, 40, 140, 45, 27, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (141, 3, 141, 53, 31, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (142, 6, 142, 30, 7, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (143, 9, 143, 44, 17, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (144, 12, 144, 52, 31, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (145, 15, 145, 42, 16, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (146, 18, 146, 45, 27, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (147, 21, 147, 43, 26, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (148, 24, 148, 41, 16, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (149, 27, 149, 34, 19, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (150, 30, 150, 45, 18, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (151, 33, 151, 32, 11, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (152, 36, 152, 28, 10, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (153, 39, 153, 33, 18, NULL, NULL)
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (154, 45, 162, 230, 134, 2, CAST(N'2026-03-18T09:26:57.537' AS DateTime))
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (155, 45, 163, 402, 203, 0, CAST(N'2026-06-01T16:02:13.847' AS DateTime))
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (156, 53, 163, 0, 0, 2, CAST(N'2026-06-01T16:09:17.967' AS DateTime))
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (157, 53, 178, 20, 0, 2, CAST(N'2026-06-01T16:14:19.873' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ProductStock] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductStockHistory] ON 
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (1, 3, 43, N'Adjustment', 3, 33, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (2, 2, 42, N'Adjustment', 1, 58, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (3, 14, 94, N'Adjustment', 5, 39, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (4, 30, 150, N'Adjustment', 5, 27, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (5, 30, 135, N'Adjustment', 4, 33, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (6, 1, 41, N'Adjustment', 5, 41, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (7, 13, 13, N'Restock', 4, 53, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (8, 36, 116, N'Adjustment', 3, 60, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (9, 40, 80, N'Restock', 5, 8, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (10, 40, 40, N'Adjustment', 4, 30, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (11, 7, 7, N'Adjustment', 1, 48, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (12, 7, 7, N'Order', 4, 7, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (13, 7, 7, N'Order', 2, 50, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (14, 38, 118, N'Adjustment', 2, 8, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (15, 25, 65, N'Restock', 2, 25, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (16, 25, 65, N'Adjustment', 2, 59, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (17, 38, 139, N'Order', 1, 21, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (18, 12, 92, N'Adjustment', 2, 37, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (19, 38, 118, N'Restock', 4, 30, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (20, 22, 102, N'Restock', 4, 42, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (21, 17, 17, N'Order', 3, 22, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (22, 5, 85, N'Adjustment', 5, 55, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (23, 22, 62, N'Adjustment', 1, 47, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (24, 13, 53, N'Adjustment', 5, 38, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (25, 14, 127, N'Adjustment', 4, 3, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (26, 22, 131, N'Adjustment', 2, 16, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (27, 22, 102, N'Order', 5, 60, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (28, 37, 117, N'Order', 4, 15, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (29, 6, 86, N'Order', 3, 46, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (30, 7, 47, N'Adjustment', 1, 45, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (31, 35, 115, N'Restock', 1, 19, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (32, 38, 118, N'Adjustment', 2, 11, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (33, 11, 51, N'Order', 5, 24, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (34, 34, 74, N'Adjustment', 1, 51, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (35, 29, 69, N'Order', 1, 18, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (36, 7, 47, N'Adjustment', 3, 18, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (37, 31, 71, N'Order', 2, 17, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (38, 28, 134, N'Adjustment', 2, 41, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (39, 1, 81, N'Adjustment', 2, 19, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (40, 29, 109, N'Adjustment', 2, 4, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (41, 35, 115, N'Order', 4, 52, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (42, 18, 18, N'Restock', 3, 29, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (43, 39, 153, N'Order', 4, 46, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (44, 8, 88, N'Order', 2, 20, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (45, 38, 38, N'Order', 1, 9, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (46, 14, 54, N'Adjustment', 5, 4, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (47, 22, 22, N'Adjustment', 4, 4, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (48, 26, 26, N'Order', 4, 31, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (49, 21, 147, N'Adjustment', 1, 43, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (50, 3, 3, N'Order', 3, 12, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (51, 18, 58, N'Restock', 3, 7, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (52, 23, 103, N'Adjustment', 3, 14, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (53, 24, 132, N'Order', 5, 20, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (54, 18, 58, N'Order', 5, 42, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (55, 13, 13, N'Adjustment', 4, 47, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (56, 29, 29, N'Restock', 3, 52, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (57, 23, 23, N'Order', 5, 53, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (58, 8, 124, N'Adjustment', 1, 42, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (59, 22, 131, N'Order', 2, 18, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (60, 39, 39, N'Adjustment', 3, 43, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (61, 6, 86, N'Order', 1, 21, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (62, 25, 65, N'Order', 4, 12, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (63, 31, 111, N'Order', 3, 60, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (64, 22, 102, N'Adjustment', 4, 26, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (65, 24, 148, N'Adjustment', 1, 52, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (66, 25, 25, N'Adjustment', 1, 59, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (67, 30, 135, N'Order', 2, 4, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (68, 19, 99, N'Order', 2, 32, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (69, 26, 106, N'Order', 1, 25, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (70, 21, 21, N'Restock', 4, 17, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (71, 16, 96, N'Adjustment', 5, 7, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (72, 3, 3, N'Order', 2, 45, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (73, 35, 35, N'Adjustment', 4, 29, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (74, 8, 48, N'Restock', 4, 27, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (75, 19, 59, N'Restock', 3, 32, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (76, 12, 52, N'Adjustment', 1, 24, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (77, 24, 148, N'Restock', 4, 5, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (78, 6, 123, N'Order', 2, 53, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (79, 24, 148, N'Restock', 2, 29, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (80, 6, 6, N'Adjustment', 2, 9, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (81, 33, 151, N'Adjustment', 2, 25, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (82, 19, 59, N'Adjustment', 3, 9, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (83, 40, 40, N'Order', 2, 6, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (84, 6, 123, N'Restock', 2, 6, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (85, 21, 147, N'Adjustment', 5, 23, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (86, 29, 109, N'Restock', 3, 33, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (87, 38, 38, N'Adjustment', 2, 40, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (88, 28, 108, N'Order', 3, 33, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (89, 15, 95, N'Adjustment', 3, 30, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (90, 31, 111, N'Adjustment', 4, 28, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (91, 40, 120, N'Order', 2, 51, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (92, 39, 119, N'Restock', 4, 21, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (93, 24, 132, N'Order', 3, 43, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (94, 12, 12, N'Adjustment', 4, 51, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (95, 14, 94, N'Order', 2, 35, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (96, 30, 30, N'Order', 3, 58, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (97, 35, 35, N'Adjustment', 2, 4, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (98, 32, 112, N'Order', 5, 24, N'Order', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (99, 9, 89, N'Order', 1, 32, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (100, 26, 106, N'Order', 5, 41, N'Admin', N'Auto generated stock history', 1, CAST(N'2026-03-13T17:14:36.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (101, 39, 39, N'IN', 10, NULL, NULL, NULL, 2, CAST(N'2026-03-16T13:33:09.637' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (102, 39, 153, N'IN', 10, NULL, NULL, NULL, 2, CAST(N'2026-03-16T13:33:09.637' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (109, 45, 162, N'IN', 20, NULL, NULL, NULL, 2, CAST(N'2026-03-17T17:59:20.323' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (110, 45, 162, N'IN', 20, NULL, NULL, NULL, 2, CAST(N'2026-03-17T18:19:45.510' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (111, 45, 163, N'IN', 20, NULL, NULL, NULL, 2, CAST(N'2026-03-17T18:19:45.510' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (114, 45, 162, N'IN', 80, NULL, NULL, NULL, 0, CAST(N'2026-03-17T18:58:13.433' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (115, 45, 163, N'IN', 80, NULL, NULL, NULL, 0, CAST(N'2026-03-17T18:58:13.433' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (119, 45, 163, N'IN', 50, NULL, NULL, NULL, 2, CAST(N'2026-03-18T09:27:20.467' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (120, 45, 163, N'IN', 90, NULL, NULL, NULL, 2, CAST(N'2026-05-29T12:46:25.617' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (121, 45, 163, N'IN', 2, NULL, NULL, N'testing', 0, CAST(N'2026-06-01T16:02:13.847' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (103, 39, 39, N'IN', 10, NULL, NULL, NULL, 2, CAST(N'2026-03-16T13:55:09.153' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (104, 39, 39, N'IN', 10, NULL, NULL, NULL, 2, CAST(N'2026-03-16T14:01:16.853' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (105, 39, 39, N'IN', 11, NULL, NULL, NULL, 2, CAST(N'2026-03-16T14:07:04.650' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (106, 39, 119, N'IN', 11, NULL, NULL, NULL, 2, CAST(N'2026-03-16T14:07:38.070' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (107, 39, 39, N'IN', 11, NULL, NULL, NULL, 2, CAST(N'2026-03-16T14:08:16.800' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (108, 39, 119, N'IN', 11, NULL, NULL, NULL, 2, CAST(N'2026-03-16T14:08:16.800' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (122, 53, 163, N'string', 3, NULL, NULL, N'string', 2, CAST(N'2026-06-01T16:09:17.967' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (123, 53, 163, N'string', 3, NULL, NULL, N'string', 2, CAST(N'2026-06-01T16:10:11.557' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (124, 53, 178, N'IN', 10, NULL, NULL, N'testing', 0, CAST(N'2026-06-01T16:13:36.073' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (125, 53, 178, N'IN', 10, NULL, NULL, N'string', 2, CAST(N'2026-06-01T16:14:19.873' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (112, 45, 162, N'IN', 80, NULL, NULL, NULL, 2, CAST(N'2026-03-17T18:58:13.033' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (113, 45, 163, N'IN', 80, NULL, NULL, NULL, 2, CAST(N'2026-03-17T18:58:13.033' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (116, 45, 162, N'IN', 80, NULL, NULL, NULL, 0, CAST(N'2026-03-17T18:58:38.397' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (117, 45, 163, N'IN', 80, NULL, NULL, NULL, 0, CAST(N'2026-03-17T18:58:38.397' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (118, 45, 162, N'OUT', 50, NULL, NULL, NULL, 2, CAST(N'2026-03-18T09:26:57.547' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ProductStockHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductVariantDetails] ON 
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2242, 108, 1, 2, 1, 0, 0, CAST(N'2026-03-26T12:49:41.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2243, 108, 2, 7, 1, 0, 0, CAST(N'2026-03-26T12:49:41.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2244, 108, 3, 9, 1, 0, 0, CAST(N'2026-03-26T12:49:41.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2245, 108, 4, 11, 1, 0, 0, CAST(N'2026-03-26T12:49:41.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2246, 108, 5, 16, 1, 0, 0, CAST(N'2026-03-26T12:49:41.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2247, 134, 1, 1, 1, 0, 0, CAST(N'2026-03-26T12:49:41.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2248, 134, 2, 5, 1, 0, 0, CAST(N'2026-03-26T12:49:41.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2249, 134, 3, 10, 1, 0, 0, CAST(N'2026-03-26T12:49:41.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2250, 134, 4, 13, 1, 0, 0, CAST(N'2026-03-26T12:49:41.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2251, 134, 5, 16, 1, 0, 0, CAST(N'2026-03-26T12:49:41.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2252, 28, 1, 1, 1, 0, 0, CAST(N'2026-03-26T12:49:41.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2253, 28, 2, 7, 1, 0, 0, CAST(N'2026-03-26T12:49:41.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2254, 28, 3, 10, 1, 0, 0, CAST(N'2026-03-26T12:49:41.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2255, 28, 4, 12, 1, 0, 0, CAST(N'2026-03-26T12:49:41.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2256, 28, 5, 15, 1, 0, 0, CAST(N'2026-03-26T12:49:41.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2257, 68, 1, 3, 1, 0, 0, CAST(N'2026-03-26T12:49:41.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2258, 68, 2, 5, 1, 0, 0, CAST(N'2026-03-26T12:49:41.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2259, 68, 3, 8, 1, 0, 0, CAST(N'2026-03-26T12:49:41.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2260, 68, 4, 12, 1, 0, 0, CAST(N'2026-03-26T12:49:41.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2261, 68, 5, 15, 1, 0, 0, CAST(N'2026-03-26T12:49:41.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2262, 110, 1, 2, 1, 0, 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2263, 110, 2, 4, 1, 0, 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2264, 110, 3, 8, 1, 0, 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2265, 110, 4, 11, 1, 0, 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2266, 110, 5, 15, 1, 0, 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2267, 135, 1, 1, 1, 0, 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2268, 135, 2, 5, 1, 0, 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2269, 135, 3, 8, 1, 0, 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2270, 135, 4, 12, 1, 0, 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2271, 135, 5, 16, 1, 0, 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2272, 150, 1, 2, 1, 0, 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2273, 150, 2, 4, 1, 0, 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2274, 150, 3, 9, 1, 0, 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2275, 150, 4, 13, 1, 0, 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2276, 150, 5, 14, 1, 0, 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2277, 30, 1, 2, 1, 0, 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2278, 30, 2, 5, 1, 0, 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2279, 30, 3, 9, 1, 0, 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2280, 30, 4, 11, 1, 0, 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2281, 30, 5, 16, 1, 0, 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2282, 70, 1, 2, 1, 0, 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2283, 70, 2, 7, 1, 0, 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2284, 70, 3, 9, 1, 0, 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2285, 70, 4, 11, 1, 0, 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2286, 70, 5, 15, 1, 0, 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2287, 109, 1, 1, 1, 0, 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2288, 109, 2, 7, 1, 0, 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2289, 109, 3, 10, 1, 0, 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2290, 109, 4, 11, 1, 0, 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2291, 109, 5, 14, 1, 0, 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2292, 29, 1, 2, 1, 0, 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2293, 29, 2, 7, 1, 0, 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2294, 29, 3, 8, 1, 0, 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2295, 29, 4, 11, 1, 0, 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2296, 29, 5, 16, 1, 0, 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2297, 69, 1, 2, 1, 0, 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2298, 69, 2, 6, 1, 0, 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2299, 69, 3, 9, 1, 0, 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2300, 69, 4, 12, 1, 0, 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2301, 69, 5, 15, 1, 0, 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2302, 106, 1, 1, 1, 0, 0, CAST(N'2026-03-26T12:53:54.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2303, 106, 2, 6, 1, 0, 0, CAST(N'2026-03-26T12:53:54.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2304, 106, 3, 8, 1, 0, 0, CAST(N'2026-03-26T12:53:54.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2305, 106, 4, 13, 1, 0, 0, CAST(N'2026-03-26T12:53:54.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2306, 106, 5, 15, 1, 0, 0, CAST(N'2026-03-26T12:53:54.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2307, 133, 1, 2, 1, 0, 0, CAST(N'2026-03-26T12:53:54.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2308, 133, 2, 4, 1, 0, 0, CAST(N'2026-03-26T12:53:54.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2309, 133, 3, 9, 1, 0, 0, CAST(N'2026-03-26T12:53:54.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2310, 133, 4, 11, 1, 0, 0, CAST(N'2026-03-26T12:53:54.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2311, 133, 5, 14, 1, 0, 0, CAST(N'2026-03-26T12:53:54.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2312, 26, 1, 2, 1, 0, 0, CAST(N'2026-03-26T12:53:54.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2313, 26, 2, 5, 1, 0, 0, CAST(N'2026-03-26T12:53:54.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2314, 26, 3, 9, 1, 0, 0, CAST(N'2026-03-26T12:53:54.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2315, 26, 4, 11, 1, 0, 0, CAST(N'2026-03-26T12:53:54.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2316, 26, 5, 15, 1, 0, 0, CAST(N'2026-03-26T12:53:54.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2317, 66, 1, 3, 1, 0, 0, CAST(N'2026-03-26T12:53:54.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2318, 66, 2, 4, 1, 0, 0, CAST(N'2026-03-26T12:53:54.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2319, 66, 3, 8, 1, 0, 0, CAST(N'2026-03-26T12:53:54.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2320, 66, 4, 13, 1, 0, 0, CAST(N'2026-03-26T12:53:54.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2321, 66, 5, 14, 1, 0, 0, CAST(N'2026-03-26T12:53:54.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2322, 107, 1, 2, 1, 0, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2323, 107, 2, 5, 1, 0, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2324, 107, 3, 10, 1, 0, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2325, 107, 4, 12, 1, 0, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2326, 107, 5, 16, 1, 0, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2327, 149, 1, 1, 1, 0, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2328, 149, 2, 7, 1, 0, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2329, 149, 3, 8, 1, 0, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2330, 149, 4, 12, 1, 0, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2331, 149, 5, 16, 1, 0, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2332, 27, 1, 3, 1, 0, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2333, 27, 2, 5, 1, 0, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2334, 27, 3, 10, 1, 0, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2335, 27, 4, 13, 1, 0, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2336, 27, 5, 15, 1, 0, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2337, 67, 1, 1, 1, 0, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2338, 67, 2, 6, 1, 0, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2339, 67, 3, 9, 1, 0, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2340, 67, 4, 11, 1, 0, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2341, 67, 5, 15, 1, 0, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2342, 116, 1, 2, 1, 0, 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2343, 116, 2, 7, 1, 0, 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2344, 116, 3, 10, 1, 0, 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2345, 116, 4, 13, 1, 0, 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2346, 116, 5, 14, 1, 0, 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2347, 138, 1, 2, 1, 0, 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2348, 138, 2, 5, 1, 0, 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2349, 138, 3, 10, 1, 0, 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2350, 138, 4, 11, 1, 0, 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2351, 138, 5, 15, 1, 0, 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2352, 152, 1, 1, 1, 0, 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2353, 152, 2, 4, 1, 0, 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2354, 152, 3, 10, 1, 0, 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2355, 152, 4, 11, 1, 0, 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2356, 152, 5, 16, 1, 0, 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2357, 36, 1, 3, 1, 0, 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2358, 36, 2, 4, 1, 0, 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2359, 36, 3, 8, 1, 0, 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2360, 36, 4, 11, 1, 0, 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2361, 36, 5, 14, 1, 0, 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2362, 76, 1, 3, 1, 0, 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2363, 76, 2, 5, 1, 0, 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2364, 76, 3, 8, 1, 0, 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2365, 76, 4, 11, 1, 0, 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2366, 76, 5, 15, 1, 0, 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2367, 117, 1, 1, 1, 0, 0, CAST(N'2026-03-26T13:04:43.447' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2368, 117, 2, 7, 1, 0, 0, CAST(N'2026-03-26T13:04:43.447' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2369, 117, 3, 9, 1, 0, 0, CAST(N'2026-03-26T13:04:43.447' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2370, 117, 4, 13, 1, 0, 0, CAST(N'2026-03-26T13:04:43.447' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2371, 117, 5, 16, 1, 0, 0, CAST(N'2026-03-26T13:04:43.447' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2372, 37, 1, 1, 1, 0, 0, CAST(N'2026-03-26T13:04:43.447' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2373, 37, 2, 7, 1, 0, 0, CAST(N'2026-03-26T13:04:43.447' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2374, 37, 3, 9, 1, 0, 0, CAST(N'2026-03-26T13:04:43.447' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2375, 37, 4, 13, 1, 0, 0, CAST(N'2026-03-26T13:04:43.447' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2376, 37, 5, 15, 1, 0, 0, CAST(N'2026-03-26T13:04:43.447' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2377, 77, 1, 3, 1, 0, 0, CAST(N'2026-03-26T13:04:43.447' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2378, 77, 2, 7, 1, 0, 0, CAST(N'2026-03-26T13:04:43.447' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2379, 77, 3, 8, 1, 0, 0, CAST(N'2026-03-26T13:04:43.447' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2380, 77, 4, 13, 1, 0, 0, CAST(N'2026-03-26T13:04:43.447' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2381, 77, 5, 16, 1, 0, 0, CAST(N'2026-03-26T13:04:43.447' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2382, 118, 1, 2, 1, 0, 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2383, 118, 2, 5, 1, 0, 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2384, 118, 3, 8, 1, 0, 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2385, 118, 4, 13, 1, 0, 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2386, 118, 5, 14, 1, 0, 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2387, 139, 1, 3, 1, 0, 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2388, 139, 2, 6, 1, 0, 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2389, 139, 3, 10, 1, 0, 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2390, 139, 4, 12, 1, 0, 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2391, 139, 5, 15, 1, 0, 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2392, 38, 1, 2, 1, 0, 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2393, 38, 2, 7, 1, 0, 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2394, 38, 3, 10, 1, 0, 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2395, 38, 4, 13, 1, 0, 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2396, 38, 5, 14, 1, 0, 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2397, 78, 1, 2, 1, 0, 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2398, 78, 2, 6, 1, 0, 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2399, 78, 3, 10, 1, 0, 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2400, 78, 4, 13, 1, 0, 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2401, 78, 5, 14, 1, 0, 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2402, 119, 1, 3, 1, 0, 0, CAST(N'2026-03-26T13:06:24.287' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2403, 119, 2, 7, 1, 0, 0, CAST(N'2026-03-26T13:06:24.287' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2404, 119, 3, 8, 1, 0, 0, CAST(N'2026-03-26T13:06:24.287' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2405, 119, 4, 11, 1, 0, 0, CAST(N'2026-03-26T13:06:24.287' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2406, 119, 5, 16, 1, 0, 0, CAST(N'2026-03-26T13:06:24.287' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2407, 153, 1, 1, 1, 0, 0, CAST(N'2026-03-26T13:06:24.287' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2408, 153, 2, 4, 1, 0, 0, CAST(N'2026-03-26T13:06:24.287' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2409, 153, 3, 10, 1, 0, 0, CAST(N'2026-03-26T13:06:24.287' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2410, 153, 4, 13, 1, 0, 0, CAST(N'2026-03-26T13:06:24.287' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2411, 153, 5, 14, 1, 0, 0, CAST(N'2026-03-26T13:06:24.287' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2412, 39, 1, 1, 1, 0, 0, CAST(N'2026-03-26T13:06:24.287' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2413, 39, 2, 5, 1, 0, 0, CAST(N'2026-03-26T13:06:24.287' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2414, 39, 3, 8, 1, 0, 0, CAST(N'2026-03-26T13:06:24.287' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2415, 39, 4, 12, 1, 0, 0, CAST(N'2026-03-26T13:06:24.287' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2416, 39, 5, 14, 1, 0, 0, CAST(N'2026-03-26T13:06:24.287' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2417, 79, 1, 3, 1, 0, 0, CAST(N'2026-03-26T13:06:24.287' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2418, 79, 2, 4, 1, 0, 0, CAST(N'2026-03-26T13:06:24.287' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2419, 79, 3, 10, 1, 0, 0, CAST(N'2026-03-26T13:06:24.287' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2420, 79, 4, 12, 1, 0, 0, CAST(N'2026-03-26T13:06:24.287' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2421, 79, 5, 15, 1, 0, 0, CAST(N'2026-03-26T13:06:24.287' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2422, 120, 1, 2, 1, 0, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2423, 120, 2, 5, 1, 0, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2424, 120, 3, 9, 1, 0, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2425, 120, 4, 12, 1, 0, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2426, 120, 5, 16, 1, 0, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2427, 140, 1, 2, 1, 0, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2428, 140, 2, 7, 1, 0, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2429, 140, 3, 9, 1, 0, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2430, 140, 4, 12, 1, 0, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2431, 140, 5, 15, 1, 0, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2432, 40, 1, 1, 1, 0, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2433, 40, 2, 5, 1, 0, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2434, 40, 3, 9, 1, 0, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2435, 40, 4, 13, 1, 0, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2436, 40, 5, 15, 1, 0, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2437, 80, 1, 3, 1, 0, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2438, 80, 2, 6, 1, 0, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2439, 80, 3, 10, 1, 0, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2440, 80, 4, 13, 1, 0, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2441, 80, 5, 16, 1, 0, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2442, 101, 1, 3, 1, 0, 0, CAST(N'2026-03-26T14:35:08.633' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2443, 101, 2, 5, 1, 0, 0, CAST(N'2026-03-26T14:35:08.633' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2444, 101, 3, 10, 1, 0, 0, CAST(N'2026-03-26T14:35:08.633' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2445, 101, 4, 13, 1, 0, 0, CAST(N'2026-03-26T14:35:08.633' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2446, 101, 5, 14, 1, 0, 0, CAST(N'2026-03-26T14:35:08.633' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2447, 147, 1, 3, 1, 0, 0, CAST(N'2026-03-26T14:35:08.633' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2448, 147, 2, 5, 1, 0, 0, CAST(N'2026-03-26T14:35:08.633' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2449, 147, 3, 8, 1, 0, 0, CAST(N'2026-03-26T14:35:08.633' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2450, 147, 4, 12, 1, 0, 0, CAST(N'2026-03-26T14:35:08.633' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2451, 147, 5, 16, 1, 0, 0, CAST(N'2026-03-26T14:35:08.633' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2452, 21, 1, 1, 1, 0, 0, CAST(N'2026-03-26T14:35:08.633' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2453, 21, 2, 7, 1, 0, 0, CAST(N'2026-03-26T14:35:08.633' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2454, 21, 3, 10, 1, 0, 0, CAST(N'2026-03-26T14:35:08.633' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2455, 21, 4, 11, 1, 0, 0, CAST(N'2026-03-26T14:35:08.633' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2456, 21, 5, 15, 1, 0, 0, CAST(N'2026-03-26T14:35:08.633' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2457, 61, 1, 1, 1, 0, 0, CAST(N'2026-03-26T14:35:08.633' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2458, 61, 2, 6, 1, 0, 0, CAST(N'2026-03-26T14:35:08.633' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2459, 61, 3, 8, 1, 0, 0, CAST(N'2026-03-26T14:35:08.633' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2460, 61, 4, 11, 1, 0, 0, CAST(N'2026-03-26T14:35:08.633' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2461, 61, 5, 14, 1, 0, 0, CAST(N'2026-03-26T14:35:08.633' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2462, 102, 1, 1, 1, 0, 0, CAST(N'2026-03-26T14:36:12.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2463, 102, 2, 7, 1, 0, 0, CAST(N'2026-03-26T14:36:12.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2464, 102, 3, 8, 1, 0, 0, CAST(N'2026-03-26T14:36:12.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2465, 102, 4, 13, 1, 0, 0, CAST(N'2026-03-26T14:36:12.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2466, 102, 5, 15, 1, 0, 0, CAST(N'2026-03-26T14:36:12.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2467, 131, 1, 2, 1, 0, 0, CAST(N'2026-03-26T14:36:12.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2468, 131, 2, 7, 1, 0, 0, CAST(N'2026-03-26T14:36:12.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2469, 131, 3, 8, 1, 0, 0, CAST(N'2026-03-26T14:36:12.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2470, 131, 4, 12, 1, 0, 0, CAST(N'2026-03-26T14:36:12.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2471, 131, 5, 16, 1, 0, 0, CAST(N'2026-03-26T14:36:12.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2472, 22, 1, 1, 1, 0, 0, CAST(N'2026-03-26T14:36:12.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2473, 22, 2, 4, 1, 0, 0, CAST(N'2026-03-26T14:36:12.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2474, 22, 3, 8, 1, 0, 0, CAST(N'2026-03-26T14:36:12.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2475, 22, 4, 11, 1, 0, 0, CAST(N'2026-03-26T14:36:12.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2476, 22, 5, 14, 1, 0, 0, CAST(N'2026-03-26T14:36:12.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2477, 62, 1, 3, 1, 0, 0, CAST(N'2026-03-26T14:36:12.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2478, 62, 2, 4, 1, 0, 0, CAST(N'2026-03-26T14:36:12.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2479, 62, 3, 10, 1, 0, 0, CAST(N'2026-03-26T14:36:12.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2480, 62, 4, 13, 1, 0, 0, CAST(N'2026-03-26T14:36:12.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2481, 62, 5, 15, 1, 0, 0, CAST(N'2026-03-26T14:36:12.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2482, 103, 1, 1, 1, 0, 0, CAST(N'2026-03-26T14:37:17.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2483, 103, 2, 5, 1, 0, 0, CAST(N'2026-03-26T14:37:17.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2484, 103, 3, 8, 1, 0, 0, CAST(N'2026-03-26T14:37:17.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2485, 103, 4, 12, 1, 0, 0, CAST(N'2026-03-26T14:37:17.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2486, 103, 5, 16, 1, 0, 0, CAST(N'2026-03-26T14:37:17.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2487, 23, 1, 1, 1, 0, 0, CAST(N'2026-03-26T14:37:17.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2488, 23, 2, 5, 1, 0, 0, CAST(N'2026-03-26T14:37:17.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2489, 23, 3, 8, 1, 0, 0, CAST(N'2026-03-26T14:37:17.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2490, 23, 4, 13, 1, 0, 0, CAST(N'2026-03-26T14:37:17.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2491, 23, 5, 15, 1, 0, 0, CAST(N'2026-03-26T14:37:17.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2492, 63, 1, 1, 1, 0, 0, CAST(N'2026-03-26T14:37:17.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2493, 63, 2, 7, 1, 0, 0, CAST(N'2026-03-26T14:37:17.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2494, 63, 3, 8, 1, 0, 0, CAST(N'2026-03-26T14:37:17.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2495, 63, 4, 13, 1, 0, 0, CAST(N'2026-03-26T14:37:17.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2496, 63, 5, 15, 1, 0, 0, CAST(N'2026-03-26T14:37:17.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2497, 104, 1, 1, 1, 0, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2498, 104, 2, 6, 1, 0, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2499, 104, 3, 10, 1, 0, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2500, 104, 4, 11, 1, 0, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2501, 104, 5, 16, 1, 0, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2502, 132, 1, 2, 1, 0, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2503, 132, 2, 6, 1, 0, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2504, 132, 3, 8, 1, 0, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2505, 132, 4, 12, 1, 0, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2506, 132, 5, 14, 1, 0, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2507, 148, 1, 1, 1, 0, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2508, 148, 2, 4, 1, 0, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2509, 148, 3, 9, 1, 0, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2510, 148, 4, 13, 1, 0, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2511, 148, 5, 16, 1, 0, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2512, 24, 1, 2, 1, 0, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2513, 24, 2, 6, 1, 0, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2514, 24, 3, 10, 1, 0, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2515, 24, 4, 11, 1, 0, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2516, 24, 5, 15, 1, 0, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2517, 64, 1, 3, 1, 0, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2518, 64, 2, 5, 1, 0, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2519, 64, 3, 10, 1, 0, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2520, 64, 4, 13, 1, 0, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2521, 64, 5, 15, 1, 0, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2522, 105, 1, 1, 1, 0, 0, CAST(N'2026-03-26T14:43:47.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2523, 105, 2, 6, 1, 0, 0, CAST(N'2026-03-26T14:43:47.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2524, 105, 3, 8, 1, 0, 0, CAST(N'2026-03-26T14:43:47.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2525, 105, 4, 11, 1, 0, 0, CAST(N'2026-03-26T14:43:47.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2526, 105, 5, 16, 1, 0, 0, CAST(N'2026-03-26T14:43:47.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2527, 25, 1, 3, 1, 0, 0, CAST(N'2026-03-26T14:43:47.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2528, 25, 2, 5, 1, 0, 0, CAST(N'2026-03-26T14:43:47.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2529, 25, 3, 9, 1, 0, 0, CAST(N'2026-03-26T14:43:47.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2530, 25, 4, 11, 1, 0, 0, CAST(N'2026-03-26T14:43:47.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2531, 25, 5, 14, 1, 0, 0, CAST(N'2026-03-26T14:43:47.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2532, 65, 1, 2, 1, 0, 0, CAST(N'2026-03-26T14:43:47.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2533, 65, 2, 7, 1, 0, 0, CAST(N'2026-03-26T14:43:47.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2534, 65, 3, 10, 1, 0, 0, CAST(N'2026-03-26T14:43:47.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2535, 65, 4, 11, 1, 0, 0, CAST(N'2026-03-26T14:43:47.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2536, 65, 5, 16, 1, 0, 0, CAST(N'2026-03-26T14:43:47.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2537, 168, 2, 5, 0, 1, 2, CAST(N'2026-03-26T14:44:52.673' AS DateTime), 2, CAST(N'2026-03-26T14:49:02.510' AS DateTime))
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2538, 168, 4, 13, 0, 1, 2, CAST(N'2026-03-26T14:44:52.673' AS DateTime), 2, CAST(N'2026-03-26T14:49:02.510' AS DateTime))
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2539, 168, 1, 1, 0, 1, 2, CAST(N'2026-03-26T14:44:52.673' AS DateTime), 2, CAST(N'2026-03-26T14:49:02.510' AS DateTime))
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2540, 100, 1, 3, 1, 0, 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2541, 100, 2, 7, 1, 0, 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2542, 100, 3, 10, 1, 0, 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2543, 100, 4, 12, 1, 0, 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2544, 100, 5, 14, 1, 0, 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2545, 130, 1, 3, 1, 0, 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2546, 130, 2, 5, 1, 0, 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2547, 130, 3, 9, 1, 0, 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2548, 130, 4, 12, 1, 0, 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2549, 130, 5, 14, 1, 0, 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2550, 20, 1, 2, 1, 0, 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2551, 20, 2, 5, 1, 0, 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2552, 20, 3, 9, 1, 0, 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2553, 20, 4, 13, 1, 0, 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2554, 20, 5, 15, 1, 0, 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2555, 60, 1, 1, 1, 0, 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2556, 60, 2, 4, 1, 0, 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2557, 60, 3, 9, 1, 0, 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2558, 60, 4, 12, 1, 0, 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2559, 60, 5, 15, 1, 0, 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2560, 128, 1, 1, 1, 0, 0, CAST(N'2026-03-26T14:50:07.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2561, 128, 2, 5, 1, 0, 0, CAST(N'2026-03-26T14:50:07.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2562, 128, 3, 8, 1, 0, 0, CAST(N'2026-03-26T14:50:07.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2563, 128, 4, 11, 1, 0, 0, CAST(N'2026-03-26T14:50:07.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2564, 128, 5, 16, 1, 0, 0, CAST(N'2026-03-26T14:50:07.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2565, 16, 1, 2, 1, 0, 0, CAST(N'2026-03-26T14:50:07.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2566, 16, 2, 6, 1, 0, 0, CAST(N'2026-03-26T14:50:07.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2567, 16, 3, 10, 1, 0, 0, CAST(N'2026-03-26T14:50:07.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2568, 16, 4, 11, 1, 0, 0, CAST(N'2026-03-26T14:50:07.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2569, 16, 5, 16, 1, 0, 0, CAST(N'2026-03-26T14:50:07.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2570, 56, 1, 1, 1, 0, 0, CAST(N'2026-03-26T14:50:07.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2571, 56, 2, 4, 1, 0, 0, CAST(N'2026-03-26T14:50:07.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2572, 56, 3, 10, 1, 0, 0, CAST(N'2026-03-26T14:50:07.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2573, 56, 4, 12, 1, 0, 0, CAST(N'2026-03-26T14:50:07.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2574, 56, 5, 14, 1, 0, 0, CAST(N'2026-03-26T14:50:07.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2575, 96, 1, 2, 1, 0, 0, CAST(N'2026-03-26T14:50:07.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2576, 96, 2, 5, 1, 0, 0, CAST(N'2026-03-26T14:50:07.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2577, 96, 3, 10, 1, 0, 0, CAST(N'2026-03-26T14:50:07.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2578, 96, 4, 12, 1, 0, 0, CAST(N'2026-03-26T14:50:07.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2579, 96, 5, 16, 1, 0, 0, CAST(N'2026-03-26T14:50:07.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2580, 169, 4, 13, 0, 1, 2, CAST(N'2026-03-26T14:50:27.910' AS DateTime), 0, CAST(N'2026-03-26T16:38:21.143' AS DateTime))
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2581, 169, 2, 7, 0, 1, 2, CAST(N'2026-03-26T14:50:27.910' AS DateTime), 0, CAST(N'2026-03-26T16:38:21.143' AS DateTime))
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2582, 169, 3, 10, 0, 1, 2, CAST(N'2026-03-26T14:50:27.910' AS DateTime), 0, CAST(N'2026-03-26T16:38:21.143' AS DateTime))
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2583, 170, 4, 13, 0, 1, 2, CAST(N'2026-03-26T14:50:27.910' AS DateTime), 0, CAST(N'2026-03-26T16:38:21.143' AS DateTime))
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2584, 170, 3, 10, 0, 1, 2, CAST(N'2026-03-26T14:50:27.910' AS DateTime), 0, CAST(N'2026-03-26T16:38:21.143' AS DateTime))
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2585, 170, 2, 6, 0, 1, 2, CAST(N'2026-03-26T14:50:27.910' AS DateTime), 0, CAST(N'2026-03-26T16:38:21.143' AS DateTime))
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2586, 171, 4, 13, 0, 1, 2, CAST(N'2026-03-26T14:59:22.603' AS DateTime), 0, CAST(N'2026-03-26T16:38:12.930' AS DateTime))
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2587, 171, 2, 7, 0, 1, 2, CAST(N'2026-03-26T14:59:22.603' AS DateTime), 0, CAST(N'2026-03-26T16:38:12.930' AS DateTime))
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2588, 171, 3, 10, 0, 1, 2, CAST(N'2026-03-26T14:59:22.603' AS DateTime), 0, CAST(N'2026-03-26T16:38:12.930' AS DateTime))
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2589, 172, 4, 13, 0, 1, 2, CAST(N'2026-03-26T14:59:22.603' AS DateTime), 0, CAST(N'2026-03-26T16:38:12.930' AS DateTime))
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2590, 172, 3, 10, 0, 1, 2, CAST(N'2026-03-26T14:59:22.603' AS DateTime), 0, CAST(N'2026-03-26T16:38:12.930' AS DateTime))
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2591, 172, 2, 6, 0, 1, 2, CAST(N'2026-03-26T14:59:22.603' AS DateTime), 0, CAST(N'2026-03-26T16:38:12.930' AS DateTime))
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2592, 17, 1, 3, 1, 0, 0, CAST(N'2026-03-26T15:00:42.143' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2593, 17, 2, 6, 1, 0, 0, CAST(N'2026-03-26T15:00:42.143' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2594, 17, 3, 10, 1, 0, 0, CAST(N'2026-03-26T15:00:42.143' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2595, 17, 4, 11, 1, 0, 0, CAST(N'2026-03-26T15:00:42.143' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2596, 17, 5, 16, 1, 0, 0, CAST(N'2026-03-26T15:00:42.143' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2597, 57, 1, 2, 1, 0, 0, CAST(N'2026-03-26T15:00:42.143' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2598, 57, 2, 4, 1, 0, 0, CAST(N'2026-03-26T15:00:42.143' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2599, 57, 3, 10, 1, 0, 0, CAST(N'2026-03-26T15:00:42.143' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2600, 57, 4, 11, 1, 0, 0, CAST(N'2026-03-26T15:00:42.143' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2601, 57, 5, 16, 1, 0, 0, CAST(N'2026-03-26T15:00:42.143' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2602, 97, 1, 3, 1, 0, 0, CAST(N'2026-03-26T15:00:42.143' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2603, 97, 2, 6, 1, 0, 0, CAST(N'2026-03-26T15:00:42.143' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2604, 97, 3, 10, 1, 0, 0, CAST(N'2026-03-26T15:00:42.143' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2605, 97, 4, 12, 1, 0, 0, CAST(N'2026-03-26T15:00:42.143' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2606, 97, 5, 15, 1, 0, 0, CAST(N'2026-03-26T15:00:42.143' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2607, 129, 1, 3, 1, 0, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2608, 129, 2, 4, 1, 0, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2609, 129, 3, 8, 1, 0, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2610, 129, 4, 11, 1, 0, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2611, 129, 5, 16, 1, 0, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2612, 146, 1, 3, 1, 0, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2613, 146, 2, 4, 1, 0, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2614, 146, 3, 9, 1, 0, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2615, 146, 4, 12, 1, 0, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2616, 146, 5, 15, 1, 0, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2617, 18, 1, 2, 1, 0, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2618, 18, 2, 5, 1, 0, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2619, 18, 3, 8, 1, 0, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2620, 18, 4, 13, 1, 0, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2621, 18, 5, 14, 1, 0, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2622, 58, 1, 1, 1, 0, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2623, 58, 2, 6, 1, 0, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2624, 58, 3, 10, 1, 0, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2625, 58, 4, 11, 1, 0, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2626, 58, 5, 14, 1, 0, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2627, 98, 1, 2, 1, 0, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2628, 98, 2, 5, 1, 0, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2629, 98, 3, 9, 1, 0, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2630, 98, 4, 11, 1, 0, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2631, 98, 5, 15, 1, 0, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2632, 11, 1, 1, 1, 0, 0, CAST(N'2026-03-26T16:43:06.887' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2633, 11, 2, 5, 1, 0, 0, CAST(N'2026-03-26T16:43:06.887' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2634, 11, 3, 10, 1, 0, 0, CAST(N'2026-03-26T16:43:06.887' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2635, 11, 4, 12, 1, 0, 0, CAST(N'2026-03-26T16:43:06.887' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2636, 11, 5, 15, 1, 0, 0, CAST(N'2026-03-26T16:43:06.887' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2637, 51, 1, 2, 1, 0, 0, CAST(N'2026-03-26T16:43:06.887' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2638, 51, 2, 6, 1, 0, 0, CAST(N'2026-03-26T16:43:06.887' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2639, 51, 3, 10, 1, 0, 0, CAST(N'2026-03-26T16:43:06.887' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2640, 51, 4, 12, 1, 0, 0, CAST(N'2026-03-26T16:43:06.887' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2641, 51, 5, 14, 1, 0, 0, CAST(N'2026-03-26T16:43:06.887' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2642, 91, 1, 3, 1, 0, 0, CAST(N'2026-03-26T16:43:06.887' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2643, 91, 2, 4, 1, 0, 0, CAST(N'2026-03-26T16:43:06.887' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2644, 91, 3, 8, 1, 0, 0, CAST(N'2026-03-26T16:43:06.887' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2645, 91, 4, 12, 1, 0, 0, CAST(N'2026-03-26T16:43:06.887' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2646, 91, 5, 14, 1, 0, 0, CAST(N'2026-03-26T16:43:06.887' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2647, 12, 1, 1, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2648, 12, 2, 5, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2649, 12, 3, 8, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2650, 12, 4, 13, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2651, 12, 5, 15, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2652, 126, 1, 1, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2653, 126, 2, 6, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2654, 126, 3, 10, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2655, 126, 4, 12, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2656, 126, 5, 14, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2657, 144, 1, 2, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2658, 144, 2, 6, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2659, 144, 3, 8, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2660, 144, 4, 13, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2661, 144, 5, 14, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2662, 52, 1, 1, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2663, 52, 2, 4, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2664, 52, 3, 8, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2665, 52, 4, 11, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2666, 52, 5, 15, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2667, 92, 1, 3, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2668, 92, 2, 5, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2669, 92, 3, 8, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2670, 92, 4, 13, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2671, 92, 5, 14, 1, 0, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2672, 13, 1, 1, 1, 0, 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2673, 13, 2, 7, 1, 0, 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2674, 13, 3, 8, 1, 0, 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2675, 13, 4, 13, 1, 0, 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2676, 13, 5, 14, 1, 0, 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2677, 53, 1, 1, 1, 0, 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2678, 53, 2, 7, 1, 0, 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2679, 53, 3, 10, 1, 0, 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2680, 53, 4, 13, 1, 0, 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2681, 53, 5, 14, 1, 0, 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2682, 93, 1, 1, 1, 0, 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2683, 93, 2, 7, 1, 0, 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2684, 93, 3, 8, 1, 0, 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2685, 93, 4, 12, 1, 0, 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2686, 93, 5, 16, 1, 0, 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2687, 127, 1, 3, 1, 0, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2688, 127, 2, 7, 1, 0, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2689, 127, 3, 8, 1, 0, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2690, 127, 4, 12, 1, 0, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2691, 127, 5, 14, 1, 0, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2692, 14, 1, 3, 1, 0, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2693, 14, 2, 7, 1, 0, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2694, 14, 3, 9, 1, 0, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2695, 14, 4, 12, 1, 0, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2696, 14, 5, 14, 1, 0, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2697, 54, 1, 3, 1, 0, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2698, 54, 2, 6, 1, 0, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2699, 54, 3, 8, 1, 0, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2700, 54, 4, 13, 1, 0, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2701, 54, 5, 16, 1, 0, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2702, 94, 1, 3, 1, 0, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2703, 94, 2, 6, 1, 0, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2704, 94, 3, 8, 1, 0, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2705, 94, 4, 13, 1, 0, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2706, 94, 5, 15, 1, 0, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2707, 145, 1, 1, 1, 0, 0, CAST(N'2026-03-26T16:46:19.527' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2708, 145, 2, 7, 1, 0, 0, CAST(N'2026-03-26T16:46:19.527' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2709, 145, 3, 8, 1, 0, 0, CAST(N'2026-03-26T16:46:19.527' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2710, 145, 4, 13, 1, 0, 0, CAST(N'2026-03-26T16:46:19.527' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2711, 145, 5, 15, 1, 0, 0, CAST(N'2026-03-26T16:46:19.527' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2712, 15, 1, 2, 1, 0, 0, CAST(N'2026-03-26T16:46:19.527' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2713, 15, 2, 7, 1, 0, 0, CAST(N'2026-03-26T16:46:19.527' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2714, 15, 3, 8, 1, 0, 0, CAST(N'2026-03-26T16:46:19.527' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2715, 15, 4, 11, 1, 0, 0, CAST(N'2026-03-26T16:46:19.527' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2716, 15, 5, 15, 1, 0, 0, CAST(N'2026-03-26T16:46:19.527' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2717, 55, 1, 1, 1, 0, 0, CAST(N'2026-03-26T16:46:19.527' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2718, 55, 2, 5, 1, 0, 0, CAST(N'2026-03-26T16:46:19.527' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2719, 55, 3, 9, 1, 0, 0, CAST(N'2026-03-26T16:46:19.527' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2720, 55, 4, 12, 1, 0, 0, CAST(N'2026-03-26T16:46:19.527' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2721, 55, 5, 16, 1, 0, 0, CAST(N'2026-03-26T16:46:19.527' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2722, 95, 1, 3, 1, 0, 0, CAST(N'2026-03-26T16:46:19.527' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2723, 95, 2, 6, 1, 0, 0, CAST(N'2026-03-26T16:46:19.527' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2724, 95, 3, 9, 1, 0, 0, CAST(N'2026-03-26T16:46:19.527' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2725, 95, 4, 12, 1, 0, 0, CAST(N'2026-03-26T16:46:19.527' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2726, 95, 5, 16, 1, 0, 0, CAST(N'2026-03-26T16:46:19.527' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2727, 143, 1, 1, 1, 0, 0, CAST(N'2026-03-26T16:53:49.880' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2728, 143, 2, 7, 1, 0, 0, CAST(N'2026-03-26T16:53:49.880' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2729, 143, 3, 8, 1, 0, 0, CAST(N'2026-03-26T16:53:49.880' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2730, 143, 4, 11, 1, 0, 0, CAST(N'2026-03-26T16:53:49.880' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2731, 143, 5, 14, 1, 0, 0, CAST(N'2026-03-26T16:53:49.880' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2732, 49, 1, 1, 1, 0, 0, CAST(N'2026-03-26T16:53:49.880' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2733, 49, 2, 6, 1, 0, 0, CAST(N'2026-03-26T16:53:49.880' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2734, 49, 3, 10, 1, 0, 0, CAST(N'2026-03-26T16:53:49.880' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2735, 49, 4, 12, 1, 0, 0, CAST(N'2026-03-26T16:53:49.880' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2736, 49, 5, 14, 1, 0, 0, CAST(N'2026-03-26T16:53:49.880' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2737, 89, 1, 1, 1, 0, 0, CAST(N'2026-03-26T16:53:49.880' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2738, 89, 2, 6, 1, 0, 0, CAST(N'2026-03-26T16:53:49.880' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2739, 89, 3, 8, 1, 0, 0, CAST(N'2026-03-26T16:53:49.880' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2740, 89, 4, 12, 1, 0, 0, CAST(N'2026-03-26T16:53:49.880' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2741, 89, 5, 16, 1, 0, 0, CAST(N'2026-03-26T16:53:49.880' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2742, 9, 1, 2, 1, 0, 0, CAST(N'2026-03-26T16:53:49.880' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2743, 9, 2, 6, 1, 0, 0, CAST(N'2026-03-26T16:53:49.880' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2744, 9, 3, 10, 1, 0, 0, CAST(N'2026-03-26T16:53:49.880' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2745, 9, 4, 11, 1, 0, 0, CAST(N'2026-03-26T16:53:49.880' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2746, 9, 5, 16, 1, 0, 0, CAST(N'2026-03-26T16:53:49.880' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2747, 123, 1, 3, 1, 0, 0, CAST(N'2026-03-26T16:55:08.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2748, 123, 2, 5, 1, 0, 0, CAST(N'2026-03-26T16:55:08.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2749, 123, 3, 8, 1, 0, 0, CAST(N'2026-03-26T16:55:08.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2750, 123, 4, 12, 1, 0, 0, CAST(N'2026-03-26T16:55:08.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2751, 123, 5, 16, 1, 0, 0, CAST(N'2026-03-26T16:55:08.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2752, 142, 1, 2, 1, 0, 0, CAST(N'2026-03-26T16:55:08.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2753, 142, 2, 7, 1, 0, 0, CAST(N'2026-03-26T16:55:08.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2754, 142, 3, 10, 1, 0, 0, CAST(N'2026-03-26T16:55:08.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2755, 142, 4, 11, 1, 0, 0, CAST(N'2026-03-26T16:55:08.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2756, 142, 5, 14, 1, 0, 0, CAST(N'2026-03-26T16:55:08.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2757, 46, 1, 3, 1, 0, 0, CAST(N'2026-03-26T16:55:08.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2758, 46, 2, 6, 1, 0, 0, CAST(N'2026-03-26T16:55:08.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2759, 46, 3, 8, 1, 0, 0, CAST(N'2026-03-26T16:55:08.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2760, 46, 4, 11, 1, 0, 0, CAST(N'2026-03-26T16:55:08.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2761, 46, 5, 15, 1, 0, 0, CAST(N'2026-03-26T16:55:08.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2762, 6, 1, 3, 1, 0, 0, CAST(N'2026-03-26T16:55:08.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2763, 6, 2, 5, 1, 0, 0, CAST(N'2026-03-26T16:55:08.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2764, 6, 3, 10, 1, 0, 0, CAST(N'2026-03-26T16:55:08.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2765, 6, 4, 13, 1, 0, 0, CAST(N'2026-03-26T16:55:08.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2766, 6, 5, 16, 1, 0, 0, CAST(N'2026-03-26T16:55:08.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2767, 86, 1, 3, 1, 0, 0, CAST(N'2026-03-26T16:55:08.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2768, 86, 2, 7, 1, 0, 0, CAST(N'2026-03-26T16:55:08.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2769, 86, 3, 10, 1, 0, 0, CAST(N'2026-03-26T16:55:08.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2770, 86, 4, 13, 1, 0, 0, CAST(N'2026-03-26T16:55:08.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2771, 86, 5, 14, 1, 0, 0, CAST(N'2026-03-26T16:55:08.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2772, 10, 1, 2, 1, 0, 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2773, 10, 2, 6, 1, 0, 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2774, 10, 3, 10, 1, 0, 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2775, 10, 4, 12, 1, 0, 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2776, 10, 5, 14, 1, 0, 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2777, 125, 1, 2, 1, 0, 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2778, 125, 2, 7, 1, 0, 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2779, 125, 3, 10, 1, 0, 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2780, 125, 4, 11, 1, 0, 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2781, 125, 5, 14, 1, 0, 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2782, 50, 1, 1, 1, 0, 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2783, 50, 2, 5, 1, 0, 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2784, 50, 3, 10, 1, 0, 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2785, 50, 4, 11, 1, 0, 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2786, 50, 5, 14, 1, 0, 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2787, 90, 1, 1, 1, 0, 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2788, 90, 2, 6, 1, 0, 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2789, 90, 3, 10, 1, 0, 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2790, 90, 4, 13, 1, 0, 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2791, 90, 5, 15, 1, 0, 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2792, 47, 1, 1, 1, 0, 2, CAST(N'2026-03-26T16:57:49.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2793, 47, 2, 4, 1, 0, 2, CAST(N'2026-03-26T16:57:49.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2794, 47, 3, 10, 1, 0, 2, CAST(N'2026-03-26T16:57:49.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2795, 47, 4, 13, 1, 0, 2, CAST(N'2026-03-26T16:57:49.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2796, 47, 5, 16, 1, 0, 2, CAST(N'2026-03-26T16:57:49.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2797, 7, 1, 2, 1, 0, 2, CAST(N'2026-03-26T16:57:49.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2798, 7, 2, 4, 1, 0, 2, CAST(N'2026-03-26T16:57:49.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2799, 7, 3, 9, 1, 0, 2, CAST(N'2026-03-26T16:57:49.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2800, 7, 4, 11, 1, 0, 2, CAST(N'2026-03-26T16:57:49.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2801, 7, 5, 14, 1, 0, 2, CAST(N'2026-03-26T16:57:49.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2802, 87, 1, 3, 1, 0, 2, CAST(N'2026-03-26T16:57:49.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2803, 87, 2, 7, 1, 0, 2, CAST(N'2026-03-26T16:57:49.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2804, 87, 3, 9, 1, 0, 2, CAST(N'2026-03-26T16:57:49.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2805, 87, 4, 11, 1, 0, 2, CAST(N'2026-03-26T16:57:49.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2806, 87, 5, 15, 1, 0, 2, CAST(N'2026-03-26T16:57:49.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2807, 124, 1, 2, 1, 0, 2, CAST(N'2026-03-26T16:59:00.697' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2808, 124, 2, 4, 1, 0, 2, CAST(N'2026-03-26T16:59:00.697' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2809, 124, 3, 10, 1, 0, 2, CAST(N'2026-03-26T16:59:00.697' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2810, 124, 4, 13, 1, 0, 2, CAST(N'2026-03-26T16:59:00.697' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2811, 124, 5, 15, 1, 0, 2, CAST(N'2026-03-26T16:59:00.697' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2812, 48, 1, 1, 1, 0, 2, CAST(N'2026-03-26T16:59:00.697' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2813, 48, 2, 5, 1, 0, 2, CAST(N'2026-03-26T16:59:00.697' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2814, 48, 3, 10, 1, 0, 2, CAST(N'2026-03-26T16:59:00.697' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2815, 48, 4, 12, 1, 0, 2, CAST(N'2026-03-26T16:59:00.697' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2816, 48, 5, 14, 1, 0, 2, CAST(N'2026-03-26T16:59:00.697' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2817, 8, 1, 1, 1, 0, 2, CAST(N'2026-03-26T16:59:00.697' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2818, 8, 2, 4, 1, 0, 2, CAST(N'2026-03-26T16:59:00.697' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2819, 8, 3, 9, 1, 0, 2, CAST(N'2026-03-26T16:59:00.697' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2820, 8, 4, 12, 1, 0, 2, CAST(N'2026-03-26T16:59:00.697' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2821, 8, 5, 15, 1, 0, 2, CAST(N'2026-03-26T16:59:00.697' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2822, 88, 1, 2, 1, 0, 2, CAST(N'2026-03-26T16:59:00.697' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2823, 88, 2, 6, 1, 0, 2, CAST(N'2026-03-26T16:59:00.697' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2824, 88, 3, 8, 1, 0, 2, CAST(N'2026-03-26T16:59:00.697' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2825, 88, 4, 11, 1, 0, 2, CAST(N'2026-03-26T16:59:00.697' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2826, 88, 5, 14, 1, 0, 2, CAST(N'2026-03-26T16:59:00.697' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2827, 141, 1, 2, 1, 0, 2, CAST(N'2026-03-26T17:07:45.520' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2828, 141, 2, 4, 1, 0, 2, CAST(N'2026-03-26T17:07:45.520' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2829, 141, 3, 10, 1, 0, 2, CAST(N'2026-03-26T17:07:45.520' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2830, 141, 4, 11, 1, 0, 2, CAST(N'2026-03-26T17:07:45.520' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2831, 141, 5, 15, 1, 0, 2, CAST(N'2026-03-26T17:07:45.520' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2832, 166, 4, 13, 1, 0, 2, CAST(N'2026-03-26T17:07:45.520' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2833, 166, 5, 14, 1, 0, 2, CAST(N'2026-03-26T17:07:45.520' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2834, 166, 3, 8, 1, 0, 2, CAST(N'2026-03-26T17:07:45.520' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2835, 3, 1, 3, 1, 0, 2, CAST(N'2026-03-26T17:07:45.520' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2836, 3, 2, 6, 1, 0, 2, CAST(N'2026-03-26T17:07:45.520' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2837, 3, 3, 10, 1, 0, 2, CAST(N'2026-03-26T17:07:45.520' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2838, 3, 4, 11, 1, 0, 2, CAST(N'2026-03-26T17:07:45.520' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2839, 3, 5, 16, 1, 0, 2, CAST(N'2026-03-26T17:07:45.520' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2840, 43, 1, 1, 1, 0, 2, CAST(N'2026-03-26T17:07:45.520' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2841, 43, 2, 5, 1, 0, 2, CAST(N'2026-03-26T17:07:45.520' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2842, 43, 3, 10, 1, 0, 2, CAST(N'2026-03-26T17:07:45.520' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2843, 43, 4, 12, 1, 0, 2, CAST(N'2026-03-26T17:07:45.520' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2844, 43, 5, 16, 1, 0, 2, CAST(N'2026-03-26T17:07:45.520' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2845, 83, 1, 3, 1, 0, 2, CAST(N'2026-03-26T17:07:45.520' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2846, 83, 2, 7, 1, 0, 2, CAST(N'2026-03-26T17:07:45.520' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2847, 83, 3, 9, 1, 0, 2, CAST(N'2026-03-26T17:07:45.520' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2848, 83, 4, 11, 1, 0, 2, CAST(N'2026-03-26T17:07:45.520' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2849, 83, 5, 15, 1, 0, 2, CAST(N'2026-03-26T17:07:45.520' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2850, 122, 1, 1, 1, 0, 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2851, 122, 2, 6, 1, 0, 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2852, 122, 3, 8, 1, 0, 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2853, 122, 4, 13, 1, 0, 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2854, 122, 5, 16, 1, 0, 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2855, 165, 4, 13, 1, 0, 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2856, 165, 5, 14, 1, 0, 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2857, 4, 1, 2, 1, 0, 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2858, 4, 2, 7, 1, 0, 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2859, 4, 3, 10, 1, 0, 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2860, 4, 4, 11, 1, 0, 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2861, 4, 5, 14, 1, 0, 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2862, 44, 1, 1, 1, 0, 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2863, 44, 2, 4, 1, 0, 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2864, 44, 3, 10, 1, 0, 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2865, 44, 4, 13, 1, 0, 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2866, 44, 5, 15, 1, 0, 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2867, 84, 1, 3, 1, 0, 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2868, 84, 2, 4, 1, 0, 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2869, 84, 3, 9, 1, 0, 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2870, 84, 4, 11, 1, 0, 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2871, 84, 5, 15, 1, 0, 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2878, 162, 4, 12, 1, 0, 2, CAST(N'2026-03-26T17:10:02.487' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2879, 162, 5, 14, 1, 0, 2, CAST(N'2026-03-26T17:10:02.487' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2880, 162, 2, 7, 1, 0, 2, CAST(N'2026-03-26T17:10:02.487' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2881, 163, 4, 13, 1, 0, 2, CAST(N'2026-03-26T17:10:02.487' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2882, 163, 5, 14, 1, 0, 2, CAST(N'2026-03-26T17:10:02.487' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2883, 163, 2, 7, 1, 0, 2, CAST(N'2026-03-26T17:10:02.487' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2884, 1, 1, 3, 1, 0, 2, CAST(N'2026-03-26T17:12:54.170' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2885, 1, 2, 6, 1, 0, 2, CAST(N'2026-03-26T17:12:54.170' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2886, 1, 3, 8, 1, 0, 2, CAST(N'2026-03-26T17:12:54.170' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2887, 1, 4, 13, 1, 0, 2, CAST(N'2026-03-26T17:12:54.170' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2888, 1, 5, 16, 1, 0, 2, CAST(N'2026-03-26T17:12:54.170' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2889, 41, 1, 3, 1, 0, 2, CAST(N'2026-03-26T17:12:54.170' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2890, 41, 2, 4, 1, 0, 2, CAST(N'2026-03-26T17:12:54.170' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2891, 41, 3, 10, 1, 0, 2, CAST(N'2026-03-26T17:12:54.170' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2892, 41, 4, 11, 1, 0, 2, CAST(N'2026-03-26T17:12:54.170' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2893, 41, 5, 15, 1, 0, 2, CAST(N'2026-03-26T17:12:54.170' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2894, 81, 1, 1, 1, 0, 2, CAST(N'2026-03-26T17:12:54.170' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2895, 81, 2, 5, 1, 0, 2, CAST(N'2026-03-26T17:12:54.170' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2896, 81, 3, 8, 1, 0, 2, CAST(N'2026-03-26T17:12:54.170' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2897, 81, 4, 13, 1, 0, 2, CAST(N'2026-03-26T17:12:54.170' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2898, 81, 5, 15, 1, 0, 2, CAST(N'2026-03-26T17:12:54.170' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2899, 121, 1, 2, 1, 0, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2900, 121, 2, 6, 1, 0, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2901, 121, 3, 9, 1, 0, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2902, 121, 4, 13, 1, 0, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2903, 121, 5, 16, 1, 0, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2904, 2, 1, 1, 1, 0, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2905, 2, 2, 4, 1, 0, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2906, 2, 3, 8, 1, 0, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2907, 2, 4, 13, 1, 0, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2908, 2, 5, 14, 1, 0, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2909, 42, 1, 2, 1, 0, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2910, 42, 2, 5, 1, 0, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2911, 42, 3, 8, 1, 0, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2912, 42, 4, 13, 1, 0, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2913, 42, 5, 14, 1, 0, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2914, 82, 1, 2, 1, 0, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2915, 82, 2, 7, 1, 0, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2916, 82, 3, 8, 1, 0, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2917, 82, 4, 12, 1, 0, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2918, 82, 5, 16, 1, 0, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2919, 111, 1, 2, 1, 0, 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2920, 111, 2, 6, 1, 0, 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2921, 111, 3, 8, 1, 0, 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2922, 111, 4, 12, 1, 0, 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2923, 111, 5, 14, 1, 0, 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2924, 31, 1, 2, 1, 0, 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2925, 31, 2, 7, 1, 0, 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2926, 31, 3, 10, 1, 0, 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2927, 31, 4, 11, 1, 0, 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2928, 31, 5, 15, 1, 0, 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2929, 71, 1, 2, 1, 0, 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2930, 71, 2, 4, 1, 0, 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2931, 71, 3, 9, 1, 0, 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2932, 71, 4, 13, 1, 0, 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2933, 71, 5, 15, 1, 0, 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2934, 112, 1, 2, 1, 0, 2, CAST(N'2026-03-26T17:21:42.510' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2935, 112, 2, 5, 1, 0, 2, CAST(N'2026-03-26T17:21:42.510' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2936, 112, 3, 9, 1, 0, 2, CAST(N'2026-03-26T17:21:42.510' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2937, 112, 4, 13, 1, 0, 2, CAST(N'2026-03-26T17:21:42.510' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2938, 112, 5, 15, 1, 0, 2, CAST(N'2026-03-26T17:21:42.510' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2939, 136, 1, 1, 1, 0, 2, CAST(N'2026-03-26T17:21:42.510' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2940, 136, 2, 5, 1, 0, 2, CAST(N'2026-03-26T17:21:42.510' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2941, 136, 3, 10, 1, 0, 2, CAST(N'2026-03-26T17:21:42.510' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2942, 136, 4, 11, 1, 0, 2, CAST(N'2026-03-26T17:21:42.510' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2943, 136, 5, 16, 1, 0, 2, CAST(N'2026-03-26T17:21:42.510' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2944, 32, 1, 3, 1, 0, 2, CAST(N'2026-03-26T17:21:42.510' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2945, 32, 2, 7, 1, 0, 2, CAST(N'2026-03-26T17:21:42.510' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2946, 32, 3, 9, 1, 0, 2, CAST(N'2026-03-26T17:21:42.510' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2947, 32, 4, 11, 1, 0, 2, CAST(N'2026-03-26T17:21:42.510' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2948, 32, 5, 15, 1, 0, 2, CAST(N'2026-03-26T17:21:42.510' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2949, 72, 1, 3, 1, 0, 2, CAST(N'2026-03-26T17:21:42.510' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2950, 72, 2, 5, 1, 0, 2, CAST(N'2026-03-26T17:21:42.510' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2951, 72, 3, 8, 1, 0, 2, CAST(N'2026-03-26T17:21:42.510' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2952, 72, 4, 12, 1, 0, 2, CAST(N'2026-03-26T17:21:42.510' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2953, 72, 5, 15, 1, 0, 2, CAST(N'2026-03-26T17:21:42.510' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2954, 113, 1, 3, 1, 0, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2955, 113, 2, 7, 1, 0, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2956, 113, 3, 9, 1, 0, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2957, 113, 4, 11, 1, 0, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2958, 113, 5, 16, 1, 0, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2959, 151, 1, 1, 1, 0, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2960, 151, 2, 4, 1, 0, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2961, 151, 3, 9, 1, 0, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2962, 151, 4, 13, 1, 0, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2963, 151, 5, 16, 1, 0, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2964, 33, 1, 2, 1, 0, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2965, 33, 2, 7, 1, 0, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2966, 33, 3, 9, 1, 0, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2967, 33, 4, 12, 1, 0, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2968, 33, 5, 15, 1, 0, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2969, 73, 1, 2, 1, 0, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2970, 73, 2, 5, 1, 0, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2971, 73, 3, 9, 1, 0, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2972, 73, 4, 11, 1, 0, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2973, 73, 5, 14, 1, 0, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2974, 114, 1, 2, 1, 0, 2, CAST(N'2026-03-26T17:23:46.300' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2975, 114, 2, 7, 1, 0, 2, CAST(N'2026-03-26T17:23:46.300' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2976, 114, 3, 10, 1, 0, 2, CAST(N'2026-03-26T17:23:46.300' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2977, 114, 4, 13, 1, 0, 2, CAST(N'2026-03-26T17:23:46.300' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2978, 114, 5, 14, 1, 0, 2, CAST(N'2026-03-26T17:23:46.300' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2979, 137, 1, 3, 1, 0, 2, CAST(N'2026-03-26T17:23:46.300' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2980, 137, 2, 4, 1, 0, 2, CAST(N'2026-03-26T17:23:46.300' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2981, 137, 3, 10, 1, 0, 2, CAST(N'2026-03-26T17:23:46.300' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2982, 137, 4, 11, 1, 0, 2, CAST(N'2026-03-26T17:23:46.300' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2983, 137, 5, 15, 1, 0, 2, CAST(N'2026-03-26T17:23:46.300' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2984, 34, 1, 1, 1, 0, 2, CAST(N'2026-03-26T17:23:46.300' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2985, 34, 2, 6, 1, 0, 2, CAST(N'2026-03-26T17:23:46.300' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2986, 34, 3, 9, 1, 0, 2, CAST(N'2026-03-26T17:23:46.300' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2987, 34, 4, 13, 1, 0, 2, CAST(N'2026-03-26T17:23:46.300' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2988, 34, 5, 15, 1, 0, 2, CAST(N'2026-03-26T17:23:46.300' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2989, 74, 1, 3, 1, 0, 2, CAST(N'2026-03-26T17:23:46.300' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2990, 74, 2, 4, 1, 0, 2, CAST(N'2026-03-26T17:23:46.300' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2991, 74, 3, 8, 1, 0, 2, CAST(N'2026-03-26T17:23:46.300' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2992, 74, 4, 13, 1, 0, 2, CAST(N'2026-03-26T17:23:46.300' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2993, 74, 5, 14, 1, 0, 2, CAST(N'2026-03-26T17:23:46.300' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2994, 115, 1, 3, 1, 0, 2, CAST(N'2026-03-26T17:24:40.040' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2995, 115, 2, 5, 1, 0, 2, CAST(N'2026-03-26T17:24:40.040' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2996, 115, 3, 10, 1, 0, 2, CAST(N'2026-03-26T17:24:40.040' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2997, 115, 4, 12, 1, 0, 2, CAST(N'2026-03-26T17:24:40.040' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2998, 115, 5, 14, 1, 0, 2, CAST(N'2026-03-26T17:24:40.040' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2999, 35, 1, 1, 1, 0, 2, CAST(N'2026-03-26T17:24:40.040' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3000, 35, 2, 5, 1, 0, 2, CAST(N'2026-03-26T17:24:40.040' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3001, 35, 3, 8, 1, 0, 2, CAST(N'2026-03-26T17:24:40.040' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3002, 35, 4, 13, 1, 0, 2, CAST(N'2026-03-26T17:24:40.040' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3003, 35, 5, 16, 1, 0, 2, CAST(N'2026-03-26T17:24:40.040' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3004, 75, 1, 3, 1, 0, 2, CAST(N'2026-03-26T17:24:40.040' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3005, 75, 2, 5, 1, 0, 2, CAST(N'2026-03-26T17:24:40.040' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3006, 75, 3, 9, 1, 0, 2, CAST(N'2026-03-26T17:24:40.040' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3007, 75, 4, 11, 1, 0, 2, CAST(N'2026-03-26T17:24:40.040' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3008, 75, 5, 15, 1, 0, 2, CAST(N'2026-03-26T17:24:40.040' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3009, 19, 1, 1, 1, 0, 2, CAST(N'2026-03-26T17:26:13.830' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3010, 19, 2, 5, 1, 0, 2, CAST(N'2026-03-26T17:26:13.830' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3011, 19, 3, 10, 1, 0, 2, CAST(N'2026-03-26T17:26:13.830' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3012, 19, 4, 13, 1, 0, 2, CAST(N'2026-03-26T17:26:13.830' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3013, 19, 5, 16, 1, 0, 2, CAST(N'2026-03-26T17:26:13.830' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3014, 59, 1, 3, 1, 0, 2, CAST(N'2026-03-26T17:26:13.830' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3015, 59, 2, 6, 1, 0, 2, CAST(N'2026-03-26T17:26:13.830' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3016, 59, 3, 8, 1, 0, 2, CAST(N'2026-03-26T17:26:13.830' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3017, 59, 4, 12, 1, 0, 2, CAST(N'2026-03-26T17:26:13.830' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3018, 59, 5, 14, 1, 0, 2, CAST(N'2026-03-26T17:26:13.830' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3019, 99, 1, 1, 1, 0, 2, CAST(N'2026-03-26T17:26:13.830' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3020, 99, 2, 6, 1, 0, 2, CAST(N'2026-03-26T17:26:13.830' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3021, 99, 3, 9, 1, 0, 2, CAST(N'2026-03-26T17:26:13.830' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3022, 99, 4, 11, 1, 0, 2, CAST(N'2026-03-26T17:26:13.830' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3023, 99, 5, 15, 1, 0, 2, CAST(N'2026-03-26T17:26:13.830' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3027, 174, 1, 2, 1, 0, 0, CAST(N'2026-06-01T15:33:11.697' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3028, 175, 1, 2, 1, 0, 0, CAST(N'2026-06-01T15:33:11.697' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3029, 176, 1, 2, 1, 0, 1, CAST(N'2026-06-01T15:34:53.633' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3031, 177, 11, 58, 1, 0, 2, CAST(N'2026-06-01T15:36:45.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3034, 178, 1, 2, 1, 0, 1, CAST(N'2026-06-01T15:49:50.970' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ProductVariantDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductVariantMapping] ON 
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, 1, N'SKU-1-A', CAST(36278.00 AS Decimal(18, 2)), 17, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T17:12:54.153' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2, 2, N'SKU-2-A', CAST(43301.00 AS Decimal(18, 2)), 19, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3, 3, N'SKU-3-A', CAST(35311.00 AS Decimal(18, 2)), 18, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T17:07:45.520' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (4, 4, N'SKU-4-A', CAST(35395.00 AS Decimal(18, 2)), 18, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T17:08:32.330' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (6, 6, N'SKU-6-A', CAST(37131.00 AS Decimal(18, 2)), 11, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T16:55:08.650' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (7, 7, N'SKU-7-A', CAST(44425.00 AS Decimal(18, 2)), 18, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T16:57:49.680' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (8, 8, N'SKU-8-A', CAST(39320.00 AS Decimal(18, 2)), 10, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T16:59:00.680' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (9, 9, N'SKU-9-A', CAST(38218.00 AS Decimal(18, 2)), 16, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T16:53:49.880' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (10, 10, N'SKU-10-A', CAST(37474.00 AS Decimal(18, 2)), 19, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T16:56:00.830' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (11, 11, N'SKU-11-A', CAST(38808.00 AS Decimal(18, 2)), 10, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T16:43:06.873' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (12, 12, N'SKU-12-A', CAST(39005.00 AS Decimal(18, 2)), 11, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (13, 13, N'SKU-13-A', CAST(44674.00 AS Decimal(18, 2)), 13, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (14, 14, N'SKU-14-A', CAST(43736.00 AS Decimal(18, 2)), 12, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (15, 15, N'SKU-15-A', CAST(36200.00 AS Decimal(18, 2)), 15, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T16:46:19.510' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (16, 16, N'SKU-16-A', CAST(50500.00 AS Decimal(18, 2)), 12, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T14:50:07.207' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (17, 17, N'SKU-17-A', CAST(37544.00 AS Decimal(18, 2)), 14, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T15:00:42.130' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (18, 18, N'SKU-18-A', CAST(43478.00 AS Decimal(18, 2)), 18, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (19, 19, N'SKU-19-A', CAST(44104.00 AS Decimal(18, 2)), 13, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T17:26:13.750' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (20, 20, N'SKU-20-A', CAST(43585.00 AS Decimal(18, 2)), 12, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (21, 21, N'SKU-21-A', CAST(35070.00 AS Decimal(18, 2)), 14, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T14:35:08.523' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (22, 22, N'SKU-22-A', CAST(44116.00 AS Decimal(18, 2)), 18, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T14:36:12.463' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (23, 23, N'SKU-23-A', CAST(44420.00 AS Decimal(18, 2)), 13, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T14:37:17.927' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (24, 24, N'SKU-24-A', CAST(42833.00 AS Decimal(18, 2)), 14, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T14:39:15.153' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (25, 25, N'SKU-25-A', CAST(38186.00 AS Decimal(18, 2)), 10, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T14:43:47.667' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (26, 26, N'SKU-26-A', CAST(43972.00 AS Decimal(18, 2)), 15, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T12:53:54.200' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (27, 27, N'SKU-27-A', CAST(41561.00 AS Decimal(18, 2)), 16, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (28, 28, N'SKU-28-A', CAST(42731.00 AS Decimal(18, 2)), 12, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T12:49:41.850' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (29, 29, N'SKU-29-A', CAST(41171.00 AS Decimal(18, 2)), 17, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (30, 30, N'SKU-30-A', CAST(38762.00 AS Decimal(18, 2)), 10, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (31, 31, N'SKU-31-A', CAST(41905.00 AS Decimal(18, 2)), 19, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (32, 32, N'SKU-32-A', CAST(44890.00 AS Decimal(18, 2)), 15, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T17:21:42.497' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (33, 33, N'SKU-33-A', CAST(41640.00 AS Decimal(18, 2)), 19, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (34, 34, N'SKU-34-A', CAST(37242.00 AS Decimal(18, 2)), 16, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T17:23:46.237' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (35, 35, N'SKU-35-A', CAST(44716.00 AS Decimal(18, 2)), 11, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T17:24:40.040' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (36, 36, N'SKU-36-A', CAST(36947.00 AS Decimal(18, 2)), 16, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (37, 37, N'SKU-37-A', CAST(37155.00 AS Decimal(18, 2)), 15, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T13:04:43.447' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (38, 38, N'SKU-38-A', CAST(42449.00 AS Decimal(18, 2)), 12, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (39, 39, N'SKU-39-A', CAST(38066.00 AS Decimal(18, 2)), 11, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T13:06:24.180' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (40, 40, N'SKU-40-A', CAST(39549.00 AS Decimal(18, 2)), 16, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (41, 1, N'SKU-1-B', CAST(43028.00 AS Decimal(18, 2)), 18, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T17:12:54.153' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (42, 2, N'SKU-2-B', CAST(35536.00 AS Decimal(18, 2)), 10, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (43, 3, N'SKU-3-B', CAST(37311.00 AS Decimal(18, 2)), 13, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T17:07:45.520' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (44, 4, N'SKU-4-B', CAST(43582.00 AS Decimal(18, 2)), 16, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T17:08:32.330' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (46, 6, N'SKU-6-B', CAST(40854.00 AS Decimal(18, 2)), 19, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T16:55:08.650' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (47, 7, N'SKU-7-B', CAST(38110.00 AS Decimal(18, 2)), 12, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T16:57:49.680' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (48, 8, N'SKU-8-B', CAST(40178.00 AS Decimal(18, 2)), 12, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T16:59:00.680' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (49, 9, N'SKU-9-B', CAST(37467.00 AS Decimal(18, 2)), 13, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T16:53:49.880' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (50, 10, N'SKU-10-B', CAST(37942.00 AS Decimal(18, 2)), 13, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T16:56:00.830' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (51, 11, N'SKU-11-B', CAST(35615.00 AS Decimal(18, 2)), 17, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T16:43:06.873' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (52, 12, N'SKU-12-B', CAST(39139.00 AS Decimal(18, 2)), 11, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (53, 13, N'SKU-13-B', CAST(35802.00 AS Decimal(18, 2)), 19, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (54, 14, N'SKU-14-B', CAST(39321.00 AS Decimal(18, 2)), 11, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (55, 15, N'SKU-15-B', CAST(41938.00 AS Decimal(18, 2)), 13, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T16:46:19.510' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (56, 16, N'SKU-16-B', CAST(50200.00 AS Decimal(18, 2)), 19, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T14:50:07.207' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (57, 17, N'SKU-17-B', CAST(43349.00 AS Decimal(18, 2)), 10, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T15:00:42.130' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (58, 18, N'SKU-18-B', CAST(42999.00 AS Decimal(18, 2)), 16, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (59, 19, N'SKU-19-B', CAST(37968.00 AS Decimal(18, 2)), 17, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T17:26:13.750' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (60, 20, N'SKU-20-B', CAST(40556.00 AS Decimal(18, 2)), 13, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (61, 21, N'SKU-21-B', CAST(39009.00 AS Decimal(18, 2)), 12, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T14:35:08.523' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (62, 22, N'SKU-22-B', CAST(39671.00 AS Decimal(18, 2)), 12, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T14:36:12.463' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (63, 23, N'SKU-23-B', CAST(42363.00 AS Decimal(18, 2)), 13, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T14:37:17.927' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (64, 24, N'SKU-24-B', CAST(39411.00 AS Decimal(18, 2)), 18, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T14:39:15.153' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (65, 25, N'SKU-25-B', CAST(38520.00 AS Decimal(18, 2)), 17, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T14:43:47.667' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (66, 26, N'SKU-26-B', CAST(37025.00 AS Decimal(18, 2)), 13, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T12:53:54.200' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (67, 27, N'SKU-27-B', CAST(42783.00 AS Decimal(18, 2)), 14, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (68, 28, N'SKU-28-B', CAST(41556.00 AS Decimal(18, 2)), 16, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T12:49:41.850' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (69, 29, N'SKU-29-B', CAST(35075.00 AS Decimal(18, 2)), 16, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (70, 30, N'SKU-30-B', CAST(38447.00 AS Decimal(18, 2)), 15, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (71, 31, N'SKU-31-B', CAST(37518.00 AS Decimal(18, 2)), 13, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (72, 32, N'SKU-32-B', CAST(36977.00 AS Decimal(18, 2)), 15, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T17:21:42.497' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (73, 33, N'SKU-33-B', CAST(35168.00 AS Decimal(18, 2)), 16, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (74, 34, N'SKU-34-B', CAST(44834.00 AS Decimal(18, 2)), 13, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T17:23:46.237' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (75, 35, N'SKU-35-B', CAST(39092.00 AS Decimal(18, 2)), 14, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T17:24:40.040' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (76, 36, N'SKU-36-B', CAST(42215.00 AS Decimal(18, 2)), 17, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (77, 37, N'SKU-37-B', CAST(43271.00 AS Decimal(18, 2)), 10, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T13:04:43.447' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (78, 38, N'SKU-38-B', CAST(40735.00 AS Decimal(18, 2)), 17, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (79, 39, N'SKU-39-B', CAST(35008.00 AS Decimal(18, 2)), 11, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T13:06:24.180' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (80, 40, N'SKU-40-B', CAST(44169.00 AS Decimal(18, 2)), 16, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (81, 1, N'SKU-1-C', CAST(42159.00 AS Decimal(18, 2)), 15, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T17:12:54.153' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (82, 2, N'SKU-2-C', CAST(42935.00 AS Decimal(18, 2)), 19, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (83, 3, N'SKU-3-C', CAST(37798.00 AS Decimal(18, 2)), 11, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T17:07:45.520' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (84, 4, N'SKU-4-C', CAST(44968.00 AS Decimal(18, 2)), 19, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T17:08:32.330' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (86, 6, N'SKU-6-C', CAST(43586.00 AS Decimal(18, 2)), 10, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T16:55:08.650' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (87, 7, N'SKU-7-C', CAST(35633.00 AS Decimal(18, 2)), 14, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T16:57:49.680' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (88, 8, N'SKU-8-C', CAST(40753.00 AS Decimal(18, 2)), 18, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T16:59:00.680' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (89, 9, N'SKU-9-C', CAST(40995.00 AS Decimal(18, 2)), 12, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T16:53:49.880' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (90, 10, N'SKU-10-C', CAST(40939.00 AS Decimal(18, 2)), 14, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T16:56:00.830' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (91, 11, N'SKU-11-C', CAST(41641.00 AS Decimal(18, 2)), 19, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T16:43:06.873' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (92, 12, N'SKU-12-C', CAST(44358.00 AS Decimal(18, 2)), 17, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (93, 13, N'SKU-13-C', CAST(35390.00 AS Decimal(18, 2)), 13, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (94, 14, N'SKU-14-C', CAST(41080.00 AS Decimal(18, 2)), 13, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (95, 15, N'SKU-15-C', CAST(36842.00 AS Decimal(18, 2)), 15, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T16:46:19.510' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (96, 16, N'SKU-16-C', CAST(50300.00 AS Decimal(18, 2)), 19, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T14:50:07.207' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (97, 17, N'SKU-17-C', CAST(40532.00 AS Decimal(18, 2)), 14, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T15:00:42.130' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (98, 18, N'SKU-18-C', CAST(43987.00 AS Decimal(18, 2)), 10, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (99, 19, N'SKU-19-C', CAST(36790.00 AS Decimal(18, 2)), 16, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T17:26:13.750' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (100, 20, N'SKU-20-C', CAST(42381.00 AS Decimal(18, 2)), 15, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (101, 21, N'SKU-21-C', CAST(35504.00 AS Decimal(18, 2)), 14, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T14:35:08.523' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (102, 22, N'SKU-22-C', CAST(38808.00 AS Decimal(18, 2)), 17, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T14:36:12.463' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (103, 23, N'SKU-23-C', CAST(37088.00 AS Decimal(18, 2)), 19, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T14:37:17.927' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (104, 24, N'SKU-24-C', CAST(35436.00 AS Decimal(18, 2)), 10, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T14:39:15.153' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (105, 25, N'SKU-25-C', CAST(38069.00 AS Decimal(18, 2)), 17, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T14:43:47.667' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (106, 26, N'SKU-26-C', CAST(39450.00 AS Decimal(18, 2)), 10, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T12:53:54.200' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (107, 27, N'SKU-27-C', CAST(43815.00 AS Decimal(18, 2)), 13, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (108, 28, N'SKU-28-C', CAST(44839.00 AS Decimal(18, 2)), 14, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T12:49:41.850' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (109, 29, N'SKU-29-C', CAST(43455.00 AS Decimal(18, 2)), 14, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (110, 30, N'SKU-30-C', CAST(42592.00 AS Decimal(18, 2)), 10, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (111, 31, N'SKU-31-C', CAST(38168.00 AS Decimal(18, 2)), 16, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (112, 32, N'SKU-32-C', CAST(41821.00 AS Decimal(18, 2)), 16, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T17:21:42.497' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (113, 33, N'SKU-33-C', CAST(42823.00 AS Decimal(18, 2)), 16, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (114, 34, N'SKU-34-C', CAST(44139.00 AS Decimal(18, 2)), 12, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T17:23:46.237' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (115, 35, N'SKU-35-C', CAST(44589.00 AS Decimal(18, 2)), 14, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 2, CAST(N'2026-03-26T17:24:40.040' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (116, 36, N'SKU-36-C', CAST(40190.00 AS Decimal(18, 2)), 19, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (117, 37, N'SKU-37-C', CAST(44530.00 AS Decimal(18, 2)), 19, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T13:04:43.447' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (118, 38, N'SKU-38-C', CAST(37970.00 AS Decimal(18, 2)), 11, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (119, 39, N'SKU-39-C', CAST(41870.00 AS Decimal(18, 2)), 12, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T13:06:24.180' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (120, 40, N'SKU-40-C', CAST(43320.00 AS Decimal(18, 2)), 17, 1, 0, 1, CAST(N'2026-03-13T15:59:38.933' AS DateTime), 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (121, 2, N'SKU-2-D', CAST(40217.00 AS Decimal(18, 2)), 8, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (122, 4, N'SKU-4-D', CAST(42488.00 AS Decimal(18, 2)), 8, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 2, CAST(N'2026-03-26T17:08:32.330' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (123, 6, N'SKU-6-D', CAST(42089.00 AS Decimal(18, 2)), 8, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 0, CAST(N'2026-03-26T16:55:08.650' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (124, 8, N'SKU-8-D', CAST(41613.00 AS Decimal(18, 2)), 8, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 2, CAST(N'2026-03-26T16:59:00.680' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (125, 10, N'SKU-10-D', CAST(37169.00 AS Decimal(18, 2)), 8, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 0, CAST(N'2026-03-26T16:56:00.830' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (126, 12, N'SKU-12-D', CAST(37165.00 AS Decimal(18, 2)), 8, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (127, 14, N'SKU-14-D', CAST(37389.00 AS Decimal(18, 2)), 8, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (128, 16, N'SKU-16-D', CAST(50400.00 AS Decimal(18, 2)), 8, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 0, CAST(N'2026-03-26T14:50:07.207' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (129, 18, N'SKU-18-D', CAST(38588.00 AS Decimal(18, 2)), 8, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (130, 20, N'SKU-20-D', CAST(39299.00 AS Decimal(18, 2)), 8, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 0, CAST(N'2026-03-26T14:49:32.107' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (131, 22, N'SKU-22-D', CAST(40056.00 AS Decimal(18, 2)), 8, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 0, CAST(N'2026-03-26T14:36:12.463' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (132, 24, N'SKU-24-D', CAST(37774.00 AS Decimal(18, 2)), 8, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 0, CAST(N'2026-03-26T14:39:15.153' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (133, 26, N'SKU-26-D', CAST(41566.00 AS Decimal(18, 2)), 8, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 0, CAST(N'2026-03-26T12:53:54.200' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (134, 28, N'SKU-28-D', CAST(36559.00 AS Decimal(18, 2)), 8, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 0, CAST(N'2026-03-26T12:49:41.850' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (135, 30, N'SKU-30-D', CAST(36955.00 AS Decimal(18, 2)), 8, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (136, 32, N'SKU-32-D', CAST(37167.00 AS Decimal(18, 2)), 8, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 2, CAST(N'2026-03-26T17:21:42.497' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (137, 34, N'SKU-34-D', CAST(40893.00 AS Decimal(18, 2)), 8, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 2, CAST(N'2026-03-26T17:23:46.237' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (138, 36, N'SKU-36-D', CAST(43616.00 AS Decimal(18, 2)), 8, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (139, 38, N'SKU-38-D', CAST(37275.00 AS Decimal(18, 2)), 8, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (140, 40, N'SKU-40-D', CAST(41156.00 AS Decimal(18, 2)), 8, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (141, 3, N'SKU-3-E', CAST(37356.00 AS Decimal(18, 2)), 6, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 2, CAST(N'2026-03-26T17:07:45.520' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (142, 6, N'SKU-6-E', CAST(42151.00 AS Decimal(18, 2)), 6, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 0, CAST(N'2026-03-26T16:55:08.650' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (143, 9, N'SKU-9-E', CAST(45904.00 AS Decimal(18, 2)), 6, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 0, CAST(N'2026-03-26T16:53:49.880' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (144, 12, N'SKU-12-E', CAST(43998.00 AS Decimal(18, 2)), 6, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (145, 15, N'SKU-15-E', CAST(39425.00 AS Decimal(18, 2)), 6, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 0, CAST(N'2026-03-26T16:46:19.510' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (146, 18, N'SKU-18-E', CAST(39551.00 AS Decimal(18, 2)), 6, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (147, 21, N'SKU-21-E', CAST(39722.00 AS Decimal(18, 2)), 6, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 0, CAST(N'2026-03-26T14:35:08.523' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (148, 24, N'SKU-24-E', CAST(41864.00 AS Decimal(18, 2)), 6, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 0, CAST(N'2026-03-26T14:39:15.153' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (149, 27, N'SKU-27-E', CAST(43979.00 AS Decimal(18, 2)), 6, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (150, 30, N'SKU-30-E', CAST(45463.00 AS Decimal(18, 2)), 6, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 0, CAST(N'2026-03-26T12:51:35.940' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (151, 33, N'SKU-33-E', CAST(38221.00 AS Decimal(18, 2)), 6, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (152, 36, N'SKU-36-E', CAST(40224.00 AS Decimal(18, 2)), 6, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 0, CAST(N'2026-03-26T13:04:01.870' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (153, 39, N'SKU-39-E', CAST(38012.00 AS Decimal(18, 2)), 6, 1, 0, 1, CAST(N'2026-03-13T15:59:47.630' AS DateTime), 0, CAST(N'2026-03-26T13:06:24.180' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (161, 44, N'three-stone engagement ring style', CAST(1500.00 AS Decimal(18, 2)), NULL, 1, 0, 1, CAST(N'2026-03-17T15:42:15.907' AS DateTime), 2, CAST(N'2026-03-26T17:10:33.780' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (162, 45, N'product-whitegold-men-emerald', CAST(1500.00 AS Decimal(18, 2)), NULL, 1, 0, 1, CAST(N'2026-03-17T16:47:00.830' AS DateTime), 2, CAST(N'2026-03-26T17:10:02.487' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (163, 45, N'product-rosegold-men-emerald', CAST(1500.00 AS Decimal(18, 2)), NULL, 1, 0, 1, CAST(N'2026-03-17T16:47:00.847' AS DateTime), 2, CAST(N'2026-03-26T17:10:02.487' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (164, 5, N'platinum sapphire ring', CAST(35374.00 AS Decimal(18, 2)), NULL, 1, 0, 2, CAST(N'2026-03-18T09:04:33.880' AS DateTime), 2, CAST(N'2026-03-26T17:09:20.243' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (165, 4, N'product-rosegold-men', CAST(35395.00 AS Decimal(18, 2)), NULL, 1, 0, 2, CAST(N'2026-03-18T09:10:32.940' AS DateTime), 2, CAST(N'2026-03-26T17:08:32.330' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (166, 3, N'product-rosegold-men-16', CAST(30000.00 AS Decimal(18, 2)), NULL, 1, 0, 2, CAST(N'2026-03-18T09:15:47.020' AS DateTime), 2, CAST(N'2026-03-26T17:07:45.520' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (167, 46, N'orlando knox', CAST(350.00 AS Decimal(18, 2)), 0, 1, 0, 2, CAST(N'2026-03-23T18:38:05.880' AS DateTime), 0, CAST(N'2026-03-26T14:52:51.477' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (168, 47, N'product-ruby-rosegold-18kgold', CAST(1500.00 AS Decimal(18, 2)), NULL, 0, 1, 2, CAST(N'2026-03-26T14:44:52.657' AS DateTime), 2, CAST(N'2026-03-26T14:49:02.510' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (169, 48, N'product-rosegold-emerald-20', CAST(1500.00 AS Decimal(18, 2)), NULL, 0, 1, 2, CAST(N'2026-03-26T14:50:27.910' AS DateTime), 0, CAST(N'2026-03-26T16:38:21.143' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (170, 48, N'product-rosegold-20-sapphire', CAST(1500.00 AS Decimal(18, 2)), NULL, 0, 1, 2, CAST(N'2026-03-26T14:50:27.910' AS DateTime), 0, CAST(N'2026-03-26T16:38:21.143' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (171, 49, N'product-rosegold-emerald-20', CAST(1500.00 AS Decimal(18, 2)), NULL, 0, 1, 2, CAST(N'2026-03-26T14:59:22.603' AS DateTime), 0, CAST(N'2026-03-26T16:38:12.917' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (172, 49, N'product-rosegold-20-sapphire', CAST(1500.00 AS Decimal(18, 2)), NULL, 0, 1, 2, CAST(N'2026-03-26T14:59:22.603' AS DateTime), 0, CAST(N'2026-03-26T16:38:12.917' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (173, 50, N'SKU333', NULL, NULL, 0, 1, 1, CAST(N'2026-06-01T15:01:37.043' AS DateTime), 2, CAST(N'2026-06-01T15:35:35.687' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (174, 51, N'SKU333', CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, 1, CAST(N'2026-06-01T15:06:30.450' AS DateTime), 1, CAST(N'2026-06-01T15:34:53.600' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (175, 51, N'SKU333', CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, 1, CAST(N'2026-06-01T15:32:35.063' AS DateTime), 1, CAST(N'2026-06-01T15:34:53.600' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (176, 51, N'SKU333', NULL, NULL, 1, 0, 1, CAST(N'2026-06-01T15:34:53.600' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (177, 52, N'product-valuestesting', CAST(250.00 AS Decimal(18, 2)), NULL, 1, 0, 2, CAST(N'2026-06-01T15:36:34.113' AS DateTime), 2, CAST(N'2026-06-01T15:36:45.650' AS DateTime))
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (178, 53, N'SKU333', NULL, NULL, 1, 0, 1, CAST(N'2026-06-01T15:39:37.457' AS DateTime), 1, CAST(N'2026-06-01T15:49:50.940' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ProductVariantMapping] OFF
GO
SET IDENTITY_INSERT [dbo].[Reviews] ON 
GO
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Rating], [ReviewText], [IsApproved], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, 1, 11, 5, N'Amazing Products', 0, 1, 0, 2, CAST(N'2026-03-13T14:03:44.603' AS DateTime), 2, CAST(N'2026-03-30T16:45:14.467' AS DateTime))
GO
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Rating], [ReviewText], [IsApproved], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2, 1, 11, 5, N'Amazing Products', 0, 1, 0, 2, CAST(N'2026-03-13T14:04:10.307' AS DateTime), 2, CAST(N'2026-03-30T16:45:05.550' AS DateTime))
GO
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Rating], [ReviewText], [IsApproved], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3, 20, 27, 4, N'Good One', 1, 1, 0, NULL, CAST(N'2026-03-30T10:45:22.793' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Rating], [ReviewText], [IsApproved], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (4, 20, 27, 4, N'Good One', 1, 1, 0, 27, CAST(N'2026-03-30T10:58:44.133' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Rating], [ReviewText], [IsApproved], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (5, 20, 27, 3, N'Not At', 0, 1, 0, 27, CAST(N'2026-03-30T11:00:02.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Rating], [ReviewText], [IsApproved], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (6, 16, 27, 3, N'dvbdgfbgf', 0, 1, 0, 27, CAST(N'2026-03-30T11:03:39.347' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Rating], [ReviewText], [IsApproved], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (7, 16, 27, 2, N'Good one', 0, 1, 0, 27, CAST(N'2026-03-30T11:07:32.230' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Rating], [ReviewText], [IsApproved], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (8, 16, 27, 5, N'Good Service', 0, 1, 0, 27, CAST(N'2026-03-30T11:14:43.763' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Rating], [ReviewText], [IsApproved], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (9, 16, 27, 4, N'Hello one', 0, 1, 0, 27, CAST(N'2026-03-30T11:17:57.323' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Rating], [ReviewText], [IsApproved], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (10, 16, 27, 3, N'dfgdtrgt', 0, 1, 0, 27, CAST(N'2026-03-30T11:18:05.260' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Rating], [ReviewText], [IsApproved], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (11, 16, 27, 3, N'dfgdgdfgdf', 0, 1, 0, 27, CAST(N'2026-03-30T11:18:11.160' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Rating], [ReviewText], [IsApproved], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (12, 16, 27, 3, N'gfrgfdgdfg', 0, 1, 0, 27, CAST(N'2026-03-30T11:18:14.450' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Rating], [ReviewText], [IsApproved], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (13, 16, 27, 3, N'gdfgdfgdfgdfgdf', 0, 1, 0, 27, CAST(N'2026-03-30T11:18:19.910' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Rating], [ReviewText], [IsApproved], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (14, 16, 27, 3, N'fdgfdgfd', 0, 1, 0, 27, CAST(N'2026-03-30T11:18:23.470' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Rating], [ReviewText], [IsApproved], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (15, 16, 27, 3, N'fdgfdg', 0, 1, 0, 27, CAST(N'2026-03-30T11:18:30.067' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Rating], [ReviewText], [IsApproved], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (16, 26, 27, 2, N'Price Not Good', 0, 1, 0, 27, CAST(N'2026-03-31T16:10:06.770' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Rating], [ReviewText], [IsApproved], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (17, 26, 27, 3, N'fbfbfgbfb', 0, 1, 0, 27, CAST(N'2026-03-31T16:12:19.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Rating], [ReviewText], [IsApproved], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (18, 26, 27, 1, N'.', 0, 1, 0, 27, CAST(N'2026-03-31T16:13:15.537' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Rating], [ReviewText], [IsApproved], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (19, 26, 27, 2, N'gfdfd testing', 0, 1, 0, 27, CAST(N'2026-03-31T16:17:31.380' AS DateTime), 2, CAST(N'2026-05-29T11:59:32.257' AS DateTime))
GO
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Rating], [ReviewText], [IsApproved], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (20, 14, 27, 3, N'hello 2', 0, 1, 0, 27, CAST(N'2026-05-29T11:44:25.723' AS DateTime), 2, CAST(N'2026-05-29T11:59:47.523' AS DateTime))
GO
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Rating], [ReviewText], [IsApproved], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (21, 21, 27, 5, N'good', 0, 0, 1, 27, CAST(N'2026-06-01T12:04:25.777' AS DateTime), 0, CAST(N'2026-06-01T12:06:57.777' AS DateTime))
GO
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Rating], [ReviewText], [IsApproved], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (22, 3, 27, 4, N'Princess Cut Diamond Ring 234', 0, 0, 1, 27, CAST(N'2026-06-01T12:07:47.460' AS DateTime), 0, CAST(N'2026-06-01T12:08:26.157' AS DateTime))
GO
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Rating], [ReviewText], [IsApproved], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (23, 3, 1, 2, N'devloper testin', 1, 1, 0, 0, CAST(N'2026-06-01T16:31:23.790' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Reviews] OFF
GO
SET IDENTITY_INSERT [dbo].[RolePermissions] ON 
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, 1, 1, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2, 1, 2, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3, 1, 3, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (4, 1, 4, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (5, 1, 5, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (16, 4, 1, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (17, 4, 2, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (18, 4, 3, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (19, 4, 4, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (20, 4, 5, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (21, 5, 1, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (22, 5, 2, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (23, 5, 3, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (24, 5, 4, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (25, 5, 5, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (26, 6, 1, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (27, 6, 2, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (28, 6, 3, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (29, 6, 4, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (30, 6, 5, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (107, 8, 9, 1, 0, 2, CAST(N'2026-03-13T13:08:44.950' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (108, 8, 10, 1, 0, 2, CAST(N'2026-03-13T13:08:44.950' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (109, 8, 11, 1, 0, 2, CAST(N'2026-03-13T13:08:44.950' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (110, 8, 12, 1, 0, 2, CAST(N'2026-03-13T13:08:44.950' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (111, 8, 13, 1, 0, 2, CAST(N'2026-03-13T13:08:44.950' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (112, 8, 14, 1, 0, 2, CAST(N'2026-03-13T13:08:44.950' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (113, 8, 15, 1, 0, 2, CAST(N'2026-03-13T13:08:44.950' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (114, 3, 1, 1, 0, 2, CAST(N'2026-03-13T13:47:15.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (115, 3, 2, 1, 0, 2, CAST(N'2026-03-13T13:47:15.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (116, 3, 3, 1, 0, 2, CAST(N'2026-03-13T13:47:15.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (120, 12, 10, 1, 0, 2, CAST(N'2026-03-13T14:16:42.570' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (121, 12, 11, 1, 0, 2, CAST(N'2026-03-13T14:16:42.570' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (122, 12, 12, 1, 0, 2, CAST(N'2026-03-13T14:16:42.570' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (123, 12, 15, 1, 0, 2, CAST(N'2026-03-13T14:16:42.570' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (130, 13, 9, 1, 0, 2, CAST(N'2026-03-13T14:24:41.513' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (131, 13, 10, 1, 0, 2, CAST(N'2026-03-13T14:24:41.513' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (132, 13, 11, 1, 0, 2, CAST(N'2026-03-13T14:24:41.513' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (133, 13, 12, 1, 0, 2, CAST(N'2026-03-13T14:24:41.513' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (165, 14, 3, 1, 0, 2, CAST(N'2026-03-18T08:53:40.467' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (166, 14, 9, 1, 0, 2, CAST(N'2026-03-18T08:53:40.467' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (167, 14, 11, 1, 0, 2, CAST(N'2026-03-18T08:53:40.467' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (168, 14, 14, 1, 0, 2, CAST(N'2026-03-18T08:53:40.467' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (169, 14, 15, 1, 0, 2, CAST(N'2026-03-18T08:53:40.467' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (170, 14, 19, 1, 0, 2, CAST(N'2026-03-18T08:53:40.467' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (185, 2, 1, 1, 0, 2, CAST(N'2026-03-20T12:34:36.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (186, 2, 2, 1, 0, 2, CAST(N'2026-03-20T12:34:36.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (187, 2, 3, 1, 0, 2, CAST(N'2026-03-20T12:34:36.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (188, 2, 5, 1, 0, 2, CAST(N'2026-03-20T12:34:36.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (189, 2, 9, 1, 0, 2, CAST(N'2026-03-20T12:34:36.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (190, 2, 10, 1, 0, 2, CAST(N'2026-03-20T12:34:36.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (191, 2, 11, 1, 0, 2, CAST(N'2026-03-20T12:34:36.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (192, 2, 12, 1, 0, 2, CAST(N'2026-03-20T12:34:36.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (193, 2, 13, 1, 0, 2, CAST(N'2026-03-20T12:34:36.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (194, 2, 14, 1, 0, 2, CAST(N'2026-03-20T12:34:36.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (195, 2, 15, 1, 0, 2, CAST(N'2026-03-20T12:34:36.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (196, 2, 20, 1, 0, 2, CAST(N'2026-03-20T12:34:36.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (197, 2, 21, 1, 0, 2, CAST(N'2026-03-20T12:34:36.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (198, 2, 23, 1, 0, 2, CAST(N'2026-03-20T12:34:36.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (199, 2, 24, 1, 0, 2, CAST(N'2026-03-20T12:34:36.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (200, 15, 1, 1, 0, 2, CAST(N'2026-05-29T21:17:02.407' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (201, 15, 2, 1, 0, 2, CAST(N'2026-05-29T21:17:02.407' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (202, 15, 3, 1, 0, 2, CAST(N'2026-05-29T21:17:02.407' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (203, 15, 4, 1, 0, 2, CAST(N'2026-05-29T21:17:02.407' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (204, 15, 5, 1, 0, 2, CAST(N'2026-05-29T21:17:02.407' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (205, 18, 1, 1, 0, 2, CAST(N'2026-05-29T21:21:20.733' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (206, 18, 2, 1, 0, 2, CAST(N'2026-05-29T21:21:20.733' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (207, 18, 3, 1, 0, 2, CAST(N'2026-05-29T21:21:20.733' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (208, 18, 4, 1, 0, 2, CAST(N'2026-05-29T21:21:20.733' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (209, 18, 5, 1, 0, 2, CAST(N'2026-05-29T21:21:20.733' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (210, 19, 1, 1, 0, 2, CAST(N'2026-05-29T21:23:22.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (211, 19, 2, 1, 0, 2, CAST(N'2026-05-29T21:23:22.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (212, 19, 3, 1, 0, 2, CAST(N'2026-05-29T21:23:22.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (213, 19, 4, 1, 0, 2, CAST(N'2026-05-29T21:23:22.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (214, 19, 5, 1, 0, 2, CAST(N'2026-05-29T21:23:22.980' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[RolePermissions] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, N'Super Admin', N'Full system access', 1, 0, 1, CAST(N'2026-02-27T13:19:35.910' AS DateTime), 1, CAST(N'2026-02-27T13:19:35.910' AS DateTime))
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2, N'Admin', N'Full system access', 1, 0, 1, CAST(N'2026-02-27T13:19:35.910' AS DateTime), 2, CAST(N'2026-03-20T12:34:36.870' AS DateTime))
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3, N'Store Manager', N'Test', 1, 0, 1, CAST(N'2026-02-27T13:19:35.910' AS DateTime), 2, CAST(N'2026-03-13T13:47:15.660' AS DateTime))
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (4, N'Sales Executive', N'Handles sales', 1, 0, 1, CAST(N'2026-02-27T13:19:35.910' AS DateTime), 1, CAST(N'2026-02-27T13:19:35.910' AS DateTime))
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (5, N'Inventory Controller', N'Controls stock', 1, 0, 1, CAST(N'2026-02-27T13:19:35.910' AS DateTime), 1, CAST(N'2026-02-27T13:19:35.910' AS DateTime))
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (6, N'Customer Support', N'Handles customer issues', 1, 0, 1, CAST(N'2026-02-27T13:19:35.910' AS DateTime), 1, CAST(N'2026-02-27T13:19:35.910' AS DateTime))
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (7, N'Test', NULL, 0, 1, 2, CAST(N'2026-03-06T14:05:51.357' AS DateTime), 2, CAST(N'2026-03-06T14:06:09.813' AS DateTime))
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (8, N'User', N'User', 0, 1, 2, CAST(N'2026-03-11T16:06:58.280' AS DateTime), 2, CAST(N'2026-03-13T13:41:33.447' AS DateTime))
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (10, N'Test-1', NULL, 0, 1, 2, CAST(N'2026-03-13T13:44:12.687' AS DateTime), 2, CAST(N'2026-03-13T13:44:16.810' AS DateTime))
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (12, N'September Price', N'Nisi veniam autem e', 0, 1, 2, CAST(N'2026-03-13T14:16:25.067' AS DateTime), 2, CAST(N'2026-03-13T14:16:48.763' AS DateTime))
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (13, N'Clark Hodges', N'Facilis corporis ten', 0, 1, 2, CAST(N'2026-03-13T14:23:18.073' AS DateTime), 2, CAST(N'2026-03-13T14:24:46.530' AS DateTime))
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (14, N'Althea Ball', N'Eligendi qui unde', 0, 1, 2, CAST(N'2026-03-18T08:53:31.047' AS DateTime), 2, CAST(N'2026-03-18T08:53:46.080' AS DateTime))
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (15, N'Testing', N'string', 1, 0, 2, CAST(N'2026-05-29T21:17:02.407' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (18, N'Testing2', N'string', 1, 0, 2, CAST(N'2026-05-29T21:21:20.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (19, N'Testing3', N'string', 1, 0, 2, CAST(N'2026-05-29T21:23:22.980' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[User_ForgetPassword] ON 
GO
INSERT [dbo].[User_ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (1, N'vmgami2001@gmail.com', N'158674', CAST(N'2026-06-02T09:47:23.363' AS DateTime), CAST(N'2026-06-02T09:57:23.363' AS DateTime), 1)
GO
INSERT [dbo].[User_ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (2, N'vmgami2001@gmail.com', N'404083', CAST(N'2026-06-02T09:49:06.313' AS DateTime), CAST(N'2026-06-02T09:59:06.313' AS DateTime), 1)
GO
INSERT [dbo].[User_ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (3, N'vmgami2001@gmail.com', N'833137', CAST(N'2026-06-02T09:55:20.400' AS DateTime), CAST(N'2026-06-02T10:05:20.400' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[User_ForgetPassword] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (1, N'Super', N'Admin', N'Adnin', N'Zt8+p2PF6g8=', 1, 1, 0, 1, CAST(N'2026-02-27T13:19:35.910' AS DateTime), 1, CAST(N'2026-02-27T13:19:35.910' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (2, N'Admin', N'', N'Admin', N'Zt8+p2PF6g8=', 2, 1, 0, 1, CAST(N'2026-02-27T13:19:35.910' AS DateTime), 1, CAST(N'2026-02-27T13:19:35.910' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (3, N'Arjun', N'Sharma', N'arjun.sharma@jewelrystore.com', N'k5wV61ccalc=', 5, 1, 0, 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (4, N'Riya', N'Patel', N'riya.patel@jewelrystore.com', N'k5wV61ccalc=', 5, 1, 0, 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (5, N'Kabir', N'Mehta', N'kabir.mehta@jewelrystore.com', N'k5wV61ccalc=', 4, 1, 0, 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (6, N'Sneha', N'Kapoor', N'sneha.kapoor@jewelrystore.com', N'k5wV61ccalc=', 3, 0, 0, 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), 2, CAST(N'2026-02-28T11:32:31.400' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (7, N'Rahul', N'Reddy', N'rahul.reddy@jewelrystore.com', N'k5wV61ccalc=', 3, 1, 0, 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (8, N'Ananya', N'Iyer', N'ananya.iyer@jewelrystore.com', N'k5wV61ccalc=', 5, 1, 0, 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (9, N'Vikram', N'Malhotra', N'vikram.malhotra@jewelrystore.com', N'k5wV61ccalc=', 3, 1, 0, 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), 2, CAST(N'2026-03-13T13:08:24.310' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (10, N'Meera', N'Desai', N'meera.desai@jewelrystore.com', N'k5wV61ccalc=', 4, 1, 0, 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (11, N'Aditya', N'Nair', N'aditya.nair@jewelrystore.com', N'k5wV61ccalc=', 3, 1, 0, 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (12, N'Priya', N'Verma', N'priya.verma1@jewelrystore.com', N'k5wV61ccalc=', 3, 1, 0, 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), 2, CAST(N'2026-03-18T08:53:16.463' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (13, N'Kaval', N'Patel', N'Kaval@jewelry.com', N'k5wV61ccalc=', 8, 0, 1, 2, CAST(N'2026-03-11T16:07:28.720' AS DateTime), 2, CAST(N'2026-03-13T13:28:19.227' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (14, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, CAST(N'2026-03-13T13:29:06.733' AS DateTime), 2, CAST(N'2026-03-13T13:34:25.553' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (20, N'Karleigh', N'Trujillo', N'123456', N'k5wV61ccalc=', 3, 0, 1, 2, CAST(N'2026-03-13T14:09:45.257' AS DateTime), 2, CAST(N'2026-03-13T14:16:04.680' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (21, N'Brenden', N'Mann11', N'golovel', N'k5wV61ccalc=', 5, 0, 1, 2, CAST(N'2026-03-13T14:22:15.073' AS DateTime), 2, CAST(N'2026-03-13T14:22:49.550' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (22, N'vishalF', N'gamiF', N'vishalgami', N'O5NaughWAY37lpubJWpqTQ==', 2, 1, 0, 1, CAST(N'2026-05-29T20:52:47.293' AS DateTime), 1, CAST(N'2026-05-29T20:53:33.270' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (23, N'Sagar', N'Solanki', N' sagalsolanki', N'Jg0t8Uvi2GDC2nBlPRfpQA==', 18, 0, 1, 2, CAST(N'2026-05-30T17:00:22.637' AS DateTime), 2, CAST(N'2026-05-30T17:00:36.440' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (24, N'demo101', N'demo102', N'testingdemo', N'7LpC0PTlu9S6waGuESvGgg==', 18, 1, 0, 2, CAST(N'2026-05-30T17:01:33.130' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (25, N'Demo103', N'Demo104', N'testingdemo102', N'7LpC0PTlu9RqX7kDNJ+Mhg==', 19, 0, 1, 2, CAST(N'2026-05-30T17:02:09.413' AS DateTime), 2, CAST(N'2026-05-30T17:02:24.213' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (26, N'gami', N'vishal', N'gamivishal', N'cWvolfLm9cYMt1OkMoU3Xw==', 4, 1, 0, 2, CAST(N'2026-05-30T17:03:38.653' AS DateTime), 2, CAST(N'2026-05-30T17:04:00.103' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (27, N'gami', N'vishal', N'gamivishal23', N'cWvolfLm9caKj/DMDP9RAg==', 3, 1, 0, 0, CAST(N'2026-05-30T18:53:10.163' AS DateTime), 2, CAST(N'2026-06-01T17:45:01.347' AS DateTime), N'vmgami2001@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[WishlistCustomer] ON 
GO
INSERT [dbo].[WishlistCustomer] ([Id], [CustomerId], [ProductId], [VariantId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, 27, 25, 105, 1, 0, 27, CAST(N'2026-06-02T10:45:21.347' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[WishlistCustomer] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Roles__8A2B61600C9DCEB3]    Script Date: 02-06-2026 12:08:35 ******/
ALTER TABLE [dbo].[Roles] ADD UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__C9F28456A5D9BA6B]    Script Date: 02-06-2026 12:08:35 ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Attribute] ADD  CONSTRAINT [DF__Attribute__IsAct__73A521EA]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Attribute] ADD  CONSTRAINT [DF__Attribute__IsDel__74994623]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Attribute] ADD  CONSTRAINT [DF__Attribute__Creat__758D6A5C]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[AttributeValue] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[AttributeValue] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[AttributeValue] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Cart] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Cart] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Cart] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF__Category__IsActi__7C3A67EB]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF__Category__IsDele__7D2E8C24]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF__Category__Create__7E22B05D]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Collection] ADD  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[Collection] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Collection] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[CollectionMapping] ADD  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[Coupons] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Coupons] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Coupons] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ForgetPassword] ADD  CONSTRAINT [DF__ForgetPas__Creat__6A50C1DA]  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[ForgetPassword] ADD  CONSTRAINT [DF__ForgetPas__IsUse__6B44E613]  DEFAULT ((0)) FOR [IsUsed]
GO
ALTER TABLE [dbo].[Inquiries] ADD  CONSTRAINT [DF__Inquiries__IsAct__51EF2864]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Inquiries] ADD  CONSTRAINT [DF__Inquiries__IsDel__52E34C9D]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Inquiries] ADD  CONSTRAINT [DF__Inquiries__Creat__53D770D6]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Offers] ADD  CONSTRAINT [DF__Offers__IsCoupon__2D12A970]  DEFAULT ((0)) FOR [IsCouponRequired]
GO
ALTER TABLE [dbo].[Offers] ADD  CONSTRAINT [DF__Offers__IsFirstO__2E06CDA9]  DEFAULT ((0)) FOR [IsFirstOrderOnly]
GO
ALTER TABLE [dbo].[Offers] ADD  CONSTRAINT [DF_Offers_IsPrimeOnly1]  DEFAULT ((0)) FOR [IsAutoApply]
GO
ALTER TABLE [dbo].[Offers] ADD  CONSTRAINT [DF__Offers__IsPrimeO__2EFAF1E2]  DEFAULT ((0)) FOR [IsPrimeOnly]
GO
ALTER TABLE [dbo].[Offers] ADD  CONSTRAINT [DF__Offers__AllowWit__2FEF161B]  DEFAULT ((0)) FOR [AllowWithOtherOffers]
GO
ALTER TABLE [dbo].[Offers] ADD  CONSTRAINT [DF__Offers__Priority__30E33A54]  DEFAULT ((1)) FOR [Priority]
GO
ALTER TABLE [dbo].[Offers] ADD  CONSTRAINT [DF__Offers__IsActive__31D75E8D]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Offers] ADD  CONSTRAINT [DF__Offers__IsDelete__32CB82C6]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Offers] ADD  CONSTRAINT [DF__Offers__CreatedB__33BFA6FF]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Offers] ADD  CONSTRAINT [DF__Offers__CreatedD__34B3CB38]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[OfferUsage] ADD  CONSTRAINT [DF__OfferUsag__UsedD__6CF8245B]  DEFAULT (getdate()) FOR [UsedDate]
GO
ALTER TABLE [dbo].[OrderItems] ADD  CONSTRAINT [DF__OrderItem__IsAct__54CB950F]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[OrderItems] ADD  CONSTRAINT [DF__OrderItem__IsDel__55BFB948]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[OrderItems] ADD  CONSTRAINT [DF__OrderItem__Creat__56B3DD81]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF__Orders__IsActive__57A801BA]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF__Orders__IsDelete__589C25F3]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF__Orders__CreatedD__59904A2C]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ProductImages] ADD  CONSTRAINT [DF__ProductIm__IsAct__0A888742]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ProductImages] ADD  CONSTRAINT [DF__ProductIm__IsDel__0B7CAB7B]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ProductImages] ADD  CONSTRAINT [DF__ProductIm__Creat__0C70CFB4]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ProductPriceHistory] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ProductStock] ADD  CONSTRAINT [DF__ProductSt__Reser__1EF99443]  DEFAULT ((0)) FOR [ReservedStock]
GO
ALTER TABLE [dbo].[ProductVariantDetails] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ProductVariantDetails] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ProductVariantDetails] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ProductVariantMapping] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ProductVariantMapping] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ProductVariantMapping] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Reviews] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Reviews] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Reviews] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[RolePermissions] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[RolePermissions] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[RolePermissions] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Roles] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Roles] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Roles] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  StoredProcedure [dbo].[CheckUserAuthenticationForUserMaster]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[CheckUserAuthenticationForUserMaster]
    @puserid  VARCHAR(50),
    @password VARCHAR(50),
    @response NVARCHAR(200) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @Id BIGINT,
            @UserNameDb NVARCHAR(100),
            @PasswordHash NVARCHAR(200),
			 @RoleId BIGINT,
            @RoleName NVARCHAR(100);

    
    IF NOT EXISTS (
        SELECT 1 
        FROM Users
        WHERE UPPER(UserName) = UPPER(@puserid)
          AND UPPER(Password) = UPPER(@password)
          AND IsActive = 1
    )
    BEGIN
        SET @response = 'E|Invalid username or password';
        RETURN;
    END

    -- ✅ Get user details
    SELECT 
        @Id           = Id,
        @UserNameDb   = UserName,
        @PasswordHash = [Password]
    FROM Users
    WHERE UPPER(UserName) = UPPER(@puserid)
      AND IsActive = 1;

	      SELECT 
        @RoleId = R.Id,
        @RoleName = R.Name
    FROM UserRoleMapping UR
    INNER JOIN Roles R ON UR.RoleId = R.Id
    WHERE UR.UserId = @Id AND UR.IsActive = 1;

    -- ✅ Build response: S|Message|UserId|UserName
    SET @response = CONCAT('S|User fetched successfully|', @Id, '|', @UserNameDb,'|', @RoleId, '|', @RoleName);
END
GO
/****** Object:  StoredProcedure [dbo].[SP_AddToCart]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_AddToCart]
(
    @CustomerId INT,
    @ProductId INT,
    @VariantId INT,
    @Quantity INT
)
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    DECLARE @Retry INT = 0, @MaxRetry INT = 3;

RetryBlock:

    BEGIN TRY
        BEGIN TRAN;
	
	IF @Quantity < -1 BEGIN SET @Quantity = -1; END

	IF @Quantity > 0
    BEGIN

        DECLARE @AvailableStock INT, @ReservedStock INT;

        /* =====================================================
           STEP 1: INITIAL STOCK CHECK (LOCK)
        ===================================================== */
        SELECT @AvailableStock = AvailableStock, @ReservedStock = ReservedStock
        FROM ProductStock WITH (UPDLOCK, HOLDLOCK)
        WHERE ProductId = @ProductId AND VariantId = @VariantId;

        /* =====================================================
           STEP 2: RELEASE EXPIRED IF NEEDED
        ===================================================== */
        IF (@AvailableStock - @ReservedStock) < @Quantity
        BEGIN
            EXEC dbo.SP_ReleaseExpiredReservations @ProductId = @ProductId, @VariantId = @VariantId, @Quantity = @Quantity;
        END

        /* =====================================================
           STEP 3: RE-CHECK
        ===================================================== */
        SELECT @AvailableStock = AvailableStock, @ReservedStock = ReservedStock
        FROM ProductStock WITH (UPDLOCK, HOLDLOCK)
        WHERE ProductId = @ProductId AND VariantId = @VariantId;

        IF (@AvailableStock - @ReservedStock) < @Quantity
        BEGIN
            ROLLBACK;
            RAISERROR('Insufficient stock available.', 16, 1);
            RETURN;
        END

    END
	
    /* =====================================================
       STEP 4: RESERVE STOCK
    ===================================================== */
    UPDATE ProductStock
    SET ReservedStock = ReservedStock + @Quantity
    WHERE ProductId = @ProductId AND VariantId = @VariantId;

    /* =====================================================
       STEP 5: UPSERT CART
    ===================================================== */

    IF EXISTS ( SELECT 1 FROM CustomerCart WHERE CustomerId = @CustomerId AND ProductId = @ProductId AND VariantId = @VariantId )
    BEGIN
        UPDATE CustomerCart
        SET Quantity = Quantity + @Quantity, LastModifiedDate = GETDATE()
        WHERE CustomerId = @CustomerId AND ProductId = @ProductId AND VariantId = @VariantId;
    END
    ELSE
    BEGIN
        INSERT INTO CustomerCart (CustomerId, ProductId, VariantId, Quantity, CreatedDate,IsActive,IsDeleted,CreatedBy)
        VALUES (@CustomerId, @ProductId, @VariantId, @Quantity, GETDATE(),1,0,@CustomerId);
    END

	DELETE FROM CustomerCart WHERE Quantity <= 0 AND @CustomerId = @CustomerId;

    EXEC dbo.SP_ApplyOffersToCart @CustomerId = @CustomerId;

  --  SELECT 
  --      C.Id,
  --      C.ProductId,
  --      C.VariantId,
  --      C.Quantity,
  --      PVM.Price,
  --      (C.Quantity * PVM.Price) AS LineTotal,
  --      ISNULL(C.LastModifiedDate, C.CreatedDate) LastModifiedDate,
		--C.IsActive
  --  FROM CustomerCart C
  --  INNER JOIN ProductVariantMapping PVM ON PVM.Id = C.VariantId
  --  WHERE C.CustomerId = @CustomerId;
  
        COMMIT;
    END TRY
BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK;

        IF ERROR_NUMBER() = 1205 AND @Retry < @MaxRetry
        BEGIN
            SET @Retry += 1;
            WAITFOR DELAY '00:00:00.200';
            GOTO RetryBlock;
        END

        DECLARE @ErrMsg NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrMsg, 16, 1);
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ApplyOffersToCart]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ApplyOffersToCart]
(
    @CustomerId INT,
    @CouponCode NVARCHAR(50) = NULL,
    @SelectedOfferId INT = NULL,
    @RemoveOfferId INT = NULL
)
AS
BEGIN
    SET NOCOUNT ON;
	
	DECLARE @Now DATETIME = GETDATE();
	DECLARE @Time TIME = CAST(@Now AS TIME);
	
	IF OBJECT_ID('tempdb..#ProductVariants') IS NOT NULL DROP TABLE #ProductVariants;
	IF OBJECT_ID('tempdb..#CartItems') IS NOT NULL DROP TABLE #CartItems;
	IF OBJECT_ID('tempdb..#CartSummary') IS NOT NULL DROP TABLE #CartSummary;
	IF OBJECT_ID('tempdb..#EligibleOffers') IS NOT NULL DROP TABLE #EligibleOffers;

	SELECT X.Id AS ProductId, X.ProductDescription, PVM.Id AS VariantId, X.ProductName, C.Id AS CategoryId, C.CategoryName,
		STRING_AGG(AV.Value, ', ') AS VariantAttributeValues_Only,
		STRING_AGG(A.Name + ' : ' + AV.Value, ', ') AS VariantAttributes,
		PVM.SKU, PVM.Price, PI.ImagePath, ISNULL(PS.TotalAvailableStock,0) AS TotalAvailableStock	
	INTO #ProductVariants
	FROM Products X
	LEFT JOIN Category C ON C.Id = X.CategoryId
	INNER JOIN ProductVariantMapping PVM ON PVM.ProductId = X.Id
	INNER JOIN ProductVariantDetails PVD ON PVD.VariantId = PVM.Id
	INNER JOIN Attribute A ON A.Id = PVD.AttributeId
	INNER JOIN AttributeValue AV ON AV.Id = PVD.AttributeValueId
	LEFT JOIN ProductImages PI ON PI.ProductId = X.Id AND PI.VariantId = PVM.Id
	LEFT JOIN (
		SELECT VariantId, SUM(ISNULL(AvailableStock,0)) - SUM(ISNULL(ReservedStock,0)) AS TotalAvailableStock
		FROM ProductStock
		GROUP BY VariantId
	) PS ON PS.VariantId = PVM.Id
	WHERE X.IsActive = 1 AND PVM.IsActive = 1 AND C.IsActive = 1 AND X.IsDeleted = 0
	GROUP BY X.Id, X.ProductName, X.ProductDescription, C.Id, C.CategoryName, PVM.Id, PVM.ProductId, PVM.SKU, PVM.Price, PI.ImagePath, PS.TotalAvailableStock
	
	---------------------------------------------------
	-- 1. CART ITEMS (USING VARIANT PRICE)
	---------------------------------------------------
	SELECT cc.CustomerId, p.ProductName, cc.ProductId, cc.VariantId, p.CategoryId, cc.Quantity, pvm.Price, (cc.Quantity * pvm.Price) AS LineTotal
	INTO #CartItems
	FROM CustomerCart cc
	JOIN ProductVariantMapping pvm ON pvm.Id = cc.VariantId AND pvm.ProductId = cc.ProductId
	JOIN Products p ON p.Id = cc.ProductId
	WHERE cc.CustomerId = @CustomerId and cc.IsActive = 1;

	SELECT C.ProductId, P.ProductName, C.VariantId, P.VariantAttributeValues_Only, C.CategoryId, P.CategoryName, C.Quantity, C.Price, (C.Quantity * C.Price) as Total, P.SKU, P.ImagePath, P.TotalAvailableStock
	FROM #CartItems C
	LEFT JOIN #ProductVariants P ON P.VariantId = C.VariantId AND P.ProductId = C.ProductId AND P.CategoryId = C.CategoryId;
	
	---------------------------------------------------
	-- 2. CART SUMMARY
	---------------------------------------------------
	SELECT CustomerId, SUM(LineTotal) AS CartTotal, SUM(Quantity) AS TotalQty
	INTO #CartSummary FROM #CartItems GROUP BY CustomerId;

    -------------------------------------------------------
    -- 🧹 REMOVE OFFER
    -------------------------------------------------------
    IF @RemoveOfferId IS NOT NULL
    BEGIN
        DELETE FROM OfferUsage
        WHERE OfferId = @RemoveOfferId AND RefType = 'CART' AND CustomerId = @CustomerId;
    END

	---------------------------------------------------
	-- STEP 1: MANUAL MODE CHECK
	---------------------------------------------------
	IF @CouponCode IS NOT NULL OR @SelectedOfferId IS NOT NULL
	BEGIN
		DECLARE @OfferId INT;

		---------------------------------------------------
		-- STEP 2: GET OFFER ID
		---------------------------------------------------
		SELECT @OfferId = Id
		FROM Offers
		WHERE (@SelectedOfferId IS NOT NULL AND Id = @SelectedOfferId) OR (@CouponCode IS NOT NULL AND CouponCode = @CouponCode);

		IF @OfferId IS NULL
		BEGIN
			RAISERROR('Invalid Offer / Coupon',16,1);
			RETURN;
		END

		---------------------------------------------------
		-- STEP 3: CHECK ALREADY APPLIED (CART LEVEL)
		---------------------------------------------------
		IF NOT EXISTS (
			SELECT 1 FROM OfferUsage 
			WHERE OfferId = @OfferId AND RefType = 'CART' AND CustomerId = @CustomerId
		)
		BEGIN

			---------------------------------------------------
			-- STEP 4: VALIDATE ELIGIBILITY
			---------------------------------------------------
			IF EXISTS (
				SELECT 1
				FROM Offers o
				CROSS JOIN #CartSummary cs
				WHERE o.Id = @OfferId
				AND o.IsActive = 1
				AND (o.StartDate IS NULL OR @Now BETWEEN o.StartDate AND ISNULL(o.EndDate,@Now))
				AND (o.StartTime IS NULL OR @Time BETWEEN o.StartTime AND ISNULL(o.EndTime,@Time))
				AND (o.MinOrderAmount IS NULL OR cs.CartTotal >= o.MinOrderAmount)
				AND (o.MinQty IS NULL OR cs.TotalQty >= o.MinQty)
				AND (o.IsFirstOrderOnly = 0 OR NOT EXISTS (SELECT 1 FROM OfferUsage WHERE CustomerId = @CustomerId))
				AND (o.PerUserUsage IS NULL OR (
					SELECT COUNT(*) FROM OfferUsage 
					WHERE OfferId = o.Id AND CustomerId = @CustomerId
				) < o.PerUserUsage)
			)
			BEGIN
				---------------------------------------------------
				-- STEP 5: INSERT INTO OFFER USAGE
				---------------------------------------------------
				INSERT INTO OfferUsage (OfferId, RefType, RefId, CustomerId, UsedDate)
				VALUES (@OfferId, 'CART', @CustomerId, @CustomerId, GETDATE());
			END
			ELSE
			BEGIN
				RAISERROR('Offer not eligible',16,1);
				RETURN;
			END
		END

		---------------------------------------------------
		-- STEP 6: HANDLE EXCLUSIVE OFFER
		---------------------------------------------------
		DECLARE @NewOfferAllow INT = 1;
		SELECT @NewOfferAllow = AllowWithOtherOffers FROM Offers WHERE Id = @OfferId;

		IF @NewOfferAllow = 0
		BEGIN
			DELETE FROM OfferUsage WHERE RefType = 'CART' AND CustomerId = @CustomerId AND OfferId <> @OfferId;
		END
		
		IF @NewOfferAllow = 1
		BEGIN
			DELETE ou FROM OfferUsage ou JOIN Offers o ON o.Id = ou.OfferId
			WHERE ou.RefType = 'CART' AND ou.CustomerId = @CustomerId AND o.AllowWithOtherOffers = 0 AND OfferId <> @OfferId;
		END

	END
	
	---------------------------------------------------
	-- 3. ELIGIBLE OFFERS
	---------------------------------------------------
	SELECT o.*
	INTO #EligibleOffers
	FROM Offers o
	CROSS JOIN #CartSummary cs
	WHERE o.IsActive=1 AND (o.StartDate IS NULL OR @Now BETWEEN o.StartDate AND ISNULL(o.EndDate,@Now)) AND (o.StartTime IS NULL OR @Time BETWEEN o.StartTime AND ISNULL(o.EndTime,@Time))
	AND (o.IsFirstOrderOnly = 0 OR NOT EXISTS (SELECT 1 FROM OfferUsage WHERE CustomerId = @CustomerId))
	AND (o.PerUserUsage IS NULL OR (SELECT COUNT(*) FROM OfferUsage WHERE OfferId = o.Id AND CustomerId = @CustomerId) < o.PerUserUsage)
	AND (o.MinOrderAmount IS NULL OR cs.CartTotal >= o.MinOrderAmount)
	AND (o.MinQty IS NULL OR cs.TotalQty >= o.MinQty);

	---------------------------------------------------
	-- 4. FINAL RESULT (SCOPED DISCOUNT)
	---------------------------------------------------
	SELECT o.Id, o.OfferName, o.OfferType, o.DiscountType, o.DiscountValue, o.Priority, o.IsCouponRequired, cs.CartTotal,o.MaxDiscountAmount,
		FinalDiscount =
		CASE 
			WHEN o.MaxDiscountAmount IS NOT NULL THEN 
				CASE 
					WHEN (
						CASE 
							WHEN o.DiscountType='FLAT' THEN o.DiscountValue
							ELSE (
								CASE 
									WHEN o.ApplyOnly_Product IS NOT NULL THEN (
										SELECT SUM(ci.LineTotal) FROM #CartItems ci
										WHERE CHARINDEX(','+CAST(ci.ProductId AS VARCHAR)+',',','+o.ApplyOnly_Product+',')>0
									)
									WHEN o.ApplyOnly_Category IS NOT NULL THEN (
										SELECT SUM(ci.LineTotal) FROM #CartItems ci
										WHERE CHARINDEX(','+CAST(ci.CategoryId AS VARCHAR)+',',','+o.ApplyOnly_Category+',')>0
									)
									ELSE cs.CartTotal
								END
							) * o.DiscountValue / 100.0
						END
					) > o.MaxDiscountAmount
					THEN o.MaxDiscountAmount
					ELSE (
						CASE 
							WHEN o.DiscountType='FLAT' THEN o.DiscountValue
							ELSE (
								CASE 
									WHEN o.ApplyOnly_Product IS NOT NULL THEN (
										SELECT SUM(ci.LineTotal) FROM #CartItems ci
										WHERE CHARINDEX(','+CAST(ci.ProductId AS VARCHAR)+',',','+o.ApplyOnly_Product+',')>0
									)
									WHEN o.ApplyOnly_Category IS NOT NULL THEN (
										SELECT SUM(ci.LineTotal) FROM #CartItems ci
										WHERE CHARINDEX(','+CAST(ci.CategoryId AS VARCHAR)+',',','+o.ApplyOnly_Category+',')>0
									)
									ELSE cs.CartTotal
								END
							) * o.DiscountValue / 100.0
						END
					)
				END
			ELSE (
				CASE 
					WHEN o.DiscountType='FLAT' THEN o.DiscountValue
					ELSE (
						CASE 
							WHEN o.ApplyOnly_Product IS NOT NULL THEN (
								SELECT SUM(ci.LineTotal) FROM #CartItems ci
								WHERE CHARINDEX(','+CAST(ci.ProductId AS VARCHAR)+',',','+o.ApplyOnly_Product+',')>0
							)
							WHEN o.ApplyOnly_Category IS NOT NULL THEN (
								SELECT SUM(ci.LineTotal) FROM #CartItems ci
								WHERE CHARINDEX(','+CAST(ci.CategoryId AS VARCHAR)+',',','+o.ApplyOnly_Category+',')>0
							)
							ELSE cs.CartTotal
						END
					) * o.DiscountValue / 100.0
				END
			)
		END,
			CASE 
				WHEN EXISTS (
					SELECT 1 FROM OfferUsage OU
					WHERE OU.OfferId = o.Id AND OU.RefId = @CustomerId AND OU.RefType = 'CART'
				)
				THEN 1 ELSE 0
			END AS IsAlreadyApplied
	FROM #EligibleOffers o
	CROSS JOIN #CartSummary cs

	ORDER BY FinalDiscount DESC, o.Priority ASC;
		
	---------------------------------------------------
	-- 5. APPLY CART OFFERS
	---------------------------------------------------
	SELECT o.*
	FROM OfferUsage ou
	JOIN Offers o ON o.Id = ou.OfferId
	WHERE ou.RefType = 'CART'
	 and o.IsActive = 1
	and ou.customerid = @CustomerId;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_ApplyOffersToCart_OLD]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ApplyOffersToCart_OLD]
(
    @CustomerId INT,
    @CouponCode NVARCHAR(50) = NULL,
    @SelectedOfferId INT = NULL,
    @RemoveOfferId INT = NULL
)
AS
BEGIN
    SET NOCOUNT ON;
	
	DECLARE @Now DATETIME = GETDATE();
	DECLARE @Time TIME = CAST(@Now AS TIME);
	
	IF OBJECT_ID('tempdb..#ProductVariants') IS NOT NULL DROP TABLE #CartItems;
	IF OBJECT_ID('tempdb..#CartItems') IS NOT NULL DROP TABLE #CartItems;
	IF OBJECT_ID('tempdb..#CartSummary') IS NOT NULL DROP TABLE #CartSummary;
	IF OBJECT_ID('tempdb..#EligibleOffers') IS NOT NULL DROP TABLE #EligibleOffers;

	SELECT 
		X.Id AS ProductId,
		x.ProductDescription,
		PVM.Id AS VariantId,
		X.ProductName,
		C.Id AS CategoryId,
		C.CategoryName,
		STRING_AGG(AV.Value, ', ') AS VariantAttributeValues_Only,
		STRING_AGG(A.Name + ' : ' + AV.Value, ', ') AS VariantAttributes,
		PVM.SKU,
		PVM.Price,
		PI.ImagePath,
		ISNULL(PS.TotalAvailableStock,0) AS TotalAvailableStock	
	INTO #ProductVariants
	FROM Products X
	LEFT JOIN Category C ON C.Id = X.CategoryId
	INNER JOIN ProductVariantMapping PVM ON PVM.ProductId = X.Id
	INNER JOIN ProductVariantDetails PVD ON PVD.VariantId = PVM.Id
	INNER JOIN Attribute A ON A.Id = PVD.AttributeId
	INNER JOIN AttributeValue AV ON AV.Id = PVD.AttributeValueId
	LEFT JOIN ProductImages PI ON PI.ProductId = X.Id AND PI.VariantId = PVM.Id
	LEFT JOIN (
		SELECT VariantId, SUM(ISNULL(AvailableStock,0)) - SUM(ISNULL(ReservedStock,0)) AS TotalAvailableStock
		FROM ProductStock
		GROUP BY VariantId
	) PS ON PS.VariantId = PVM.Id
	WHERE X.IsActive = 1 AND PVM.IsActive = 1 AND C.IsActive = 1 AND X.IsDeleted = 0
	GROUP BY X.Id, X.ProductName, X.ProductDescription, C.Id, C.CategoryName, PVM.Id, PVM.ProductId, PVM.SKU, PVM.Price, PI.ImagePath, PS.TotalAvailableStock

    -------------------------------------------------------
    -- 🧹 REMOVE OFFER
    -------------------------------------------------------
    IF @RemoveOfferId IS NOT NULL
    BEGIN
        DELETE FROM OfferUsage
        WHERE OfferId = @RemoveOfferId
          AND RefType = 'CART'
          AND RefId = @CustomerId;
    END

	-------------------------------------------------------
    -- 🛒 CART
    -------------------------------------------------------
    IF OBJECT_ID('tempdb..#Cart') IS NOT NULL DROP TABLE #Cart;

    SELECT 
        CC.ProductId,
        CC.VariantId,
        CC.Quantity,
        PVM.Price,
        P.CategoryId,
        (CC.Quantity * PVM.Price) AS LineTotal
    INTO #Cart
    FROM CustomerCart CC
    JOIN ProductVariantMapping PVM ON CC.VariantId = PVM.Id
    JOIN Products P ON P.Id = CC.ProductId
    WHERE CC.CustomerId = @CustomerId;

    DECLARE @CartAmount DECIMAL(18,2), @CartQty INT;

    SELECT 
        @CartAmount = ISNULL(SUM(LineTotal),0),
        @CartQty = ISNULL(SUM(Quantity),0)
    FROM #Cart;

    -------------------------------------------------------
    -- 🎯 VALID OFFERS (AUTO APPLY LOGIC)
    -------------------------------------------------------
    IF OBJECT_ID('tempdb..#ValidOffers') IS NOT NULL DROP TABLE #ValidOffers;

    SELECT *
    INTO #ValidOffers
    FROM Offers O
    WHERE O.IsActive = 1
    AND @Now BETWEEN O.StartDate AND O.EndDate
    AND (O.StartTime IS NULL OR CAST(@Now AS TIME) BETWEEN O.StartTime AND O.EndTime)
	
    -- Coupon
    AND (
        O.IsCouponRequired = 0
        OR (
            @CouponCode IS NOT NULL
            AND UPPER(LTRIM(RTRIM(O.CouponCode))) = UPPER(LTRIM(RTRIM(@CouponCode)))
        )
    )

    AND (O.IsFirstOrderOnly = 0 OR NOT EXISTS (
        SELECT 1 FROM Orders WHERE UserId = @CustomerId
    ))

    AND (O.MinOrderAmount IS NULL OR @CartAmount >= O.MinOrderAmount)
    AND (O.MinQty IS NULL OR @CartQty >= O.MinQty);

    -------------------------------------------------------
    -- 🧠 CHECK ALREADY APPLIED
    -------------------------------------------------------
    IF OBJECT_ID('tempdb..#OfferStatus') IS NOT NULL DROP TABLE #OfferStatus;

    SELECT 
        VO.*,
        CASE 
            WHEN EXISTS (
                SELECT 1 FROM OfferUsage OU
                WHERE OU.OfferId = VO.Id
                AND OU.CustomerId = @CustomerId
                AND OU.RefType = 'CART'
            )
            THEN 1 ELSE 0
        END AS IsAlreadyApplied
    INTO #OfferStatus
    FROM #ValidOffers VO;

    -------------------------------------------------------
    -- 🧩 ITEM MATCH
    -------------------------------------------------------
    IF OBJECT_ID('tempdb..#ItemMatch') IS NOT NULL DROP TABLE #ItemMatch;

    SELECT 
        C.*,
        O.Id AS OfferId,
        O.OfferName,
        O.DiscountType,
        O.DiscountValue,
        O.MaxDiscountAmount,
        O.AllowWithOtherOffers,
        O.Priority,
        CASE 
            WHEN O.DiscountType = 'FLAT' THEN O.DiscountValue
            ELSE (C.LineTotal * O.DiscountValue / 100)
        END AS RawDiscount
    INTO #ItemMatch
    FROM #Cart C
    JOIN #OfferStatus O
        ON O.OfferType IN ('CATEGORY','PRODUCT','MIXED')
    WHERE 
        (
            O.ApplyOnly_Category IS NULL 
            OR C.CategoryId IN (SELECT value FROM STRING_SPLIT(O.ApplyOnly_Category, ','))
        )
        AND
        (
            O.ApplyOnly_Product IS NULL 
            OR C.ProductId IN (SELECT value FROM STRING_SPLIT(O.ApplyOnly_Product, ','))
        );

    -------------------------------------------------------
    -- 🏆 BEST OFFER PER ITEM
    -------------------------------------------------------
    IF OBJECT_ID('tempdb..#ItemBest') IS NOT NULL DROP TABLE #ItemBest;

    SELECT *
    INTO #ItemBest
    FROM (
        SELECT *,
            CASE 
                WHEN MaxDiscountAmount IS NOT NULL AND RawDiscount > MaxDiscountAmount
                THEN MaxDiscountAmount
                ELSE RawDiscount
            END AS FinalDiscount,
            ROW_NUMBER() OVER (
                PARTITION BY VariantId
                ORDER BY RawDiscount DESC, Priority ASC
            ) rn
        FROM #ItemMatch
    ) X
    WHERE rn = 1;

    -------------------------------------------------------
    -- 🧾 CART OFFERS
    -------------------------------------------------------
    IF OBJECT_ID('tempdb..#CartOffers') IS NOT NULL DROP TABLE #CartOffers;

    SELECT 
        O.Id AS OfferId,
        O.OfferName,
        CASE 
            WHEN O.DiscountType = 'FLAT' THEN O.DiscountValue
            ELSE (@CartAmount * O.DiscountValue / 100)
        END AS Discount,
        O.MaxDiscountAmount,
        O.AllowWithOtherOffers,
        O.Priority,
        O.IsAlreadyApplied
    INTO #CartOffers
    FROM #OfferStatus O
    WHERE O.OfferType NOT IN ('CATEGORY','PRODUCT','MIXED');

    -------------------------------------------------------
    -- 🔗 MERGE ALL OFFERS
    -------------------------------------------------------
    IF OBJECT_ID('tempdb..#AllOffers') IS NOT NULL DROP TABLE #AllOffers;

    CREATE TABLE #AllOffers (
        OfferId INT,
        OfferName NVARCHAR(255),
        Discount DECIMAL(18,2),
        AllowWithOtherOffers INT,
        Priority INT,
        IsAlreadyApplied BIT
    );

    INSERT INTO #AllOffers
    SELECT 
        OfferId,
        OS.OfferName,
        SUM(FinalDiscount),
        MIN(CAST(OS.AllowWithOtherOffers AS INT)),
        MIN(OS.Priority),
        MAX(IsAlreadyApplied)
    FROM #ItemBest IB
    JOIN #OfferStatus OS ON OS.Id = IB.OfferId
    GROUP BY OfferId, OS.OfferName;

    INSERT INTO #AllOffers
    SELECT 
        OfferId,
        OfferName,
        CASE 
            WHEN MaxDiscountAmount IS NOT NULL AND Discount > MaxDiscountAmount
            THEN MaxDiscountAmount
            ELSE Discount
        END,
        CAST(AllowWithOtherOffers AS INT),
        Priority,
        IsAlreadyApplied
    FROM #CartOffers;

    -------------------------------------------------------
    -- 🔁 SELECT TOP 2 OFFERS
    -------------------------------------------------------
    IF OBJECT_ID('tempdb..#FinalSelected') IS NOT NULL DROP TABLE #FinalSelected;

    CREATE TABLE #FinalSelected (
        OfferId INT,
        OfferName NVARCHAR(255),
        Discount DECIMAL(18,2),
        AllowWithOtherOffers INT,
        Priority INT
    );

    DECLARE @Count INT = 0;

    WHILE @Count < 2
    BEGIN
        DECLARE @OfferId INT;

        SELECT TOP 1 @OfferId = OfferId
        FROM #AllOffers
        ORDER BY 
            CASE WHEN OfferId = @SelectedOfferId THEN 0 ELSE 1 END,
            Discount DESC,
            Priority ASC;

        IF @OfferId IS NULL BREAK;

        INSERT INTO #FinalSelected
        SELECT OfferId, OfferName, Discount, AllowWithOtherOffers, Priority
        FROM #AllOffers WHERE OfferId = @OfferId;

        DELETE FROM #AllOffers WHERE OfferId = @OfferId;

        IF EXISTS (
            SELECT 1 FROM #FinalSelected WHERE AllowWithOtherOffers = 0
        )
            BREAK;

        SET @Count = @Count + 1;
    END

    -------------------------------------------------------
    -- 🧾 INSERT AUTO APPLY USAGE (NO DUPLICATE)
    -------------------------------------------------------
    INSERT INTO OfferUsage (OfferId, RefType, RefId, CustomerId, UsedDate)
    SELECT 
        FS.OfferId,
        'CART',
        @CustomerId,
        @CustomerId,
        GETDATE()
    FROM #FinalSelected FS
    JOIN Offers O ON O.Id = FS.OfferId
    --WHERE O.IsAutoApply = 1
    AND NOT EXISTS (
        SELECT 1 FROM OfferUsage OU
        WHERE OU.OfferId = FS.OfferId
        AND OU.CustomerId = @CustomerId
        AND OU.RefType = 'CART'
    );

    -------------------------------------------------------
    -- 📦 OUTPUT 1: ITEMS
    -------------------------------------------------------
    SELECT 
        C.ProductId,
        C.VariantId,
        C.Quantity,
        C.Price,
        C.LineTotal,
        ISNULL(IB.FinalDiscount,0) AS Discount,
        (C.LineTotal - ISNULL(IB.FinalDiscount,0)) AS FinalPrice,
        IB.OfferName
    FROM #Cart C
    LEFT JOIN #ItemBest IB ON C.VariantId = IB.VariantId;

    -------------------------------------------------------
    -- 🎯 OUTPUT 2: APPLIED OFFERS
    -------------------------------------------------------
    SELECT * FROM #FinalSelected;

    -------------------------------------------------------
    -- 🟡 OUTPUT 3: AVAILABLE OFFERS
    -------------------------------------------------------
    SELECT 
        OS.Id AS OfferId,
        OS.OfferName,
        OS.IsAlreadyApplied
    FROM #OfferStatus OS
    WHERE NOT EXISTS (
        SELECT 1 FROM #FinalSelected FS
        WHERE FS.OfferId = OS.Id
    );

    -------------------------------------------------------
    -- 💰 OUTPUT 4: SUMMARY
    -------------------------------------------------------
    SELECT 
        @CartAmount AS CartAmount,
        ISNULL(SUM(Discount),0) AS TotalDiscount,
        @CartAmount - ISNULL(SUM(Discount),0) AS FinalPayable
    FROM #FinalSelected;


  --  -------------------------------------------------------
  --  -- 🛒 CART
  --  -------------------------------------------------------
  --  DECLARE @Cart TABLE
  --  (
  --      CartId INT,
  --      ProductId INT,
  --      VariantId INT,
  --      CategoryId INT,
  --      Quantity INT,
  --      Price DECIMAL(18,2),
  --      LineTotal DECIMAL(18,2)
  --  );

  --  INSERT INTO @Cart
  --  SELECT DISTINCT
  --      C.Id,
  --      C.ProductId,
  --      C.VariantId,
  --      P.CategoryId,
  --      C.Quantity,
  --      PV.Price,
  --      (C.Quantity * PV.Price)
  --  FROM CustomerCart C
  --  JOIN Products P ON P.Id = C.ProductId
  --  JOIN ProductVariantMapping PV ON PV.Id = C.VariantId
  --  WHERE C.CustomerId = @CustomerId;

  --  IF NOT EXISTS (SELECT 1 FROM @Cart)
  --  BEGIN
  --      SELECT 'Cart is empty' AS Message;
  --      RETURN;
  --  END

  --  -------------------------------------------------------
  --  -- 📊 SUMMARY
  --  -------------------------------------------------------
  --  DECLARE @SubTotal DECIMAL(18,2),
  --          @TotalQty INT;

  --  SELECT 
  --      @SubTotal = SUM(LineTotal),
  --      @TotalQty = SUM(Quantity)
  --  FROM @Cart;

  --  -------------------------------------------------------
  --  -- 🎯 VALID OFFERS (FULL CONDITIONS)
  --  -------------------------------------------------------
  --  DECLARE @Offer TABLE
  --  (
  --      Id INT,
  --      OfferName NVARCHAR(200),
  --      Priority INT,
  --      AllowWithOtherOffers BIT,
  --      IsAutoApply BIT,
  --      ApplyOnly_Product NVARCHAR(MAX),
  --      ApplyOnly_Category NVARCHAR(MAX),
  --      DiscountType NVARCHAR(20),
  --      DiscountValue DECIMAL(18,2),
  --      MaxDiscountAmount DECIMAL(18,2)
  --  );

  --  INSERT INTO @Offer
  --  SELECT 
  --      O.Id,
  --      O.OfferName,
  --      O.Priority,
  --      O.AllowWithOtherOffers,
		--O.IsAutoApply,
  --      O.ApplyOnly_Product,
  --      O.ApplyOnly_Category,
  --      O.DiscountType,
  --      O.DiscountValue,
  --      O.MaxDiscountAmount
  --  FROM Offers O
  --  WHERE O.IsActive = 1 AND O.IsDeleted = 0

  --  -- Date
  --  AND (@Now BETWEEN O.StartDate AND O.EndDate)

  --  -- Time
  --  AND (O.StartTime IS NULL OR CAST(@Now AS TIME) >= O.StartTime)
  --  AND (O.EndTime IS NULL OR CAST(@Now AS TIME) <= O.EndTime)

  --  -- Min conditions
  --  AND (O.MinOrderAmount IS NULL OR @SubTotal >= O.MinOrderAmount)
  --  AND (O.MinQty IS NULL OR @TotalQty >= O.MinQty)

  --  -- Coupon
  --  AND (
  --      O.IsCouponRequired = 0
  --      OR (
  --          @CouponCode IS NOT NULL
  --          AND UPPER(LTRIM(RTRIM(O.CouponCode))) = UPPER(LTRIM(RTRIM(@CouponCode)))
  --      )
  --  )

  --  -- First order
  --  AND (
  --      O.IsFirstOrderOnly = 0
  --      OR NOT EXISTS (SELECT 1 FROM Orders WHERE UserId = @CustomerId)
  --  )

  --  ---- Prime
  --  --AND (
  --  --    O.IsPrimeOnly = 0
  --  --    OR EXISTS (SELECT 1 FROM Customer WHERE Id = @CustomerId AND IsPrime = 1)
  --  --)

  --  -- Max usage
  --  AND (
  --      O.MaxUsage IS NULL
  --      OR (SELECT COUNT(*) FROM OfferUsage WHERE OfferId = O.Id AND RefType = 'ORDER') < O.MaxUsage
  --  )

  --  -- Per user usage
  --  AND (
  --      O.PerUserUsage IS NULL
  --      OR (
  --          SELECT COUNT(*) FROM OfferUsage 
  --          WHERE OfferId = O.Id 
  --            AND UserId = @CustomerId 
  --            AND RefType = 'ORDER'
  --      ) < O.PerUserUsage
  --  )

  --  -- Product applicability
  --  AND (
  --      O.ApplyOnly_Product IS NULL
  --      OR EXISTS (
  --          SELECT 1 FROM @Cart C
  --          WHERE EXISTS (
  --              SELECT 1 FROM STRING_SPLIT(O.ApplyOnly_Product, ',')
  --              WHERE TRY_CAST(value AS INT) = C.ProductId
  --          )
  --      )
  --  )

  --  -- Category applicability
  --  AND (
  --      O.ApplyOnly_Category IS NULL
  --      OR EXISTS (
  --          SELECT 1 FROM @Cart C
  --          WHERE EXISTS (
  --              SELECT 1 FROM STRING_SPLIT(O.ApplyOnly_Category, ',')
  --              WHERE TRY_CAST(value AS INT) = C.CategoryId
  --          )
  --      )
  --  );

  --  -------------------------------------------------------
  --  -- 🧠 INSERT SELECTED OFFER
  --  -------------------------------------------------------
  --  IF @SelectedOfferId IS NOT NULL
  --  BEGIN
  --      IF EXISTS (SELECT 1 FROM @Offer WHERE Id = @SelectedOfferId)
  --      BEGIN
  --          IF NOT EXISTS (
  --              SELECT 1 FROM OfferUsage 
  --              WHERE OfferId = @SelectedOfferId 
  --                AND RefType = 'CART'
  --                AND RefId = @CustomerId
  --          )
  --          BEGIN
  --              INSERT INTO OfferUsage (OfferId, RefType, UserId, RefId, UsedDate)
  --              VALUES (@SelectedOfferId, 'CART', @CustomerId, @CustomerId, GETDATE());
  --          END
  --      END
  --  END

  --  -------------------------------------------------------
  --  -- ⚡ AUTO APPLY
  --  -------------------------------------------------------
  --  INSERT INTO OfferUsage (OfferId, RefType, RefId, UserId, UsedDate)
  --  SELECT O.Id, 'CART', @CustomerId, @CustomerId, GETDATE()
  --  FROM @Offer O
  --  JOIN Offers OM ON OM.Id = O.Id
  --  WHERE OM.IsAutoApply = 1
  --    AND NOT EXISTS (
  --          SELECT 1 FROM OfferUsage 
  --          WHERE OfferId = O.Id 
  --            AND RefType = 'CART'
  --            AND RefId = @CustomerId
  --    );

  --  -------------------------------------------------------
  --  -- 🔥 FINAL APPLIED OFFERS (STACKING)
  --  -------------------------------------------------------
  --  DECLARE @Applied TABLE
  --  (
  --      Id INT,
  --      OfferName NVARCHAR(200),
  --      Priority INT,
  --      AllowWithOtherOffers BIT,
  --      IsAutoApply BIT,
  --      ApplyOnly_Product NVARCHAR(MAX),
  --      ApplyOnly_Category NVARCHAR(MAX),
  --      DiscountType NVARCHAR(20),
  --      DiscountValue DECIMAL(18,2),
  --      MaxDiscountAmount DECIMAL(18,2)
  --  );

  --  INSERT INTO @Applied
  --  SELECT 
  --      O.*
  --  FROM @Offer O
  --  JOIN OfferUsage OU 
  --      ON OU.OfferId = O.Id
  --     AND OU.RefType = 'CART'
  --     AND OU.RefId = @CustomerId;

  --  -------------------------------------------------------
  --  -- 🧮 CALCULATE DISCOUNT (SAFE DISTRIBUTION)
  --  -------------------------------------------------------
  --  DECLARE @ItemDiscount TABLE (CartId INT, Discount DECIMAL(18,2));

  --  DECLARE @TotalDiscount DECIMAL(18,2) = 0;

  --  SELECT @TotalDiscount =
  --      SUM(
  --          CASE 
  --              WHEN DiscountType = 'PERCENT'
  --                  THEN 
  --                      CASE 
  --                          WHEN (@SubTotal * DiscountValue / 100.0) > ISNULL(MaxDiscountAmount, 999999)
  --                          THEN ISNULL(MaxDiscountAmount, 999999)
  --                          ELSE (@SubTotal * DiscountValue / 100.0)
  --                      END
  --              ELSE DiscountValue
  --          END
  --      )
  --  FROM @Applied;

  --  INSERT INTO @ItemDiscount
  --  SELECT 
  --      CartId,
  --      (LineTotal / NULLIF(@SubTotal,0)) * @TotalDiscount
  --  FROM @Cart;

  --  -------------------------------------------------------
  --  -- RESULT 1: ITEM
  --  -------------------------------------------------------
  --  SELECT 
  --      C.*
  --  FROM @Cart C
  --  LEFT JOIN @ItemDiscount D ON D.CartId = C.CartId;

  --  -------------------------------------------------------
  --  -- RESULT 2: SUMMARY
  --  -------------------------------------------------------
  --  SELECT 
  --      @SubTotal AS SubTotal,
  --      @TotalDiscount AS TotalDiscount,
  --      @SubTotal - @TotalDiscount AS FinalAmount;

  --  -------------------------------------------------------
  --  -- RESULT 3: APPLIED/AVAILABLE
  --  -------------------------------------------------------
  --  SELECT 
  --      O.*,
  --      CASE WHEN EXISTS (SELECT 1 FROM @Applied A WHERE A.Id = O.Id) THEN 1 ELSE 0 END AS IsApplied
  --  FROM @Offer O
  --  ORDER BY Priority;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Attribute_Get]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Attribute_Get]
(
 @Id INT = NULL,
 @Search NVARCHAR(200) = NULL,
 @Start INT = 0,
 @Length INT = 25,
 @SortColumnIndex INT = 0,
 @SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN

SET NOCOUNT ON;

---------------------------------------
-- SINGLE RECORD
---------------------------------------

IF @Id IS NOT NULL
BEGIN
	IF ISNULL(@Id, 0) = -2 
		SELECT
			(ISNULL(X.DisplayName, X.Name) + ' - ' + AV.Value) AS Text,
			(CAST(X.Id AS VARCHAR(20)) + '-' + CAST(AV.Id AS VARCHAR(20))) AS Value
		FROM Attribute X
		LEFT JOIN AttributeValue AV ON AV.AttributeId = X.Id AND AV.IsDeleted = 0
		WHERE AV.Id IS NOT NULL
		ORDER BY X.Name, AV.Value;
	ELSE 
		SELECT
			X.Id,
			X.Name,
			X.DisplayName,
			STRING_AGG(AV.Value, ',') AS AttributeValues,
			STRING_AGG(CAST(AV.Id AS VARCHAR(20)) + '|' + AV.Value, ',') AS AttributeValues_Ids,
			X.IsActive,
			X.LastModifiedDate
		FROM Attribute X
		LEFT JOIN AttributeValue AV ON AV.AttributeId = X.Id AND AV.IsDeleted = 0
			WHERE X.Id = (CASE WHEN @Id < 0 THEN X.Id ELSE @Id END) AND X.IsDeleted = 0
			AND X.IsActive = (CASE WHEN @Id < 0 THEN 1 ELSE X.IsActive END)
		GROUP BY
			X.Id,
			X.Name,
			X.DisplayName,
			X.IsActive,
			X.LastModifiedDate;
	

	RETURN;

END

---------------------------------------
-- SORT COLUMN MAP
---------------------------------------

DECLARE @OrderBy NVARCHAR(100);

SET @OrderBy =
CASE @SortColumnIndex
 WHEN 0 THEN 'X.Id'
 WHEN 1 THEN 'X.Id'            -- SrNo column
 WHEN 2 THEN 'X.Name' -- Attribute column
 WHEN 2 THEN 'X.DisplayName' -- Attribute column
WHEN 3 THEN 'MIN(AV.Value)'  -- Values column
 WHEN 4 THEN 'X.IsActive'      -- Status column
 ELSE 'X.Id'
END

IF @SortDirection NOT IN ('ASC','DESC')
 SET @SortDirection = 'DESC';

---------------------------------------
-- COUNTS
---------------------------------------

DECLARE @Total INT;
DECLARE @Filtered INT;

SELECT @Total = COUNT(*)
FROM Attribute
WHERE IsDeleted = 0;

SELECT @Filtered = COUNT(*)
FROM Attribute X
WHERE X.IsDeleted = 0
AND (
 @Search IS NULL
 OR (X.Name LIKE '%' + @Search + '%' OR X.DisplayName LIKE '%' + @Search + '%' )
);

SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords;

---------------------------------------
-- DATA
---------------------------------------

DECLARE @SQL NVARCHAR(MAX);

SET @SQL = '
SELECT
 ROW_NUMBER() OVER (ORDER BY ' + @OrderBy + ' ' + @SortDirection + ') + @Start AS SrNo,
 X.Id,
 X.Name,
 X.DisplayName,
 STRING_AGG(AV.Value,'','') AS AttributeValues,
 X.IsActive,
 X.LastModifiedDate
FROM Attribute X
LEFT JOIN AttributeValue AV ON AV.AttributeId = X.Id AND AV.IsDeleted = 0
WHERE X.IsDeleted = 0
';

IF @Search IS NOT NULL
SET @SQL += '
AND (
 X.Name LIKE ''%'' + @Search + ''%''
)
';

SET @SQL += '
GROUP BY
 X.Id,
 X.Name,
 X.DisplayName,
 X.IsActive,
 X.LastModifiedDate
ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
OFFSET @Start ROWS FETCH NEXT @Length ROWS ONLY
';

EXEC sp_executesql
@SQL,
N'@Search NVARCHAR(200), @Start INT, @Length INT',
@Search,@Start,@Length;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Attribute_Save]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Attribute_Save]
(
    @Id INT = 0,
    @Name NVARCHAR(100) = NULL,
    @DisplayName NVARCHAR(100) = NULL,
    @AttributeValues NVARCHAR(1000) = NULL, -- comma separated values
    @IsActive BIT = 1,
    @Mode NVARCHAR(10),
    @OperatedBy INT,
    @response NVARCHAR(MAX) OUT
)
AS
BEGIN
SET NOCOUNT ON

SET @response = 'E|Something went wrong|0'

BEGIN TRY

    IF @Mode NOT IN ('SAVE','STATUS','DELETE')
    BEGIN
        SET @response = 'E|Invalid mode supplied|0'
        RETURN
    END

---------------------------------------------------
-- SAVE (INSERT / UPDATE)
---------------------------------------------------

    IF @Mode = 'SAVE'
    BEGIN

        IF ISNULL(@Name,'') = ''
        BEGIN
            SET @response = 'E|Attribute Name required|0'
            RETURN
        END
		-- Duplicate coupon check
		 IF EXISTS
		 (
		  SELECT 1 FROM Attribute
		  WHERE Name = @Name
		  AND IsDeleted = 0
		  AND (@Id = 0 OR Id <> @Id)
		 )
		 BEGIN
		  SET @response = 'E|This Attribute is already exists|0'
		  RETURN
		 END

        ------------------------------------------------
        -- UPDATE ATTRIBUTE
        ------------------------------------------------

        IF @Id > 0
        BEGIN

            UPDATE Attribute
            SET Name = @Name, DisplayName = @DisplayName,
                LastModifiedBy = @OperatedBy,
                LastModifiedDate = GETDATE()
            WHERE Id = @Id

        END
        ELSE
        BEGIN

           INSERT INTO Attribute
			(
				Name, DisplayName,
				IsActive,
				IsDeleted,
				CreatedBy,
				CreatedDate
			)
			VALUES
			(
				@Name, @DisplayName,
				1,          -- Active by default
				0,          -- Not deleted
				@OperatedBy,
				GETDATE()
			)

            SET @Id = SCOPE_IDENTITY()

        END

        ------------------------------------------------
        -- RESET ATTRIBUTE VALUES
        ------------------------------------------------

        DELETE FROM AttributeValue
        WHERE AttributeId = @Id

        ------------------------------------------------
        -- INSERT ATTRIBUTE VALUES
        ------------------------------------------------

        IF @AttributeValues IS NOT NULL
        BEGIN

           INSERT INTO AttributeValue
			(
				AttributeId,
				[Value],
				IsActive,
				IsDeleted,
				CreatedBy,
				CreatedDate
			)
			SELECT
				@Id,
				value,
				1,      -- Active
				0,      -- Not deleted
				@OperatedBy,
				GETDATE()
			FROM STRING_SPLIT(@AttributeValues, ',')

        END

        SET @response = 'S|Record saved successfully|' + CAST(@Id AS NVARCHAR)
        RETURN

    END

---------------------------------------------------
-- STATUS
---------------------------------------------------

    IF @Mode = 'STATUS'
    BEGIN

        UPDATE Attribute
        SET IsActive = @IsActive,
            LastModifiedBy = @OperatedBy,
            LastModifiedDate = GETDATE()
        WHERE Id = @Id

        UPDATE AttributeValue
        SET IsActive = @IsActive
        WHERE AttributeId = @Id

        SET @response = 'S|Status updated successfully|' + CAST(@Id AS NVARCHAR)
        RETURN

    END

---------------------------------------------------
-- DELETE ATTRIBUTE + VALUES
---------------------------------------------------

    IF @Mode = 'DELETE'
    BEGIN

        UPDATE Attribute
        SET IsDeleted = 1,
            IsActive = 0,
            LastModifiedBy = @OperatedBy,
            LastModifiedDate = GETDATE()
        WHERE Id = @Id

        UPDATE AttributeValue
        SET IsDeleted = 1,
            IsActive = 0
        WHERE AttributeId = @Id

        SET @response = 'S|Attribute deleted successfully|' + CAST(@Id AS NVARCHAR)
        RETURN

    END

END TRY
BEGIN CATCH

    SET @response = 'E|' + ERROR_MESSAGE() + '|0'

END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_AttributeValue_Get]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[SP_AttributeValue_Get]
(
 @Search NVARCHAR(200) = NULL,
 @Start INT = 0,
 @Length INT = 25
)
AS
BEGIN
 SET NOCOUNT ON;

 DECLARE @Total INT, @Filtered INT;

 SELECT @Total = COUNT(*) FROM AttributeValue WHERE IsDeleted = 0;

 SELECT @Filtered = COUNT(*)
 FROM AttributeValue
 WHERE IsDeleted = 0
   AND (@Search IS NULL OR CAST(Id AS NVARCHAR) LIKE '%' + @Search + '%');
   
 SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords;

 SELECT *
 FROM AttributeValue
 WHERE IsDeleted = 0
   AND (@Search IS NULL OR CAST(Id AS NVARCHAR) LIKE '%' + @Search + '%')
 ORDER BY Id DESC
 OFFSET @Start ROWS FETCH NEXT @Length ROWS ONLY;

END

GO
/****** Object:  StoredProcedure [dbo].[SP_AttributeValue_Save]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/* ============================================================
   AttributeValue
============================================================ */

CREATE   PROCEDURE [dbo].[SP_AttributeValue_Save]
(
 @Id INT = 0,
 @IsActive BIT = 1,
 @IsDeleted BIT = 0,
 @Mode NVARCHAR(10),
 @OperatedBy INT,
 @response NVARCHAR(MAX) OUT
)
AS
BEGIN
 SET NOCOUNT ON;

 -- Default Error Response
 SET @response = 'E|Opps!... Something went wrong. Please contact system administrator|0';

 BEGIN TRY

  IF @Mode NOT IN ('SAVE','STATUS')
  BEGIN
   SET @response = 'E|Invalid mode supplied.|0';
   RETURN;
  END

  IF @Mode = 'SAVE'
  BEGIN
   IF @Id > 0
    UPDATE AttributeValue
    SET LastModifiedBy = @OperatedBy,
        LastModifiedDate = GETDATE()
    WHERE Id = @Id;
   ELSE
   BEGIN
    INSERT INTO AttributeValue (CreatedBy)
    VALUES (@OperatedBy);

    SET @Id = SCOPE_IDENTITY();
   END
  END
  ELSE IF @Mode = 'STATUS'
  BEGIN
   UPDATE AttributeValue
   SET IsActive = @IsActive,
       IsDeleted = @IsDeleted,
       LastModifiedBy = @OperatedBy,
       LastModifiedDate = GETDATE()
   WHERE Id = @Id;
  END

  SET @response = 'S|Record saved successfully|' + CAST(@Id AS NVARCHAR);
  RETURN;

 END TRY
 BEGIN CATCH
  SET @response = 'E|' + ERROR_MESSAGE() + '|0';
  RETURN;
 END CATCH
END

GO
/****** Object:  StoredProcedure [dbo].[SP_Category_Get]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_Category_Get]
(
    @Id INT = NULL,
    @Search NVARCHAR(200) = NULL,
    @Start INT = 0,
    @Length INT = 25,
    @SortColumnIndex INT = 0,
    @SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN
    SET NOCOUNT ON;

    -------------------------------------------------------
    -- SINGLE RECORD
    -------------------------------------------------------
    IF @Id IS NOT NULL 
    BEGIN
		DECLARE @SKU VARCHAR(100);

		-- 🔹 Check if SKU is NULL
		IF EXISTS ( SELECT 1 FROM Category WHERE Id = @Id AND SKU IS NULL )
		BEGIN
			DECLARE @CategoryName VARCHAR(100), @ParentCategoryId INT;

			-- Get required values
			SELECT @CategoryName = CategoryName, @ParentCategoryId = ParentCategoryId FROM Category WHERE Id = @Id;

			-- 🔹 Generate SKU
			EXEC dbo.SP_CategorySKU_GenerateUnique @CategoryId = @Id, @CategoryName = @CategoryName, @ParentCategoryId = @ParentCategoryId, @response = @SKU OUTPUT;

			-- 🔹 Update SKU
			UPDATE Category SET SKU = @SKU WHERE Id = @Id;
		END

        SELECT X.Id, X.CategoryName, X.ParentCategoryId, X.SKU, X.ImagePath, X.IsActive, X.IsDeleted,
            P.CategoryName AS ParentCategoryName
        FROM Category X
        LEFT JOIN Category P ON P.Id = X.ParentCategoryId
		WHERE X.Id = (CASE WHEN @Id < 0 THEN X.Id ELSE @Id END) AND X.IsDeleted = 0
		AND X.IsActive = (CASE WHEN @Id < 0 THEN 1 ELSE X.IsActive END);

        RETURN;
    END

    -------------------------------------------------------
    -- SORT MAPPING
    -------------------------------------------------------
    DECLARE @OrderBy NVARCHAR(100);

    SET @OrderBy =
        CASE @SortColumnIndex
            WHEN 0 THEN 'X.Id'
            WHEN 1 THEN 'X.CategoryName'
            WHEN 2 THEN 'P.CategoryName'
            WHEN 3 THEN 'X.SKU'
            WHEN 4 THEN 'X.IsActive'
            ELSE 'X.Id'
        END;

    IF @SortDirection NOT IN ('ASC','DESC')
        SET @SortDirection = 'DESC';

    -------------------------------------------------------
    -- COUNTS
    -------------------------------------------------------
    DECLARE @Total INT, @Filtered INT;

    SELECT @Total = COUNT(*) 
    FROM Category 
    WHERE IsDeleted = 0;

    SELECT @Filtered = COUNT(*)
    FROM Category X
    LEFT JOIN Category P ON P.Id = X.ParentCategoryId
    WHERE X.IsDeleted = 0
      AND (@Search IS NULL
           OR X.CategoryName LIKE '%' + @Search + '%'
           OR P.CategoryName LIKE '%' + @Search + '%');

    SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords;

    -------------------------------------------------------
    -- DATA
    -------------------------------------------------------
    DECLARE @SQL NVARCHAR(MAX);

    SET @SQL = '
    SELECT 
        ROW_NUMBER() OVER (ORDER BY ' + @OrderBy + ' ' + @SortDirection + ') + @Start AS SrNo,
        X.*,
        P.CategoryName AS ParentCategoryName
    FROM Category X
    LEFT JOIN Category P ON P.Id = X.ParentCategoryId
    WHERE X.IsDeleted = 0
    ';

    IF @Search IS NOT NULL
        SET @SQL += '
        AND (
            X.CategoryName LIKE ''%'' + @Search + ''%'' OR
            P.CategoryName LIKE ''%'' + @Search + ''%''
        )';

    SET @SQL += '
    ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
    OFFSET @Start ROWS FETCH NEXT @Length ROWS ONLY';

    EXEC sp_executesql
        @SQL,
        N'@Search NVARCHAR(200), @Start INT, @Length INT',
        @Search, @Start, @Length;

END

/****** Object:  StoredProcedure [dbo].[SP_Category_Save]    Script Date: 13-03-2026 01:00:04 PM ******/
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[SP_Category_Save]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_Category_Save]
(
 @Id INT = 0,
 @CategoryName NVARCHAR(250) = NULL,
 @ParentCategoryId INT = NULL,
 @SKU NVARCHAR(250) = NULL,
 @ImagePath NVARCHAR(500) = NULL,
 @ImagePath_Remove BIT = 0,
 @IsActive BIT = 1,
 @IsDeleted BIT = 0,
 @Mode NVARCHAR(10),
 @OperatedBy INT,
 @response NVARCHAR(MAX) OUT
)
AS
BEGIN
 SET NOCOUNT ON;

 SET @response = 'E|Opps!... Something went wrong.|0';

 BEGIN TRY

  IF @Mode NOT IN ('SAVE','STATUS','DELETE')
  BEGIN
   SET @response = 'E|Invalid mode supplied.|0';
   RETURN;
  END

 ----------------------------------------------------
 -- SAVE
 ----------------------------------------------------
  IF @Mode = 'SAVE'
  BEGIN

   IF ISNULL(@CategoryName,'') = ''
   BEGIN
    SET @response = 'E|Category Name is required.|0';
    RETURN;
   END

   -- Duplicate validation
   IF EXISTS (
    SELECT 1 FROM Category
    WHERE CategoryName = @CategoryName
      AND ISNULL(ParentCategoryId,0) = ISNULL(@ParentCategoryId,0)
      AND IsDeleted = 0
      AND (@Id = 0 OR Id <> @Id)
   )
   BEGIN
    SET @response = 'E|Category already exists under same parent.|0';
    RETURN;
   END

   ------------------------------------------------
   -- UPDATE
   ------------------------------------------------
   IF @Id > 0
   BEGIN
		DECLARE @OldImagePath NVARCHAR(500);

		SELECT @OldImagePath = ImagePath
		FROM Category
		WHERE Id = @Id;

    UPDATE Category
    SET ParentCategoryId = @ParentCategoryId,
        CategoryName = @CategoryName,
        SKU = @SKU,
		ImagePath =
                CASE
					WHEN @ImagePath_Remove = 1 AND ISNULL(@ImagePath,'') = '' THEN NULL
					WHEN ISNULL(@ImagePath,'') <> '' THEN @ImagePath
					ELSE ImagePath
				END,
        IsActive = @IsActive,
        LastModifiedBy = @OperatedBy,
        LastModifiedDate = GETDATE()
    WHERE Id = @Id;

    SET @response = 'S|Record updated successfully|' + CAST(@Id AS NVARCHAR)+ '|' 
	+ (CASE WHEN @ImagePath_Remove = 1 THEN ISNULL(@OldImagePath,'') WHEN @OldImagePath <> @ImagePath THEN ISNULL(@OldImagePath,'') ELSE '' END);
    RETURN;
   END
   ELSE
   BEGIN

    ------------------------------------------------
    -- INSERT
    ------------------------------------------------
    INSERT INTO Category
    (
     ParentCategoryId,
     CategoryName,
	 SKU,
	 ImagePath,
     IsActive,
     IsDeleted,
     CreatedBy,
     CreatedDate
    )
    VALUES
    (
     @ParentCategoryId,
     @CategoryName,
	 @SKU,
	 @ImagePath,
     @IsActive,
     0,
     @OperatedBy,
     GETDATE()
    );

    SET @Id = SCOPE_IDENTITY();

    SET @response = 'S|Record saved successfully|' + CAST(@Id AS NVARCHAR);
    RETURN;

   END

  END

 ----------------------------------------------------
 -- STATUS CHANGE
 ----------------------------------------------------
  IF @Mode = 'STATUS'
  BEGIN

   UPDATE Category
   SET IsActive = @IsActive,
       LastModifiedBy = @OperatedBy,
       LastModifiedDate = GETDATE()
   WHERE Id = @Id;

   SET @response = 'S|Status updated successfully|' + CAST(@Id AS NVARCHAR);
   RETURN;

  END

 ----------------------------------------------------
 -- DELETE (SAFE SOFT DELETE)
 ----------------------------------------------------
  IF @Mode = 'DELETE'
  BEGIN

   -- Check child categories
   IF EXISTS (
    SELECT 1 FROM Category
    WHERE ParentCategoryId = @Id
    AND IsDeleted = 0
   )
   BEGIN
    SET @response = 'E|Child categories exist. Cannot delete.|0';
    RETURN;
   END

   -- Check products
   IF EXISTS (
    SELECT 1 FROM Products
    WHERE CategoryId = @Id
    AND IsDeleted = 0
   )
   BEGIN
    SET @response = 'E|Products exist under this category.|0';
    RETURN;
   END

   UPDATE Category
   SET IsDeleted = 1,
       LastModifiedBy = @OperatedBy,
       LastModifiedDate = GETDATE()
   WHERE Id = @Id;

   SET @response = 'S|Category deleted successfully|' + CAST(@Id AS NVARCHAR);
   RETURN;

  END

 END TRY
 BEGIN CATCH
  SET @response = 'E|' + ERROR_MESSAGE() + '|0';
 END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_CategorySKU_GenerateUnique]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CategorySKU_GenerateUnique]
(
    @CategoryId INT = NULL,
    @CategoryName VARCHAR(100),
    @ParentCategoryId INT = NULL,
    @response VARCHAR(100) OUTPUT
)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE 
        @ParentName VARCHAR(100),
        @CategoryCode VARCHAR(100),
        @ParentCode VARCHAR(100),
        @BaseSKU VARCHAR(100),
        @FinalSKU VARCHAR(100),
        @Counter INT = 1;

	------------------------------------------------------------
    -- ✅ 1. RETURN EXISTING SKU (EDIT CASE)
    ------------------------------------------------------------
    IF (@CategoryId IS NOT NULL AND @CategoryId > 0)
    BEGIN
        SELECT @response = LOWER(SKU)
        FROM Category
        WHERE Id = @CategoryId
          AND CategoryName = @CategoryName
          AND ISNULL(ParentCategoryId, 0) = ISNULL(@ParentCategoryId, 0)
          AND SKU IS NOT NULL;

        IF (@response IS NOT NULL)
        BEGIN
            RETURN;
        END
    END

    ------------------------------------------------------------
    -- ✅ 2. GENERATE NEW SKU
    ------------------------------------------------------------
    -- Get Parent Name
    SELECT @ParentName = CategoryName
    FROM Category
    WHERE Id = @ParentCategoryId;

    -- Create Codes
    SET @CategoryCode = UPPER(REPLACE(@CategoryName,' ','-'));
    SET @ParentCode = UPPER(REPLACE(ISNULL(@ParentName,''),' ','-'));

    -- Base SKU
    IF @ParentCategoryId IS NULL
        SET @BaseSKU = @CategoryCode;
    ELSE
        SET @BaseSKU = @ParentCode + '-' + @CategoryCode;

    SET @FinalSKU = @BaseSKU;

    -- Ensure uniqueness
    WHILE EXISTS (SELECT 1 FROM Category WHERE SKU = @FinalSKU)
    BEGIN
        SET @FinalSKU = @BaseSKU + '-' + CAST(@Counter AS VARCHAR);
        SET @Counter = @Counter + 1;
    END

    SET @response = LOWER(@FinalSKU);
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_ChangePassword]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ChangePassword]
(
    @UserId INT,
    @OldPassword NVARCHAR(255),
    @NewPassword NVARCHAR(255)
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if user exists with old password
    IF EXISTS (
        SELECT 1 
        FROM dbo.Customer 
        WHERE Id = @UserId AND [Password] = @OldPassword
    )
    BEGIN
        -- Update password
        UPDATE dbo.Customer
        SET 
            [Password] = @NewPassword,
            LastModifiedDate = GETDATE()
        WHERE Id = @UserId;

        SELECT 
            1 AS Status,
            'Password changed successfully' AS Message;
    END
    ELSE
    BEGIN
        SELECT 
            0 AS Status,
            'Incorrect old password' AS Message;
    END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CheckAuthentication]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_CheckAuthentication]
(
    @UserName NVARCHAR(150),
    @Password NVARCHAR(255),
    @response NVARCHAR(MAX) OUT
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Default Error Response
    SET @response = 'E|Opps!... Something went wrong. Please contact system administrator|0';

    BEGIN TRY

        -- Validation
        IF @UserName IS NULL OR @Password IS NULL
        BEGIN
            SET @response = 'E|Username and password are required.|0';
            RETURN;
        END

        DECLARE 
            @UserId INT = 0,
            @RoleId INT = 0,
            @FullName NVARCHAR(200) = '',
            @RoleName NVARCHAR(100) = '',
            @IsActive BIT = 0,
            @IsDeleted BIT = 0;

        SELECT 
            @UserId = u.Id,
            @RoleId = u.RoleId,
            @FullName = ISNULL(u.FirstName,'') + ' ' + ISNULL(u.LastName,''),
            @RoleName = r.RoleName,
            @IsActive = u.IsActive,
            @IsDeleted = u.IsDeleted
        FROM Users u
        INNER JOIN Roles r ON u.RoleId = r.Id
        WHERE UserName = @UserName
          AND Password = @Password;

        -- User Not Found
        IF @UserId IS NULL OR @UserId = 0
        BEGIN
            SET @response = 'E|Invalid email or password.|0';
            RETURN;
        END

        -- Soft Delete Check
        IF @IsDeleted = 1
        BEGIN
            SET @response = 'E|Your account has been removed. Contact administrator.|0';
            RETURN;
        END

        -- Active Check
        IF @IsActive = 0
        BEGIN
            SET @response = 'E|Your account is inactive. Contact administrator.|0';
            RETURN;
        END

        -- S|Message|UserId|FullName|RoleId|RoleName

        SET @response = 
            'S|Login successful|'
            + CAST(@UserId AS NVARCHAR) + '|'
            + ISNULL(@FullName,'') + '|'
            + CAST(@RoleId AS NVARCHAR) + '|'
            + ISNULL(@RoleName,'');

        RETURN;

    END TRY
    BEGIN CATCH
        SET @response = 'E|' + ERROR_MESSAGE() + '|0';
        RETURN;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Checkout]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Checkout] 
(
    @CustomerId INT,
    @CreatedBy INT
)
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    DECLARE @Retry INT = 0, @MaxRetry INT = 3;

RetryBlock:
    BEGIN TRY
        BEGIN TRAN;

        DECLARE @Now DATETIME = GETDATE();

        /* =====================================================
           STEP 1: LOAD CART
        ===================================================== */
        DECLARE @CartItems TABLE
        (
            CartId INT,
            ProductId INT,
            VariantId INT,
            Quantity INT,
            UnitPrice DECIMAL(18,2)
        );

        INSERT INTO @CartItems
        SELECT 
            C.Id AS CartId,
            C.ProductId,
            C.VariantId,
            C.Quantity,
            PVM.Price   -- adjust if price source differs
        FROM CustomerCart C WITH (UPDLOCK, HOLDLOCK)
		INNER JOIN ProductVariantMapping PVM ON PVM.Id = C.VariantId
        INNER JOIN ProductStock PS ON PS.VariantId = C.VariantId
        WHERE C.CustomerId = @CustomerId AND C.Quantity > 0
          AND C.IsActive = 1;

        IF NOT EXISTS (SELECT 1 FROM @CartItems)
        BEGIN
            ROLLBACK;
            RAISERROR('Cart is empty.', 16, 1);
            RETURN;
        END

        /* =====================================================
           STEP 2: LOCK STOCK (ORDERED)
        ===================================================== */
        SELECT PS.VariantId
        FROM ProductStock PS WITH (UPDLOCK, HOLDLOCK)
        INNER JOIN @CartItems CI ON CI.VariantId = PS.VariantId
        ORDER BY PS.VariantId;

        /* =====================================================
           STEP 3: VALIDATE RESERVED STOCK
        ===================================================== */
        IF EXISTS (
            SELECT 1
            FROM ProductStock PS
            INNER JOIN @CartItems CI
                ON PS.VariantId = CI.VariantId
            WHERE PS.ReservedStock < CI.Quantity
        )
        BEGIN
            ROLLBACK;
            RAISERROR('Stock inconsistency detected.', 16, 1);
            RETURN;
        END

        /* =====================================================
           STEP 4: CALCULATE TOTALS
        ===================================================== */
        DECLARE @TotalAmount DECIMAL(18,2) = 0,
                @DiscountAmount DECIMAL(18,2) = 0,
                @FinalAmount DECIMAL(18,2);

        SELECT @TotalAmount = SUM(Quantity * UnitPrice)
        FROM @CartItems;

        SET @FinalAmount = @TotalAmount - @DiscountAmount;

        /* =====================================================
           STEP 5: CREATE ORDER
        ===================================================== */
        DECLARE @OrderId INT,
                @OrderNumber NVARCHAR(50);

        SET @OrderNumber = 'ORD-' + FORMAT(@Now, 'yyyyMMddHHmmss');

        INSERT INTO Orders
        (
            UserId, OrderNumber, OrderDate,
            TotalAmount, DiscountAmount, FinalAmount,
            OrderStatus, PaymentStatus,
            IsActive, IsDeleted,
            CreatedBy, CreatedDate
        )
        VALUES
        (
            @CustomerId, @OrderNumber, @Now,
            @TotalAmount, @DiscountAmount, @FinalAmount,
            'Placed', 'Pending',
            1, 0,
            @CreatedBy, @Now
        );

        SET @OrderId = SCOPE_IDENTITY();

        /* =====================================================
           STEP 6: INSERT ORDER ITEMS
        ===================================================== */
        INSERT INTO OrderItems
        (
            OrderId, ProductId, VariantId,
            Quantity, UnitPrice, TotalPrice,
            IsActive, IsDeleted,
            CreatedBy, CreatedDate
        )
        SELECT
            @OrderId,
            ProductId,
            VariantId,
            Quantity,
            UnitPrice,
            Quantity * UnitPrice,
            1, 0,
            @CreatedBy, @Now
        FROM @CartItems;

        /* =====================================================
           STEP 7: UPDATE STOCK
        ===================================================== */
        UPDATE PS
        SET 
            PS.ReservedStock = PS.ReservedStock - CI.Quantity,
            PS.AvailableStock = PS.AvailableStock - CI.Quantity
        FROM ProductStock PS
        INNER JOIN @CartItems CI
            ON PS.VariantId = CI.VariantId;

        /* =====================================================
           STEP 8: CLEAR CART
        ===================================================== */
        
        DELETE FROM CustomerCart
        WHERE CustomerId = @CustomerId AND Quantity > 0 AND IsActive = 1;

        UPDATE OfferUsage
        SET RefType = 'ORDER',RefId=@OrderId, UsedDate = GETDATE()
        WHERE RefType = 'CART' AND CustomerId = @CustomerId;
		
        COMMIT;

        SELECT @OrderId AS OrderId, @OrderNumber AS OrderNumber;
		
    END TRY

    BEGIN CATCH
		IF @@TRANCOUNT > 0
			ROLLBACK;

		IF ERROR_NUMBER() = 1205 AND @Retry < @MaxRetry
		BEGIN
			SET @Retry += 1;
			WAITFOR DELAY '00:00:00.200';
			GOTO RetryBlock;
		END

		DECLARE @ErrMsg NVARCHAR(4000);
		SET @ErrMsg = ERROR_MESSAGE();

		RAISERROR(@ErrMsg, 16, 1);
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Coupons_Get]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_Coupons_Get]
(
 @Id INT = NULL,
 @Search NVARCHAR(200) = NULL,
 @Start INT = 0,
 @Length INT = 25,
 @SortColumnIndex INT = 0,
 @SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN

SET NOCOUNT ON;

---------------------------------------
-- SINGLE RECORD
---------------------------------------

IF @Id IS NOT NULL
BEGIN

 SELECT
     Id,
     CouponCode,
     DiscountType,
     DiscountValue,
     MinimumOrderAmount,
     ExpiryDate,
     UsageLimit,
     IsActive,
     LastModifiedDate
 FROM Coupons
 WHERE Id = @Id
 AND IsDeleted = 0;

 RETURN;

END

---------------------------------------
-- SORT MAPPING
---------------------------------------

DECLARE @OrderBy NVARCHAR(100)

SET @OrderBy =
CASE @SortColumnIndex

 WHEN 0 THEN 'Id'                 -- checkbox
 WHEN 1 THEN 'Id'                 -- SrNo
 WHEN 2 THEN 'CouponCode'         -- Coupon Code
 WHEN 3 THEN 'DiscountType'       -- Discount Type
 WHEN 4 THEN 'DiscountValue'      -- Discount Value
 WHEN 5 THEN 'MinimumOrderAmount' -- Minimum Order
 WHEN 6 THEN 'ExpiryDate'         -- Expiry Date
 WHEN 7 THEN 'UsageLimit'         -- Usage Limit
 WHEN 8 THEN 'IsActive'           -- Status

 ELSE 'Id'

END

IF @SortDirection NOT IN ('ASC','DESC')
 SET @SortDirection = 'DESC'

---------------------------------------
-- COUNTS
---------------------------------------

DECLARE @Total INT
DECLARE @Filtered INT

SELECT @Total = COUNT(*)
FROM Coupons
WHERE IsDeleted = 0

SELECT @Filtered = COUNT(*)
FROM Coupons
WHERE IsDeleted = 0
AND (
 @Search IS NULL
 OR CouponCode LIKE '%' + @Search + '%'
 OR DiscountType LIKE '%' + @Search + '%'
)

SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords

---------------------------------------
-- DATA
---------------------------------------

DECLARE @SQL NVARCHAR(MAX)

SET @SQL = '
SELECT
 ROW_NUMBER() OVER (ORDER BY ' + @OrderBy + ' ' + @SortDirection + ') + @Start AS SrNo,
 Id,
 CouponCode,
 DiscountType,
 DiscountValue,
 MinimumOrderAmount,
 ExpiryDate,
 UsageLimit,
 IsActive,
 LastModifiedDate
FROM Coupons
WHERE IsDeleted = 0
'

IF @Search IS NOT NULL
SET @SQL += '
AND (
 CouponCode LIKE ''%'' + @Search + ''%''
 OR DiscountType LIKE ''%'' + @Search + ''%''
)
'

SET @SQL += '
ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
OFFSET @Start ROWS FETCH NEXT @Length ROWS ONLY
'

EXEC sp_executesql
@SQL,
N'@Search NVARCHAR(200), @Start INT, @Length INT',
@Search,@Start,@Length

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Coupons_Save]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[SP_Coupons_Save]
(
 @Id INT = 0,
 @CouponCode NVARCHAR(50) = NULL,
 @DiscountType NVARCHAR(20) = NULL,
 @DiscountValue DECIMAL(18,2) = NULL,
 @MinimumOrderAmount DECIMAL(18,2) = NULL,
 @ExpiryDate DATETIME = NULL,
 @UsageLimit INT = NULL,
 @IsActive BIT = 1,
 @Mode NVARCHAR(10),
 @OperatedBy INT,
 @response NVARCHAR(MAX) OUT
)
AS
BEGIN

SET NOCOUNT ON

SET @response = 'E|Something went wrong|0'

BEGIN TRY

 IF @Mode NOT IN ('SAVE','STATUS','DELETE')
 BEGIN
  SET @response = 'E|Invalid mode supplied|0'
  RETURN
 END

------------------------------------------------
-- SAVE
------------------------------------------------

IF @Mode = 'SAVE'
BEGIN

 IF ISNULL(@CouponCode,'') = ''
 BEGIN
  SET @response = 'E|Coupon Code is required|0'
  RETURN
 END

 -- Duplicate coupon check
 IF EXISTS
 (
  SELECT 1 FROM Coupons
  WHERE CouponCode = @CouponCode
  AND IsDeleted = 0
  AND (@Id = 0 OR Id <> @Id)
 )
 BEGIN
  SET @response = 'E|Coupon code already exists|0'
  RETURN
 END

 ----------------------------------
 -- UPDATE
 ----------------------------------

 IF @Id > 0
 BEGIN

  UPDATE Coupons
  SET
   CouponCode = @CouponCode,
   DiscountType = @DiscountType,
   DiscountValue = @DiscountValue,
   MinimumOrderAmount = @MinimumOrderAmount,
   ExpiryDate = @ExpiryDate,
   UsageLimit = @UsageLimit,
   LastModifiedBy = @OperatedBy,
   LastModifiedDate = GETDATE()
  WHERE Id = @Id

 END
 ELSE
 BEGIN

 ----------------------------------
 -- INSERT
 ----------------------------------

  INSERT INTO Coupons
  (
   CouponCode,
   DiscountType,
   DiscountValue,
   MinimumOrderAmount,
   ExpiryDate,
   UsageLimit,
   IsActive,
   IsDeleted,
   CreatedBy
  )
  VALUES
  (
   @CouponCode,
   @DiscountType,
   @DiscountValue,
   @MinimumOrderAmount,
   @ExpiryDate,
   @UsageLimit,
   1,
   0,
   @OperatedBy
  )

  SET @Id = SCOPE_IDENTITY()

 END

 SET @response = 'S|Record saved successfully|' + CAST(@Id AS NVARCHAR)
 RETURN

END

------------------------------------------------
-- STATUS CHANGE
------------------------------------------------

IF @Mode = 'STATUS'
BEGIN

 UPDATE Coupons
 SET
  IsActive = @IsActive,
  LastModifiedBy = @OperatedBy,
  LastModifiedDate = GETDATE()
 WHERE Id = @Id

 SET @response = 'S|Status updated successfully|' + CAST(@Id AS NVARCHAR)
 RETURN

END

------------------------------------------------
-- DELETE
------------------------------------------------

IF @Mode = 'DELETE'
BEGIN

 UPDATE Coupons
 SET
  IsDeleted = 1,
  IsActive = 0,
  LastModifiedBy = @OperatedBy,
  LastModifiedDate = GETDATE()
 WHERE Id = @Id

 SET @response = 'S|Coupon deleted successfully|' + CAST(@Id AS NVARCHAR)
 RETURN

END

END TRY
BEGIN CATCH

 SET @response = 'E|' + ERROR_MESSAGE() + '|0'

END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Customer_Cart_Get]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Customer_Cart_Get]
(
	@CustomerId INT = 0
 
)
AS
BEGIN
    SET NOCOUNT ON;


SELECT 
    C.*,
    P.ProductName,
    V.SKU,
    V.Price,
    PI.ImagePath,
    Attr.AttributeName

FROM CustomerCart C

LEFT JOIN Products P 
    ON P.Id = C.ProductId

LEFT JOIN ProductVariantMapping V 
    ON V.Id = C.VariantId

-- ✅ Smart Image Logic
OUTER APPLY (
    SELECT TOP 1 ImagePath
    FROM ProductImages PI
    WHERE PI.IsDeleted = 0
      AND PI.IsActive = 1
      AND (
            (C.VariantId = 0 AND PI.ProductId = C.ProductId AND PI.VariantId = 0)
         OR (C.VariantId > 0 AND PI.VariantId = C.VariantId)
      )
    ORDER BY PI.IsPrimary DESC, PI.Id ASC
) PI

-- Attribute logic (same as yours)
OUTER APPLY (
    SELECT 
        STRING_AGG(
            ISNULL(A.DisplayName, A.Name) + ' : ' + AV.Value, 
            ', '
        ) AS AttributeName
    FROM STRING_SPLIT(C.AttributeId, ',') AS SplitMain

    OUTER APPLY (
        SELECT 
            TRY_CAST(LEFT(SplitMain.value, CHARINDEX('-', SplitMain.value) - 1) AS INT) AS AttributeId,
            TRY_CAST(SUBSTRING(SplitMain.value, CHARINDEX('-', SplitMain.value) + 1, LEN(SplitMain.value)) AS INT) AS AttributeValueId
    ) AS SplitAttr

    LEFT JOIN Attribute A 
        ON A.Id = SplitAttr.AttributeId
	
    LEFT JOIN AttributeValue AV 
        ON AV.Id = SplitAttr.AttributeValueId 
        AND AV.AttributeId = A.Id 
        AND AV.IsDeleted = 0
) AS Attr

WHERE C.CustomerId = @CustomerId
   And c.IsActive=1 -- add from VishalG


END
GO
/****** Object:  StoredProcedure [dbo].[SP_Customer_Cart_Save]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[SP_Customer_Cart_Save]
(
    @Id INT = 0,
    @CustomerId int = 0,
    @ProductId int = 0,
	@VariantId int = 0,
	@AttributeId varchar(max) = null,
    @Quantity int = 0,
    @IsActive BIT = 1,
    @IsDeleted BIT = 0,
    @Mode NVARCHAR(10),
    @OperatedBy INT,
    @response NVARCHAR(MAX) OUT
)
AS
BEGIN
    SET NOCOUNT ON;
    SET @response='E|Opps!... Something went wrong. Please contact system administrator|0';
	
  IF @Mode NOT IN ('SAVE','STATUS','DELETE')
  BEGIN
   SET @response = 'E|Invalid mode supplied.|0';
   RETURN;
  END
	
    BEGIN TRY
	
        IF @Mode='SAVE'
        BEGIN
            IF @Id>0
            BEGIN
                UPDATE CustomerCart
                SET CustomerId = @CustomerId,
					ProductId = @ProductId,
					VariantId = @VariantId,
					AttributeId = @AttributeId,
					Quantity = @Quantity,
                    LastModifiedBy=@OperatedBy,
                    LastModifiedDate=GETDATE()
                WHERE Id=@Id;
            END
            ELSE
            BEGIN
                INSERT INTO CustomerCart
                (
                    CustomerId , ProductId , VariantId,AttributeId,
                   Quantity,IsActive,IsDeleted,CreatedBy,CreatedDate , LastModifiedBy,LastModifiedDate
                )
                VALUES
                (
                    @CustomerId,@ProductId,@VariantId,@AttributeId,@Quantity, 1,0,@OperatedBy,GETDATE(),
					@OperatedBy,GETDATE()
                )

                SET @Id=SCOPE_IDENTITY();
            END
			
			SET @response='S|Record saved successfully|' + CAST(@Id AS NVARCHAR);
			RETURN;

        END

        ELSE IF @Mode='STATUS'
        BEGIN
            UPDATE CustomerCart
            SET IsActive=@IsActive,
                IsDeleted=@IsDeleted,
                LastModifiedBy=@OperatedBy,
                LastModifiedDate=GETDATE()
            WHERE Id=@Id;
						
			SET @response='S|Record saved successfully|' + CAST(@Id AS NVARCHAR);
			RETURN;

        END
		ELSE IF @Mode = 'DELETE'
		  BEGIN
		   
		   UPDATE CustomerCart
		   SET IsActive = 0,
			   IsDeleted = 1,
			   LastModifiedBy = @OperatedBy,
			   LastModifiedDate = GETDATE()
		   WHERE Id = @Id;

		   SET @response = 'S|Record deleted successfully|' + CAST(@Id AS NVARCHAR);
		   RETURN;

		  END
    END TRY
    BEGIN CATCH
        SET @response='E|' + ERROR_MESSAGE() + '|0';
        RETURN;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Customer_Get]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Customer_Get]
(
    @Id INT = NULL,
    @Search NVARCHAR(200) = NULL,
    @Start INT = 0,
    @Length INT = 25,
    @SortColumnIndex INT = 0,
    @SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN
    SET NOCOUNT ON;

-------------------------------------------------------
-- SINGLE RECORD
-------------------------------------------------------
IF @Id IS NOT NULL
BEGIN

    SELECT *
    FROM Customer
    WHERE Id = (CASE WHEN @Id < 0 THEN Id ELSE @Id END)
    AND IsDeleted = 0
    AND IsActive = (CASE WHEN @Id < 0 THEN 1 ELSE IsActive END);

    -------------------------------------
    -- ADDRESS
    -------------------------------------
    SELECT *
    FROM CustomerAddress
    WHERE CustomerId = ABS(@Id)
    AND IsDeleted = 0;
	
    -------------------------------------
    -- CART
    -------------------------------------
    SELECT 
        C.*,
        P.ProductName,
        V.SKU,
        V.Price
    FROM CustomerCart C
    LEFT JOIN Products P ON P.Id = C.ProductId
    LEFT JOIN ProductVariantMapping V ON V.Id = C.VariantId
    WHERE C.CustomerId = ABS(@Id)
    AND C.IsDeleted = 0;

    -------------------------------------
    -- ORDER
    -------------------------------------
    SELECT o.*,
     (o.FinalAmount - ISNULL(ou.FinalDiscount, 0)) AS GrandTotal,
    ISNULL(ou.FinalDiscount, 0) AS FinalDiscount
	FROM Orders o
	left join OfferUsage ou on Refid=o.id
	WHERE o.UserId = ABS(@Id) ORDER BY CreatedDate DESC;

	SELECT oi.Id As Id, oi.OrderId AS OrderId, oi.VariantId AS VariantId, P.Id AS ProductId,ou.Id,ou.FinalDiscount,
	P.ProductName AS ProductName, PVM.SKU as VariantName, oi.Quantity as Quantity, oi.UnitPrice AS UnitPrice,
	oi.TotalPrice  AS TotalPrice, oi.IsActive AS IsActive 
	FROM OrderItems oi
	LEFT JOIN ProductVariantMapping PVM ON PVM.Id = oi.VariantId 
	Left Join Products P ON P.Id = PVM.ProductId 
		left join OfferUsage ou on Refid=oi.orderid
	WHERE oi.OrderId IN (SELECT Id FROM Orders WHERE UserId = ABS(@Id));

    RETURN;

END

-------------------------------------------------------
-- SORT MAPPING
-------------------------------------------------------
DECLARE @OrderBy NVARCHAR(100);

SET @OrderBy =
    CASE @SortColumnIndex
        WHEN 0 THEN 'X.Id'
        WHEN 1 THEN 'X.FirstName'
        WHEN 2 THEN 'X.Email'
        WHEN 3 THEN 'X.MobileNo'
        WHEN 4 THEN 'X.IsActive'
        ELSE 'X.Id'
    END;

IF @SortDirection NOT IN ('ASC','DESC')
    SET @SortDirection = 'DESC';

-------------------------------------------------------
-- COUNTS
-------------------------------------------------------
DECLARE @Total INT, @Filtered INT;

SELECT @Total = COUNT(*)
FROM Customer
WHERE IsDeleted = 0;

SELECT @Filtered = COUNT(*)
FROM Customer X
WHERE X.IsDeleted = 0
AND (
     @Search IS NULL
     OR X.FirstName LIKE '%' + @Search + '%'
     OR X.Email LIKE '%' + @Search + '%'
     OR X.MobileNo LIKE '%' + @Search + '%'
);

SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords;

-------------------------------------------------------
-- DATA
-------------------------------------------------------
DECLARE @SQL NVARCHAR(MAX);

SET @SQL = '
SELECT 
    ROW_NUMBER() OVER (ORDER BY ' + @OrderBy + ' ' + @SortDirection + ') + @Start AS SrNo,
    X.*
FROM Customer X
WHERE X.IsDeleted = 0
';

IF @Search IS NOT NULL
SET @SQL += '
AND (
    X.FirstName LIKE ''%'' + @Search + ''%'' OR
    X.Email LIKE ''%'' + @Search + ''%'' OR
    X.MobileNo LIKE ''%'' + @Search + ''%''
)';

SET @SQL += '
ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
OFFSET @Start ROWS FETCH NEXT @Length ROWS ONLY';

EXEC sp_executesql
@SQL,
N'@Search NVARCHAR(200), @Start INT, @Length INT',
@Search,@Start,@Length;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Customer_Save]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[SP_Customer_Save]
(
    @Id INT = 0,
    @FirstName NVARCHAR(100) = NULL,
    @LastName NVARCHAR(100) = NULL,
    @Email NVARCHAR(200) = NULL,
    @MobileNo NVARCHAR(20) = NULL,
    @Password NVARCHAR(200) = NULL,
    @DateOfBirth DATETIME = NULL,
    @Gender NVARCHAR(20) = NULL,
	
	@AddressLine1 NVARCHAR(500) = NULL,
	@AddressLine2 NVARCHAR(500) = NULL,
	@City NVARCHAR(200) = NULL,
	@State NVARCHAR(200) = NULL,
	@PostalCode NVARCHAR(20) = NULL,
	@Country NVARCHAR(200) = NULL,

    @IsActive BIT = 1,
    @IsDeleted BIT = 0,
    @Mode NVARCHAR(10),

    @OperatedBy INT,
    @response NVARCHAR(MAX) OUT
)
AS
BEGIN
    SET NOCOUNT ON;
    SET @response='E|Opps!... Something went wrong. Please contact system administrator|0';
	
  IF @Mode NOT IN ('SAVE','STATUS','DELETE')
  BEGIN
   SET @response = 'E|Invalid mode supplied.|0';
   RETURN;
  END
	
    BEGIN TRY
		IF @Mode = 'SAVE'
	BEGIN
		
				
	   -- Duplicate validation
	IF EXISTS (
    SELECT 1 
    FROM Customer
    WHERE IsDeleted = 0
      AND (@Id = 0 OR Id <> @Id)
      AND (
            (ISNULL(@Email, '') <> '' AND Email = @Email)
         OR (ISNULL(@MobileNo, '') <> '' AND MobileNo = @MobileNo)
          )
)
BEGIN
    -- Email duplicate check
    IF (ISNULL(@Email, '') <> '' AND EXISTS (
        SELECT 1 FROM Customer
        WHERE Email = @Email
          AND IsDeleted = 0
          AND (@Id = 0 OR Id <> @Id)
    ))
    BEGIN
        SET @response = 'E|Email already exists.|0';
    END
    -- Mobile duplicate check
    ELSE IF (ISNULL(@MobileNo, '') <> '' AND EXISTS (
        SELECT 1 FROM Customer
        WHERE MobileNo = @MobileNo
          AND IsDeleted = 0
          AND (@Id = 0 OR Id <> @Id)
    ))
    BEGIN
        SET @response = 'E|Mobile number already exists.|0';
    END

    RETURN;
END
	END
        IF @Mode='SAVE'
        BEGIN
            IF @Id>0
            BEGIN
                               UPDATE Customer
               SET FirstName = ISNULL(@FirstName, FirstName),
    LastName = ISNULL(@LastName, LastName),
    Email = ISNULL(@Email, Email),
    MobileNo = ISNULL(@MobileNo, MobileNo),
   -- Password = ISNULL(@Password, Password),
    DateOfBirth = ISNULL(@DateOfBirth, DateOfBirth),
    Gender = ISNULL(@Gender, Gender),
    AddressLine1 = ISNULL(@AddressLine1, AddressLine1),
    AddressLine2 = ISNULL(@AddressLine2, AddressLine2),
    City = ISNULL(@City, City),
    State = ISNULL(@State, State),
    PostalCode = ISNULL(@PostalCode, PostalCode),
    Country = ISNULL(@Country, Country),
    LastModifiedBy = @OperatedBy,
    LastModifiedDate = GETDATE()
                WHERE Id=@Id;
            END
            ELSE
            BEGIN
                INSERT INTO Customer
                (
                    FirstName,LastName,Email,MobileNo,Password,
                    DateOfBirth,Gender,
                    AddressLine1,
                    AddressLine2,
                    City,
                    State,
                    PostalCode,
                    Country,
                    IsActive,IsDeleted,CreatedBy,CreatedDate
                )
                VALUES
                (
                    @FirstName,@LastName,@Email,@MobileNo,@Password,
                    @DateOfBirth,@Gender,
					@AddressLine1,
                    @AddressLine2,
                    @City,
                    @State,
                    @PostalCode,
                    @Country,
                    1,0,@OperatedBy,GETDATE()
                )

                SET @Id=SCOPE_IDENTITY();
            END
			
			SET @response='S|Record saved successfully|' + CAST(@Id AS NVARCHAR);
			RETURN;

        END

        ELSE IF @Mode='STATUS'
        BEGIN
            UPDATE Customer
            SET IsActive=@IsActive,
                IsDeleted=@IsDeleted,
                LastModifiedBy=@OperatedBy,
                LastModifiedDate=GETDATE()
            WHERE Id=@Id;
						
			SET @response='S|Record saved successfully|' + CAST(@Id AS NVARCHAR);
			RETURN;

        END
		ELSE IF @Mode = 'DELETE'
		  BEGIN

		   
		   UPDATE Customer
		   SET IsActive = 0,
			   IsDeleted = 1,
			   LastModifiedBy = @OperatedBy,
			   LastModifiedDate = GETDATE()
		   WHERE Id = @Id;

		   SET @response = 'S|Record deleted successfully|' + CAST(@Id AS NVARCHAR);
		   RETURN;

		  END
    END TRY
    BEGIN CATCH
        SET @response='E|' + ERROR_MESSAGE() + '|0';
        RETURN;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CustomerAddress_Save]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CustomerAddress_Save]
(
    @Id BIGINT = 0,
    @CustomerId BIGINT = NULL,
    @AddressLine1 NVARCHAR(MAX) = NULL,
    @AddressLine2 NVARCHAR(MAX) = NULL,
    @City NVARCHAR(200) = NULL,
    @State NVARCHAR(200) = NULL,
    @PostalCode NVARCHAR(20) = NULL,
    @Country NVARCHAR(200) = NULL,
    @AddressType NVARCHAR(50) = NULL,
	@MobileNo varchar(15)=null,
	@AlternativeMobileNo varchar(15)=null,
    @Mode NVARCHAR(10),
	@CustomerName NVARCHAR(100)=null,
    @Operated_By BIGINT=null,
    @response NVARCHAR(MAX) OUT
)
AS
BEGIN

SET NOCOUNT ON

SET @response = 'E|Something went wrong|0'

BEGIN TRY

------------------------------------------------
-- SAVE (INSERT / UPDATE)
------------------------------------------------

IF @Mode = 'SAVE'
BEGIN

    IF @Id > 0
    BEGIN
        -- UPDATE
        UPDATE [dbo].[CustomerAddress]
        SET
            AddressLine1 = @AddressLine1,
            AddressLine2 = @AddressLine2,
			CustomerName=@CustomerName,
            City = @City,
            [State] = @State,
            PostalCode = @PostalCode,
            Country = @Country,
			MobileNo=@MobileNo,
			AlternativeMobileNo=@AlternativeMobileNo,
            AddressType = @AddressType,
            LastModifiedBy = @Operated_By,
            LastModifiedDate = GETDATE()
        WHERE CustomerId = @CustomerId
        AND AddressType = @AddressType
        AND IsActive = 1
        AND IsDeleted = 0
		SET @response = 'S|Address updated successfully|' + CAST(@Id AS NVARCHAR)
    END
    ELSE
    BEGIN
        -- INSERT
        INSERT INTO [dbo].[CustomerAddress]
        (
            CustomerId, AddressLine1, AddressLine2, City, [State], PostalCode, Country,AlternativeMobileNo,MobileNo,CustomerName,
            AddressType, IsDefault, IsActive, IsDeleted, CreatedBy, CreatedDate
        )
        VALUES
        (
            @CustomerId, @AddressLine1, @AddressLine2, @City, @State, @PostalCode, @Country,@AlternativeMobileNo,@MobileNo,@CustomerName,
            @AddressType, 0, 1, 0, @Operated_By, GETDATE()
        )

        SET @Id = SCOPE_IDENTITY()
		 SET @response = 'S|Address saved successfully|' + CAST(@Id AS NVARCHAR)
    END

    
    RETURN

END

------------------------------------------------
-- DELETE
------------------------------------------------

IF @Mode = 'DELETE'
BEGIN

    --UPDATE [dbo].[CustomerAddress]
    --SET
    --    IsDeleted = 1,
    --    IsActive = 0,
    --    LastModifiedBy = @Operated_By,
    --    LastModifiedDate = GETDATE()
    --WHERE Id = @Id
	delete  [dbo].[CustomerAddress] WHERE Id = @Id

    SET @response = 'S|Address deleted successfully|' + CAST(@Id AS NVARCHAR)

END

END TRY
BEGIN CATCH

    SET @response = 'E|' + ERROR_MESSAGE() + '|0'

END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_CustomerDashboard_Get]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_CustomerDashboard_Get]
@CustomerId int = 0
AS
BEGIN
 SELECT *
    FROM Customer
    WHERE Id = @CustomerId 
    AND IsDeleted = 0
    AND IsActive = (CASE WHEN @CustomerId < 0 THEN 1 ELSE IsActive END);

    -------------------------------------
    -- ADDRESS
    -------------------------------------
    SELECT *
    FROM CustomerAddress
    WHERE CustomerId = @CustomerId
    AND IsDeleted = 0;

	 -------------------------------------
    -- Orders
    -------------------------------------

	 SELECT
     1 AS SrNo,
     O.*,
     (SELECT Count(*)  FROM OrderItems where OrderId = O.Id and IsActive = 1 and IsDeleted = 0)No_Of_Items
 FROM Orders O
 WHERE O.UserId = @CustomerId
 AND O.IsDeleted = 0;

  -------------------------------------
    -- Coupons
  -------------------------------------

  select * from  Coupons where CreatedBy = @CustomerId AND IsDeleted = 0;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_CustomerLogin]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_CustomerLogin]
    @Username NVARCHAR(100),
    @Password NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @IsEmail BIT = 0;

    -- Detect Email or Mobile
    IF (@Username LIKE '%_@_%._%')
        SET @IsEmail = 1;

    -- Check if user exists
    IF NOT EXISTS (
        SELECT 1 
        FROM Customer 
        WHERE 
            (@IsEmail = 1 AND Email = @Username)
            OR
            (@IsEmail = 0 AND MobileNo = @Username)
    )
    BEGIN
        SELECT 0 AS Status, 'Invalid Email or Mobile No' AS Message;
        RETURN;
    END

    -- Check Password
    IF NOT EXISTS (
        SELECT 1 
        FROM Customer 
        WHERE 
            (
                (@IsEmail = 1 AND Email = @Username)
                OR
                (@IsEmail = 0 AND MobileNo = @Username)
            )
            AND Password = @Password
    )
    BEGIN
        SELECT 0 AS Status, 'Invalid Password' AS Message;
        RETURN;
    END

    -- Success: Return Customer Details
    SELECT 
        1 AS Status,
        'Login Successful' AS Message,
        *
    FROM Customer
    WHERE 
        (@IsEmail = 1 AND Email = @Username)
        OR
        (@IsEmail = 0 AND MobileNo = @Username);

END
GO
/****** Object:  StoredProcedure [dbo].[SP_DD_Category_Get]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_DD_Category_Get]
@ParentId BIGINT = 0	
AS
BEGIN
	If(@ParentId > 0)
	begin
		select Id , CategoryName , 'SUBCAT' AS Groupby  from  Category where ParentCategoryId = @ParentId and IsActive = 1 and IsDeleted = 0
	end
	else
	begin
		select Id , CategoryName ,'CAT' AS Groupby from Category where ParentCategoryId = 0 and IsActive = 1 and IsDeleted = 0
	end
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DD_Product]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DD_Product]
AS
BEGIN

SELECT 
    Id,
    ProductName
FROM Products
WHERE IsDeleted = 0
AND IsActive = 1
ORDER BY ProductName

END
GO
/****** Object:  StoredProcedure [dbo].[SP_DD_User]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DD_User]
AS
BEGIN

SELECT 
    Id,
    FirstName + ' ' + LastName AS UserName
FROM Customer
WHERE IsDeleted = 0
AND IsActive = 1
ORDER BY FirstName

END
GO
/****** Object:  StoredProcedure [dbo].[SP_ForgotPassword_GenerateOTP]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ForgotPassword_GenerateOTP]
    @Email NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @CustomerId INT;
    DECLARE @OTP INT;

    -- Check Email Exists
    SELECT @CustomerId = Id
    FROM Customer
    WHERE Email = @Email;

    IF (@CustomerId IS NULL)
    BEGIN
        SELECT 0 AS Status, 'Email not found' AS Message;
        RETURN;
    END

    -- Mark all old OTPs as used
    UPDATE ForgetPassword
    SET IsUsed = 1
    WHERE Email = @Email
      AND IsUsed = 0;

    -- Generate 6-digit OTP
    SET @OTP = ABS(CHECKSUM(NEWID())) % 900000 + 100000;

    -- Insert new OTP with 10 min expiry
    INSERT INTO ForgetPassword
    (
        Email,
        OTP,
        CreatedAt,
        ExpiryDate,
        IsUsed
    )
    VALUES
    (
        
        @Email,
        @OTP,
        GETDATE(),
        DATEADD(MINUTE, 10, GETDATE()),
        0
    );

    -- Success response
    SELECT 
        1 AS Status,
        'OTP generated successfully' AS Message,
        @OTP AS OTP; -- remove in production
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ForgotPassword_ResetPassword]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SP_ForgotPassword_ResetPassword]
    @Email NVARCHAR(100),
    @NewPassword NVARCHAR(200)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @CustomerId INT;

    -- Check Email Exists
    SELECT @CustomerId = Id
    FROM Customer
    WHERE Email = @Email;

    IF (@CustomerId IS NULL)
    BEGIN
        SELECT 0 AS Status, 'Email not found' AS Message;
        RETURN;
    END

    
    

    -- Update Password
    UPDATE Customer
    SET Password = @NewPassword
    WHERE Id = @CustomerId;

    SELECT 1 AS Status, 'Password reset successfully' AS Message;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ForgotPassword_VerifyOTP]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ForgotPassword_VerifyOTP]
    @Email NVARCHAR(100),
    @OTP INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @DB_OTP INT;
    DECLARE @CreatedAt DATETIME;
    DECLARE @IsUsed BIT;

    -- Get latest OTP (last inserted)
    SELECT TOP 1 
        @DB_OTP = OTP,
        @CreatedAt = CreatedAt,
        @IsUsed = IsUsed
    FROM ForgetPassword
    WHERE Email = @Email
    ORDER BY CreatedAt DESC;

    -- 1. Check OTP exists
    IF (@DB_OTP IS NULL)
    BEGIN
        SELECT 0 AS Status, 'OTP expired or not found.' AS Message;
        RETURN;
    END

    -- 2. Check already used
    IF (@IsUsed = 1)
    BEGIN
        SELECT 0 AS Status, 'OTP already used.' AS Message;
        RETURN;
    END

    -- 3. Check expiry (10 minutes)
    IF (DATEDIFF(MINUTE, @CreatedAt, GETDATE()) > 10)
    BEGIN
        SELECT 0 AS Status, 'OTP expired (valid only 10 minutes).' AS Message;
        RETURN;
    END

    -- 4. Check OTP match
    IF (@DB_OTP <> @OTP)
    BEGIN
        SELECT 0 AS Status, 'Invalid OTP.' AS Message;
        RETURN;
    END

    -- 5. Mark OTP as used
    UPDATE ForgetPassword
    SET IsUsed = 1
    WHERE Email = @Email
      AND OTP = @OTP
      AND IsUsed = 0;

    SELECT 1 AS Status, 'OTP verified successfully' AS Message;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GenerateOrderNumber]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_GenerateOrderNumber]
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @NextNumber INT
    DECLARE @OrderNumber VARCHAR(30)
    DECLARE @Year VARCHAR(4)

    SET @Year = YEAR(GETDATE())

    SELECT @NextNumber = ISNULL(MAX(CAST(RIGHT(OrderNumber,4) AS INT)),0) + 1
    FROM Orders
    WHERE YEAR(CreatedDate) = YEAR(GETDATE())

    SET @OrderNumber = 'ORD-' + @Year + '-' + RIGHT('0000' + CAST(@NextNumber AS VARCHAR),4)

    SELECT @OrderNumber AS OrderNumber
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetOrderByCustomer]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_GetOrderByCustomer]
@CustomerId INT = 0
AS
BEGIN
	SELECT
  O.*,
(SELECT Count(*)  FROM OrderItems where OrderId = O.Id and IsActive = 1 and IsDeleted = 0)No_Of_Items
FROM Orders O
WHERE O.IsDeleted = 0 and O.UserId = @CustomerId
END
GO
/****** Object:  StoredProcedure [dbo].[SP_HomePageComponent_Get]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_HomePageComponent_Get]
(
    @Id BIGINT = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM HomePageComponent
    WHERE IsDeleted = 0 AND (@Id IS NULL OR Id = @Id)
    ORDER BY DisplayOrder;

    SELECT *
    FROM HomePageComponentItem
    WHERE IsDeleted = 0 AND (@Id IS NULL OR ComponentId = @Id)
    ORDER BY DisplayOrder;

	WITH SplitData AS
		(
			SELECT 
				H.Id, 
				H.RefType, 
				TRIM(value) AS RefValue
			FROM HomePageComponentItem H
			CROSS APPLY STRING_SPLIT(H.RefId, ',')
			WHERE H.IsDeleted = 0
		)

		-- 🔵 CATEGORY DATA (NO PRODUCT DETAILS)
		SELECT 
			S.Id AS ComponentItemId,
			S.RefType,
			S.RefValue AS RefId,

			NULL AS ProductId,
			NULL AS VariantId,
			NULL AS ProductName,

			C.Id AS CategoryId,
			C.CategoryName,
			ISNULL(C.ImagePath, '') AS ImagePath,

			NULL AS AttributeIds,
			NULL AS VariantAttributeValues_Only,
			NULL AS VariantAttributes,

			NULL AS SKU,
			NULL AS Price

		FROM SplitData S

		INNER JOIN Category C ON C.Id = TRY_CAST(S.RefValue AS INT)

		WHERE S.RefType = 'Category' AND ISNULL(C.IsActive, 1) = 1


		UNION ALL


		-- 🟢 PRODUCT DATA (FULL DETAILS)
		SELECT 
			S.Id AS ComponentItemId,
			S.RefType,
			S.RefValue AS RefId,

			X.Id AS ProductId,
			PVM.Id AS VariantId,
	--	PVM.Id AS VariantId ,
			X.ProductName,

			C.Id AS CategoryId,
			C.CategoryName,

			ISNULL(
				MAX(CASE 
						WHEN I.VariantId = PVM.Id THEN I.ImagePath
						WHEN I.VariantId = 0 THEN I.ImagePath
					END), 
			'') AS ImagePath,

			STRING_AGG(CAST(A.Id AS VARCHAR(20)) + '-' + CAST(AV.Id AS VARCHAR(20)), ',') AS AttributeIds,
			STRING_AGG(AV.Value, ', ') AS VariantAttributeValues_Only,
			STRING_AGG(A.Name + ' : ' + AV.Value, ', ') AS VariantAttributes,

			PVM.SKU,
			PVM.Price

		FROM SplitData S

		INNER JOIN Products X ON X.Id = TRY_CAST(PARSENAME(REPLACE(S.RefValue, '-', '.'), 2) AS INT)

		LEFT JOIN Category C ON C.Id = X.CategoryId

		INNER JOIN ProductVariantMapping PVM ON PVM.ProductId = X.Id
			AND (
				TRY_CAST(PARSENAME(REPLACE(S.RefValue, '-', '.'), 1) AS INT) = 0
				OR PVM.Id = TRY_CAST(PARSENAME(REPLACE(S.RefValue, '-', '.'), 1) AS INT)
			)

		LEFT JOIN ProductImages I ON I.ProductId = X.Id AND I.VariantId = PVM.Id

		INNER JOIN ProductVariantDetails PVD ON PVD.VariantId = PVM.Id

		INNER JOIN Attribute A ON A.Id = PVD.AttributeId

		INNER JOIN AttributeValue AV ON AV.Id = PVD.AttributeValueId

		WHERE S.RefType = 'Product' AND X.IsActive = 1 AND PVM.IsActive = 1 AND ISNULL(C.IsActive, 1) = 1

		GROUP BY S.Id, S.RefType, S.RefValue, X.Id, X.ProductName, C.Id, C.CategoryName, PVM.Id, PVM.SKU, PVM.Price


		ORDER BY RefType, ProductName, CategoryName;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_HomePageComponent_Save]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_HomePageComponent_Save]
(
    @Id BIGINT = 0,
    @Key NVARCHAR(100) = NULL,
    @Name NVARCHAR(200) = NULL,
    @Type NVARCHAR(50) = NULL,
    --@DisplayOrder INT = 0,
    @IsActive BIT = 1,

    @Items NVARCHAR(MAX) = NULL, -- FORMAT: Id|Title|Image|Redirect|DisplayOrder||...
    @RefId NVARCHAR(100) = NULL,
    @ItemId INT = 0,

    @Mode NVARCHAR(20),
    @OperatedBy BIGINT,
	@response NVARCHAR(MAX) OUT
)
AS
BEGIN
    SET NOCOUNT ON;
	
 SET @response = 'E|Opps!... Something went wrong.|0';

 BEGIN TRY

  IF @Mode NOT IN ('SAVE','STATUS','DELETE')
  BEGIN
   SET @response = 'E|Invalid mode supplied.|0';
   RETURN;
  END
  
    DECLARE @NewId BIGINT = 0;

    IF(@Mode = 'SAVE')
    BEGIN
        IF(@Id = 0)
        BEGIN
            INSERT INTO HomePageComponent
            (
                [Key], Name, Type, DisplayOrder,
                IsActive, IsDeleted,
                CreatedBy, CreatedDate
            )
            VALUES
            (
                @Key, @Name, @Type, 0,
                @IsActive, 0,
                @OperatedBy, GETDATE()
            );

            SET @NewId = SCOPE_IDENTITY();
        END
		ELSE
        BEGIN
			UPDATE HomePageComponent
				SET IsActive = @IsActive,
					LastModifiedBy = @OperatedBy,
					LastModifiedDate = GETDATE()
				WHERE Id = @Id;

            SET @NewId = @Id;
        END
        
		IF (@Type = 'Banner')
		BEGIN
			IF(@Items IS NOT NULL AND LEN(@Items) > 0)
			BEGIN
				--DECLARE @XML XML = '<i>' + REPLACE(@Items, '||', '</i><i>') + '</i>';
				DECLARE @XML XML = '<i>' + @Items + '</i>';
						
				DELETE FROM HomePageComponentItem WHERE ComponentId = @NewId AND Id NOT IN 
				(SELECT x.value('data[1]', 'INT')
					FROM
					(
						SELECT
						CAST('<data>' + REPLACE(T.c.value('.', 'NVARCHAR(MAX)'), '|', '</data><data>') + '</data>' AS XML)
						FROM @XML.nodes('/i') T(c)
					) A(x) WHERE x.value('data[1]', 'INT') > 0
				);

				INSERT INTO HomePageComponentItem
				(
					ComponentId, RefType, Title, Subtitle, ImagePath, DisplayOrder, IsActive, IsDeleted, CreatedBy, CreatedDate
				)
				SELECT
					@NewId, 'Banner',
					x.value('data[2]', 'NVARCHAR(200)'),
					x.value('data[3]', 'NVARCHAR(500)'),
					x.value('data[4]', 'NVARCHAR(500)'),
					x.value('data[5]', 'INT'),
					x.value('data[6]', 'INT'),
					0,  @OperatedBy, GETDATE()
				FROM
				(
					SELECT
					CAST('<data>' + REPLACE(T.c.value('.', 'NVARCHAR(MAX)'), '|', '</data><data>') + '</data>' AS XML)
					FROM @XML.nodes('/i') T(c)
				) A(x) WHERE x.value('data[1]', 'INT') <= 0;

				UPDATE H
				SET 
					H.Title        = X.x.value('data[2]', 'NVARCHAR(200)'),
					H.Subtitle	   = X.x.value('data[3]', 'NVARCHAR(500)'),
					H.ImagePath    = (CASE WHEN X.x.value('data[4]', 'NVARCHAR(500)') != '-' THEN X.x.value('data[4]', 'NVARCHAR(500)') ELSE H.ImagePath END),
					H.DisplayOrder = X.x.value('data[5]', 'INT'),
					H.IsActive     = X.x.value('data[6]', 'INT'),
					H.LastModifiedBy   = @OperatedBy,
					H.LastModifiedDate = GETDATE()
				FROM HomePageComponentItem H
				INNER JOIN (
					SELECT 
						CAST('<data>' + REPLACE(T.c.value('.', 'NVARCHAR(MAX)'), '|', '</data><data>') + '</data>' AS XML) AS x
					FROM @XML.nodes('/i') T(c)
				) X
				ON H.Id = X.x.value('data[1]', 'INT')   -- assuming data[1] is the ID
				WHERE X.x.value('data[1]', 'INT') > 0 AND H.RefType = 'Banner';
			END		
			ELSE IF((@Items IS NULL OR LEN(@Items) = 0))
				DELETE FROM HomePageComponentItem WHERE ComponentId = @NewId;
		END
		ELSE IF (@Type != 'Banner')
		BEGIN
			-- INSERT
			IF (ISNULL(@RefId, '') <> '' AND @ItemId = 0)
			BEGIN
				INSERT INTO HomePageComponentItem
				(
					ComponentId, RefType, RefId, IsActive, IsDeleted, CreatedBy, CreatedDate
				)
				VALUES 
				(
					@NewId, @Type, @RefId, 1, 0, @OperatedBy, GETDATE()
				);
			END

			-- UPDATE
			ELSE IF (ISNULL(@RefId, '') <> '' AND @ItemId > 0)
			BEGIN
				UPDATE H
				SET 
					H.RefId = @RefId,
					H.LastModifiedBy = @OperatedBy,
					H.LastModifiedDate = GETDATE()
				FROM HomePageComponentItem H
				WHERE H.Id = @ItemId   -- ✅ safer (use PK)
					  AND H.ComponentId = @NewId
					  AND H.RefType = @Type;
			END

			-- DELETE
			ELSE IF (ISNULL(@RefId, '') = '')
			BEGIN
				DELETE FROM HomePageComponentItem
				WHERE Id = @ItemId     -- ✅ safer
					  AND ComponentId = @NewId
					  AND RefType = @Type;
			END
		END

	   SET @response = 'S|Record saved successfully|' + CAST(@NewId AS NVARCHAR);
	   RETURN;

    END

    ELSE IF(@Mode = 'DELETE')
    BEGIN
        UPDATE HomePageComponent
        SET IsDeleted = 1,
            LastModifiedBy = @OperatedBy,
            LastModifiedDate = GETDATE()
        WHERE Id = @Id

	   SET @response = 'S|Record deleted successfully|' + CAST(@Id AS NVARCHAR);
	   RETURN;

    END

	
 END TRY
 BEGIN CATCH
  SET @response = 'E|' + ERROR_MESSAGE() + '|0';
 END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Inquiry_Get]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_Inquiry_Get]
(
 @Id INT = NULL,
 @Search NVARCHAR(200) = NULL,
 @Start INT = 0,
 @Length INT = 25,
 @SortColumnIndex INT = 0,
 @SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN

SET NOCOUNT ON;

---------------------------------------
-- SINGLE RECORD
---------------------------------------
IF @Id IS NOT NULL
BEGIN

 --SELECT 1 AS TotalRecords, 1 AS FilteredRecords;

 SELECT
     1 AS SrNo,
     I.*,
     (select ProductName from Products P where P.Id = I.ProductId)ProductName,
	 (select (Isnull(FirstName,'') +' '+Isnull(LastName,'')) from Users u where u.Id = I.UserId)Inquiry_By,
	  CASE 
        WHEN I.Status = 'PEND' THEN 'Pending'
		WHEN I.Status = 'INP' THEN 'In-Process'
        WHEN I.Status = 'REP' THEN 'Replied'
        WHEN I.Status = 'COMP' THEN 'Closed'
        ELSE ''
    END AS Status_Desc
 FROM Inquiries I
 WHERE I.Id = @Id
 AND I.IsDeleted = 0;

 RETURN;

END

---------------------------------------
-- SORT COLUMN MAP
---------------------------------------

DECLARE @OrderBy NVARCHAR(100);

SET @OrderBy =
CASE @SortColumnIndex
 WHEN 0 THEN 'I.Id'
 WHEN 1 THEN 'I.Inquiry_Date'
 WHEN 4 THEN 'I.IsActive'
 ELSE 'I.Id'
END

IF @SortDirection NOT IN ('ASC','DESC')
 SET @SortDirection = 'DESC';

---------------------------------------
-- COUNTS
---------------------------------------

DECLARE @Total INT;
DECLARE @Filtered INT;

SELECT @Total = COUNT(*)
FROM Inquiries I
WHERE IsDeleted = 0;

SELECT @Filtered = COUNT(*)
FROM Inquiries I
WHERE I.IsDeleted = 0
AND (
 @Search IS NULL
 OR I.Inquiry_Date LIKE '%' + @Search + '%'

);

SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords;

---------------------------------------
-- DATA
---------------------------------------

DECLARE @SQL NVARCHAR(MAX);

SET @SQL = '
SELECT
 ROW_NUMBER() OVER (ORDER BY ' + @OrderBy + ' ' + @SortDirection + ') + @Start AS SrNo,
  I.*,
  (select ProductName from Products P where P.Id = I.ProductId)ProductName,
   (select (Isnull(FirstName,'''') +'' ''+Isnull(LastName,'''')) from Users u where u.Id = I.UserId)Inquiry_By,
   CASE 
        WHEN I.Status = ''PEND'' THEN ''Pending''
		WHEN I.Status = ''INP'' THEN ''In-Process''
        WHEN I.Status = ''REP'' THEN ''Replied''
        WHEN I.Status = ''COMP'' THEN ''Closed''
        ELSE ''''
    END AS Status_Desc
FROM Inquiries I
 WHERE 
 I.IsDeleted = 0
';

IF @Search IS NOT NULL
SET @SQL += '
AND (
I.Inquiry_Date LIKE ''%'' + @Search + ''%''
 
)
';

SET @SQL += '
ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
OFFSET @Start ROWS FETCH NEXT @Length ROWS ONLY
';

EXEC sp_executesql
@SQL,
N'@Search NVARCHAR(200), @Start INT, @Length INT',
@Search,@Start,@Length;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Inquiry_History_Get]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_Inquiry_History_Get]
@Id int = 0,
@Flag varchar(20) = null

AS
BEGIN
	IF(@Flag = 'S')
	BEGIN
		SELECT 
    *,
    CASE 
        WHEN OldStatus = 'NA' THEN 'NA'
        WHEN OldStatus = 'PEND' THEN 'Pending'
		WHEN OldStatus = 'INP' THEN 'In-Process'
        WHEN OldStatus = 'REP' THEN 'Replied'
        WHEN OldStatus = 'COMP' THEN 'Closed'
        ELSE ''
    END AS OldStatus_Desc,

    CASE 
        WHEN NewStatus = 'PEND' THEN 'Pending'
		WHEN NewStatus = 'INP' THEN 'In-Process'
        WHEN NewStatus = 'REP' THEN 'Replied'
        WHEN NewStatus = 'COMP' THEN 'Closed'
        ELSE ''
    END AS NewStatus_Desc

FROM InquiryStatusHistory
WHERE InquiryId = @Id;
		
	END
	ELSE IF(@Flag = 'R')
	BEGIN
		select * ,(select (Isnull(FirstName,'') +' '+Isnull(LastName,'')) from Users where Id = ReplyBy)ReplyBy_TEXT from InquiryReplies where InquiryId = @Id
	END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Inquiry_Save]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_Inquiry_Save]
(
    @Id INT = 0,
	@ProductId INT = 0,
	@Name varchar(MAX)= null,
	@Email varchar(MAX)= null,
	@PhoneNo varchar(10) = '',
    @Subject NVARCHAR(200) = null,
	@Message NVARCHAR(200) = null,
	@Inquiry_Date datetime = null,
  	@IsActive BIT = 1,
    @Mode NVARCHAR(10),
    @OperatedBy INT,
    @response NVARCHAR(MAX) OUT
)
AS
BEGIN

SET NOCOUNT ON;

SET @response = 'E|Something went wrong|0';

BEGIN TRY

--------------------------------------------------
-- SAVE PRODUCT
--------------------------------------------------

IF @Mode = 'SAVE'
BEGIN




--------------------------------------------------
-- INSERT ORDER
--------------------------------------------------

INSERT INTO Inquiries
(Inquiry_Date, UserId,ProductId,Name,Email,PhoneNo,Subject,Message,Status,CreatedBy , CreatedDate  , IsActive , IsDeleted, LastModifiedBy , LastModifiedDate)
VALUES
(@Inquiry_Date,@OperatedBy,@ProductId,@Name,@Email,@PhoneNo,@Subject,@Message,'PEND', @OperatedBy ,GETDATE(),@IsActive, 0, @OperatedBy, GETDATE());

SET @Id = SCOPE_IDENTITY();

--insert Data into  BNI_Followup_History Table 
		 INSERT INTO InquiryStatusHistory
        (
            InquiryId,
            OldStatus,
            NewStatus,
            CreatedBy,
            CreatedDate,
            IsActive,
            IsDeleted,
			LastModifiedBy,
			LastModifiedDate,
			Remarks
        )
        VALUES
        (
            @Id,
            'NA',
            'PEND',
            @OperatedBy,
            GETDATE(),
            1,
            0,@OperatedBy,
            GETDATE(),NULL
        );


 SET @response = 'S|Inquiry saved successfully|' + CAST(@Id AS NVARCHAR);



RETURN;

END
 ----------------------------------------------------
 -- DELETE (SAFE SOFT DELETE)
 ----------------------------------------------------
  IF @Mode = 'DELETE'
  BEGIN

  

   UPDATE Inquiries
   SET IsDeleted = 1,IsActive=0,
       LastModifiedBy = @OperatedBy,
       LastModifiedDate = GETDATE()
   WHERE Id = @Id;

   UPDATE InquiryStatusHistory
   SET IsDeleted = 1,IsActive=0,
       LastModifiedBy = @OperatedBy,
       LastModifiedDate = GETDATE()
   UPDATE InquiryReplies
   SET IsDeleted = 1,IsActive=0,
       LastModifiedBy = @OperatedBy,
       LastModifiedDate = GETDATE()	
   WHERE Id = @Id;
    
   SET @response = 'S|Inquiry deleted successfully|' + CAST(@Id AS NVARCHAR);
   RETURN;

  END
END TRY
BEGIN CATCH

SET @response = 'E|' + ERROR_MESSAGE() + '|0';

END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Inquiry_Status_Change]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_Inquiry_Status_Change]
(
    @Id INT = 0,
	@Status  nvarchar(50) = NULL,
	@Remarks nvarchar(MAX) = null,	
    @OperatedBy INT,
    @response NVARCHAR(MAX) OUT
)
AS
BEGIN

SET NOCOUNT ON;

SET @response = 'E|Something went wrong|0';

BEGIN TRY

-----------
 -- Status Change
 ----------------------------------------------------
 Declare @OldStatus Nvarchar(MAX) = null
 Select @OldStatus = Status from Inquiries where Id = @Id
  

   UPDATE Inquiries
   SET Status = @Status,
		AdminReply = @Remarks,
		Replied_Date = GETDATE(),
       LastModifiedBy = @OperatedBy,
       LastModifiedDate = GETDATE()
   WHERE Id = @Id;

   	 INSERT INTO InquiryStatusHistory
        (
            InquiryId,
            OldStatus,
            NewStatus,
            CreatedBy,
            CreatedDate,
            IsActive,
            IsDeleted,
			LastModifiedBy,
			LastModifiedDate,
			Remarks
        )
        VALUES
        (
            @Id,
            @OldStatus,
            @Status,
            @OperatedBy,
            GETDATE(),
            1,
            0,@OperatedBy,
            GETDATE(),@Remarks
        );
    
 IF(@Status = 'REP')
BEGIN
	Insert into InquiryReplies(
	InquiryId,
	ReplyBy,
	ReplyMessage,
	ReplyDate,
	IsActive,
	IsDeleted,
	CreatedBy,
	CreatedDate,
	LastModifiedBy,
	LastModifiedDate
	)
	VALUES(
	@Id,
	@OperatedBy,
	@Remarks,
	GETDATE(),
	1,0,
	@OperatedBy,
	GETDATE(),
	@OperatedBy,
	GETDATE()
	)
    SET @response = 'S|Response to the inquiry has been submitted successfully.|' + CAST(@Id AS NVARCHAR);
END
ELSE IF(@Status = 'COMP')
BEGIN
    SET @response = 'S|Inquiry Closed Successfully|' + CAST(@Id AS NVARCHAR);
END
Else
BEGIN
	SET @response = 'S|Status Updated Successfully|' + CAST(@Id AS NVARCHAR);
END

RETURN;

  
END TRY
BEGIN CATCH

SET @response = 'E|' + ERROR_MESSAGE() + '|0';

END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_LOV_Get]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_LOV_Get]
	-- Add the parameters for the stored procedure here
	@Lov_Column varchar(30)='',
	@Lov_Code varchar(50)='',
	@Flag varchar(30)=''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	if(@Flag = 'LI')-- LI = bind Lov Index data
	begin
		select distinct ISNULL(Lov_Column,'')Lov_Column,ISNULL(Display_Text,'')Display_Text from LOV_MASTER where IsActive=1
	end
	else if(@Flag = 'LE') -- LE = bind Lov Edit data
	begin
		select distinct ISNULL(Lov_Column,'')Lov_Column,ISNULL(Display_Text,'')Display_Text from LOV_MASTER where Lov_Column = @Lov_Column and IsActive=1
	end
	else if(@Flag = 'LDI') -- LDI = bind Lov details Index data
	begin
		select ISNULL(Lov_Column,'')Lov_Column,ISNULL(Lov_Code,'')Lov_Code,ISNULL(Lov_Desc,'')Lov_Desc,ISNULL(Display_Text,'')Display_Text,ISNULL(IsActive,0)IsActive,
		ISNULL(DisplayOrder,0)DisplayOrder,((select MAX(DisplayOrder) from LOV_MASTER where Lov_Column = @Lov_Column)+1)MaxDisplay_Seq_No,ISNULL(CreatedBy,'')CreatedBy,ISNULL(CreatedDate,'')CreatedDate,ISNULL(LastModifiedBy,'')LastModifiedBy,
		ISNULL(LastModifiedDate,'')LastModifiedDate,ISNULL(IsActive,0)IsActive,ISNULL(IsDeleted,0)IsDeleted
		FROM LOV_MASTER where Lov_Column =@Lov_Column  AND Lov_Column != Lov_Code and IsActive=1
	end
	else if(@Flag = 'LDE') --bind Lov details Edit data
	begin
		select ISNULL(Lov_Column,'')Lov_Column,ISNULL(Lov_Code,'')Lov_Code,ISNULL(Lov_Desc,'')Lov_Desc,ISNULL(Display_Text,'')Display_Text,ISNULL(IsActive,0)IsActive,
		ISNULL(DisplayOrder,0)DisplayOrder,0 As MaxDisplay_Seq_No ,ISNULL(CreatedBy,'')CreatedBy,ISNULL(LastModifiedBy,'')LastModifiedBy,ISNULL(LastModifiedBy,'')LastModifiedBy,
		ISNULL(LastModifiedDate,'')LastModifiedDate,ISNULL(IsActive,0)IsActive,ISNULL(IsDeleted,0)IsDeleted 
		FROM LOV_MASTER where Lov_Column =@Lov_Column and Lov_Code =@Lov_Code and IsActive=1
	end
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Lov_Save]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_Lov_Save]
	-- Add the parameters for the stored procedure here
	@Lov_Column varchar(30)='',
	@Display_Text varchar(50)='',
	@Operated_By bigint=0,
	@Action   varchar(10)='',          
	@Response   varchar(100) out 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF ISNULL(LTRIM(RTRIM(@Lov_Column)), '') = ''
BEGIN
    SET @Response = 'E|Column name is required|0';
    RETURN;
END
	SET @Response = 'E|' + 'Contact system administrator|0';

    IF(@Action = 'INSERT')
	begin

		IF EXISTS(SELECT 1 FROM LOV_MASTER WITH(NOLOCK) WHERE Upper(trim([Lov_Column])) = Upper(trim(@Lov_Column)))
		BEGIN
			SET @Response =  'E|' + 'Column name is already exists|0';
		END
		ELSE
		BEGIN
				insert into LOV_MASTER([Lov_Column],[Display_Text],[Lov_Code],[Lov_Desc],[IsActive], [IsDeleted], [CreatedBy], [CreatedDate],LastModifiedBy)          
				values(trim(@Lov_Column),trim(@Display_Text),trim(@Lov_Column),trim(@Lov_Column), 1, 0, @Operated_By, getdate() , @Operated_By)

				SET @Response =  'S|' + 'Record saved successfully|0' ;
		END
	end
	else IF(@Action = 'UPDATE')
	--IF EXISTS(SELECT 1 FROM Lov_Master WITH(NOLOCK) WHERE Upper(trim([Lov_Column])) = Upper(trim(@Lov_Column)))
	--	BEGIN
	--		SET @response =  'E|' + 'Lov Column is already exists|0';
	--	END
	--	ELSE
	begin 
		update LOV_MASTER set Display_Text = trim(@Display_Text), IsActive = 1, LastModifiedBy = @Operated_By, LastModifiedDate = getdate()
				where  Lov_Column = @Lov_Column
		
		SET @response =  'S|' + 'Record updated successfully|0'
	end
	

     --Insert statements for procedure here
	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_LovDtl_Delete]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_LovDtl_Delete]
	-- Add the parameters for the stored procedure here
	@Lov_Column varchar(30),
	@Lov_Code varchar(50)=null,	
	@Operated_By BIGINT = NULL,
	@response varchar(100) out
AS
BEGIN
declare @count int
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SET @response =  'E|' + 'You can not delete the record|0';


	--update LOV_MASTER set IsActive = 0, [IsDeleted] = 1, LastModifiedBy = @Operated_By, LastModifiedDate = getdate() where Lov_Column = @Lov_Column and Lov_Code =@Lov_Code
	-- First log or update audit (optional)
UPDATE LOV_MASTER
SET LastModifiedBy = @Operated_By,
IsActive=0,IsDeleted=1,
    LastModifiedDate = GETDATE()
WHERE Lov_Column = @Lov_Column
  AND Lov_Code = @Lov_Code;

-- Then permanently delete
--DELETE FROM LOV_MASTER WHERE Lov_Column = @Lov_Column
--  AND (@Lov_Code IS NULL OR Lov_Code = @Lov_Code);
--WHERE Lov_Column = @Lov_Column
--  AND Lov_Code = @Lov_Code;

	SET @response = 'S|' + 'Record deleted successfully|0';

    
END
GO
/****** Object:  StoredProcedure [dbo].[SP_LovDtl_Save]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_LovDtl_Save]
	-- Add the parameters for the stored procedure here
	@Lov_Column varchar(30)='',
	@Display_Text varchar(50)='',
	@Lov_Code varchar(50)='',
	@Lov_Desc varchar(50)='',
	@DisplayOrder int =0,
	@IsActive bit = 0,
	@Operated_By varchar(20)='',
	@Action   varchar(20)='',          
	@response   varchar(100) out 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SET @response = 'E|' + 'Contact system administrator|0';
		IF ISNULL(LTRIM(RTRIM(@Lov_Desc)), '') = ''
BEGIN
    SET @Response = 'E|Lov Description is required|0';
    RETURN;
END
    IF(@Action = 'INSERT')
	begin

		-- DELETE DEFAULT RECORD GENERATED AT TIME OF ADD LOV COLUMN MASTER REC
		

		IF EXISTS(SELECT 1 FROM LOV_MASTER WITH(NOLOCK) WHERE Upper(trim([Lov_Column])) = Upper(trim(@Lov_Column)) and Upper(trim([Lov_Desc])) = Upper(trim(@Lov_Desc)) and IsDeleted = 0)
		BEGIN
			SET @response =  'E|' + 'Description is already exists|0';
		END
		ELSE
		BEGIN
				DELETE FROM LOV_MASTER WHERE Upper(trim([Lov_Column])) = Upper(trim(@Lov_Column)) AND Lov_Column = Lov_Code
				declare @count int
				declare @codename varchar(30)
				select @count = COUNT(*) + 1 from LOV_MASTER where Lov_Column = @Lov_Column
				set @codename = convert(varchar,@count)

				insert into LOV_MASTER([Lov_Column],[Display_Text],[Lov_Code],[Lov_Desc],[DisplayOrder],[IsActive], [IsDeleted], [CreatedBy], [CreatedDate])          
				values(trim(@Lov_Column),trim(@Display_Text),trim(@codename),trim(@Lov_Desc),@DisplayOrder, 1, 0, @Operated_By, getdate())

				SET @response =  'S|' + 'Record saved successfully|0' ;
		END
	end
	else IF(@Action = 'UPDATE')
	begin 
	IF EXISTS(SELECT 1 FROM LOV_MASTER WITH(NOLOCK) WHERE Upper(trim([Lov_Column])) = Upper(trim(@Lov_Column)) and Upper(trim([Lov_Desc])) = Upper(trim(@Lov_Desc)) and Lov_Code != @Lov_Code and IsDeleted = 0)
		BEGIN
			SET @response =  'E|' + 'Description is already exists|0';
		END
		else
		BEGIN
		update LOV_MASTER set Lov_Desc=@Lov_Desc,DisplayOrder =@DisplayOrder, 
	--	IsActive = @IsActive,
		LastModifiedBy = @Operated_By, LastModifiedDate = getdate()
				where  Lov_Column = @Lov_Column and Lov_Code=@Lov_Code
		
		SET @response =  'S|' + 'Record updated successfully|0' ;
		END
	end
	
     --Insert statements for procedure here
	
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Love_Combo]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_Love_Combo]
(
@LOV_Column varchar(max)=null
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT LOV_Code as Code,LOV_Desc as [Name] FROM [dbo].[LOV_MASTER] WHERE LTRIM(RTRIM(LOV_Column)) = LTRIM(RTRIM(@LOV_Column));
END
GO
/****** Object:  StoredProcedure [dbo].[SP_LovMaster_Delete]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_LovMaster_Delete]
	-- Add the parameters for the stored procedure here
	@Lov_Column varchar(30),
	@Operated_By BIGINT = NULL,
	@response varchar(100) out
AS
BEGIN
	SET NOCOUNT ON;
	
	SET @response =  'E|' + 'You can not delete the record|0';
UPDATE LOV_MASTER
SET LastModifiedBy = @Operated_By,
IsActive=0,IsDeleted=1,
    LastModifiedDate = GETDATE()
WHERE Lov_Column = @Lov_Column

	SET @response = 'S|' + 'Record deleted successfully|0';

    
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Menus_Get]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_Menus_Get]
(
    @Id INT = NULL,
    @Search NVARCHAR(200) = NULL,
    @Start INT = 0,
    @Length INT = 25,
    @SortColumnIndex INT = 0,
    @SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN
    SET NOCOUNT ON;

    -- =====================================================
    -- SINGLE RECORD MODE
    -- =====================================================
    IF @Id IS NOT NULL
    BEGIN

        SELECT 
            1 AS SrNo,
            X.*,
            P.Name AS ParentMenuName
        FROM Menus X
        LEFT JOIN Menus P ON P.Id = X.ParentId
        WHERE X.Id = (CASE WHEN @Id < 0 THEN X.Id ELSE @Id END) AND X.IsDeleted = 0
		AND X.IsActive = (CASE WHEN @Id < 0 THEN 1 ELSE X.IsActive END);

        RETURN;
    END

    -- =====================================================
    -- SORT MAPPING (SAFE)
    -- =====================================================
    DECLARE @OrderBy NVARCHAR(100);

    SET @OrderBy =
        CASE @SortColumnIndex
            WHEN 0 THEN 'M.Id'
            WHEN 1 THEN 'M.Name'
            WHEN 2 THEN 'M.Area'
            WHEN 3 THEN 'M.Controller'
            WHEN 4 THEN 'M.DisplayOrder'
            WHEN 5 THEN 'M.IsActive'
            ELSE 'M.Id'
        END;

    IF @SortDirection NOT IN ('ASC','DESC')
        SET @SortDirection = 'DESC';

    -- =====================================================
    -- COUNTS
    -- =====================================================
    DECLARE @Total INT, @Filtered INT;

    SELECT @Total = COUNT(*) FROM Menus WHERE IsDeleted = 0;

    SELECT @Filtered = COUNT(*)
    FROM Menus M
    WHERE M.IsDeleted = 0
      AND (@Search IS NULL OR
           M.Name LIKE '%' + @Search + '%' OR
           M.Area LIKE '%' + @Search + '%' OR
           M.Controller LIKE '%' + @Search + '%');

    SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords;

    -- =====================================================
    -- DATA
    -- =====================================================
    DECLARE @SQL NVARCHAR(MAX);

    SET @SQL = '
    SELECT 
        ROW_NUMBER() OVER (ORDER BY ' + @OrderBy + ' ' + @SortDirection + ') + @Start AS SrNo,
        M.*,
        P.Name AS ParentMenuName
    FROM Menus M
    LEFT JOIN Menus P ON P.Id = M.ParentId
    WHERE M.IsDeleted = 0
    ';

    IF @Search IS NOT NULL
        SET @SQL += '
        AND (
            M.Name LIKE ''%'' + @Search + ''%'' OR
            M.Area LIKE ''%'' + @Search + ''%'' OR
            M.Controller LIKE ''%'' + @Search + ''%''
        )';

    SET @SQL += '
    ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
    OFFSET @Start ROWS FETCH NEXT @Length ROWS ONLY';

    EXEC sp_executesql
        @SQL,
        N'@Search NVARCHAR(200), @Start INT, @Length INT',
        @Search, @Start, @Length;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Menus_Save]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_Menus_Save]
(
    @Id INT = 0,
    @ParentId INT = NULL,
    @Area NVARCHAR(100) = NULL,
    @Controller NVARCHAR(100) = NULL,
    @Name NVARCHAR(250) = NULL,
    @Url NVARCHAR(250) = NULL,
    @DisplayOrder INT = 0,
    @IsActive BIT = 1,
    @IsDeleted BIT = 0,
    @Mode NVARCHAR(10),
    @OperatedBy INT,
    @response NVARCHAR(MAX) OUT
)
AS
BEGIN
    SET NOCOUNT ON;

    SET @response = 'E|Opps!... Something went wrong.|0';

    BEGIN TRY

        IF @Mode NOT IN ('SAVE','STATUS','DELETE')
        BEGIN
            SET @response = 'E|Invalid mode supplied.|0';
            RETURN;
        END

        -- =====================================================
        -- SAVE MODE
        -- =====================================================
        IF @Mode = 'SAVE'
        BEGIN
            -- Required Validation
            IF ISNULL(@Name,'') = ''
            BEGIN
                SET @response = 'E|Menu Name is required.|0';
                RETURN;
            END

            -- Duplicate Validation (same Parent)
            IF EXISTS (
                SELECT 1 FROM Menus
                WHERE Name = @Name
                  AND ISNULL(ParentId,0) = ISNULL(@ParentId,0)
                  AND IsDeleted = 0
                  AND (@Id = 0 OR Id <> @Id)
            )
            BEGIN
                SET @response = 'E|Menu already exists under same parent.|0';
                RETURN;
            END

            -- UPDATE
            IF @Id > 0
            BEGIN
                UPDATE Menus
                SET ParentId = @ParentId,
                    Area = @Area,
                    Controller = @Controller,
                    Url = @Url,
                    Name = @Name,
                    DisplayOrder = @DisplayOrder,
                    IsActive = @IsActive,
                    LastModifiedBy = @OperatedBy,
                    LastModifiedDate = GETDATE()
                WHERE Id = @Id;

                SET @response = 'S|Record updated successfully|' + CAST(@Id AS NVARCHAR);
                RETURN;
            END
            ELSE
            BEGIN
                INSERT INTO Menus
                (
                    ParentId, Area, Controller, Url, Name, DisplayOrder,
                    IsActive, IsDeleted,
                    CreatedBy, CreatedDate
                )
                VALUES
                (
                    @ParentId, @Area, @Controller, @Url, @Name, @DisplayOrder,
                    @IsActive, 0,
                    @OperatedBy, GETDATE()
                );

                SET @Id = SCOPE_IDENTITY();

                SET @response = 'S|Record saved successfully|' + CAST(@Id AS NVARCHAR);
                RETURN;
            END
        END

        -- =====================================================
        -- STATUS MODE
        -- =====================================================
        IF @Mode = 'STATUS'
        BEGIN
            UPDATE Menus
            SET IsActive = @IsActive,
                IsDeleted = @IsDeleted,
                LastModifiedBy = @OperatedBy,
                LastModifiedDate = GETDATE()
            WHERE Id = @Id;

            SET @response = 'S|Record updated successfully|' + CAST(@Id AS NVARCHAR);
            RETURN;
        END
		ELSE IF @Mode = 'DELETE'
		BEGIN
		 UPDATE Menus
		 SET IsActive = 0,
		   IsDeleted = 1,
		   LastModifiedBy = @OperatedBy,
		   LastModifiedDate = GETDATE()
		 WHERE Id = @Id;
		 
            SET @response = 'S|Record deleted successfully|' + CAST(@Id AS NVARCHAR);
            RETURN;
		END



    END TRY
    BEGIN CATCH
        SET @response = 'E|' + ERROR_MESSAGE() + '|0';
        RETURN;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Offer_Get]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[SP_Offer_Get]
(
    @Id BIGINT = NULL,
    @Search NVARCHAR(200) = NULL,
    @Start INT = 0,
    @Length INT = 25,
    @SortColumnIndex INT = 0,
    @SortDirection NVARCHAR(4) = 'DESC',
	@QuickFilter NVARCHAR(20) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    -------------------------------------------------------
    -- SINGLE RECORD (DETAIL VIEW)
    -------------------------------------------------------
    IF @Id IS NOT NULL
    BEGIN
        /* MASTER */
        SELECT *
        FROM Offers
        WHERE Id = (CASE WHEN @Id < 0 THEN Id ELSE @Id END)

        /* APPLICABILITY */
        SELECT 
            OfferId,
            STRING_AGG(
                CONCAT(
                    ISNULL(CAST(ProductId AS VARCHAR),'NULL'),'~',
                    ISNULL(CAST(VariantId AS VARCHAR),'NULL'),'~',
                    ISNULL(CAST(CategoryId AS VARCHAR),'NULL')
                ), ','
            ) AS ApplicabilityData
        FROM OfferApplicability
        WHERE OfferId = @Id
        GROUP BY OfferId

        /* CONDITIONS */
        SELECT 
            OfferId,
            STRING_AGG(
                CONCAT(ConditionType,'~',ConditionValue), ','
            ) AS ConditionData
        FROM OfferConditions
        WHERE OfferId = @Id
        GROUP BY OfferId

        /* BENEFITS */
        SELECT 
            OfferId,
            STRING_AGG(
                CONCAT(
                    BenefitType,'~',
                    ISNULL(CAST(Value AS VARCHAR),'NULL'),'~',
                    ISNULL(CAST(FreeProductId AS VARCHAR),'NULL'),'~',
                    ISNULL(CAST(FreeQty AS VARCHAR),'NULL')
                ), ','
            ) AS BenefitData
        FROM OfferBenefits
        WHERE OfferId = @Id
        GROUP BY OfferId

        RETURN;
    END


    -------------------------------------------------------
    -- SORT MAPPING
    -------------------------------------------------------
    DECLARE @OrderBy NVARCHAR(100);

    SET @OrderBy =
        CASE @SortColumnIndex
            WHEN 0 THEN 'ISNULL(OM.LastModifiedDate, OM.CreatedDate)'
            WHEN 1 THEN 'OM.OfferName'
            WHEN 2 THEN 'OM.OfferType'
            WHEN 3 THEN 'OM.DiscountValue'
            WHEN 4 THEN 'OM.StartDate'
            WHEN 5 THEN 'OM.EndDate'
            WHEN 6 THEN 'OM.IsActive'
            ELSE 'ISNULL(OM.LastModifiedDate, OM.CreatedDate)'
        END;

    IF @SortDirection NOT IN ('ASC','DESC')
        SET @SortDirection = 'DESC';
		
    -------------------------------------------------------
    -- COUNTS
    -------------------------------------------------------
    DECLARE @Total INT, @Filtered INT;

    SELECT @Total = COUNT(*) FROM Offers WHERE IsDeleted = 0;

    SELECT @Filtered = COUNT(*)
    FROM Offers OM
    WHERE (@Search IS NULL
        OR OM.OfferName LIKE '%' + @Search + '%'
        OR OM.CouponCode LIKE '%' + @Search + '%'
        OR OM.OfferType LIKE '%' + @Search + '%');


    SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords;
	
    -------------------------------------------------------
    -- DATA (DATATABLE)
    -------------------------------------------------------
    DECLARE @SQL NVARCHAR(MAX);

    SET @SQL = '
    SELECT 
        ROW_NUMBER() OVER (ORDER BY CASE WHEN OM.IsActive = 1 AND OM.EndDate >= GETDATE() THEN 1 ELSE 2 END, ' + @OrderBy + ' ' + @SortDirection + ') + @Start AS SrNo,
        OM.Id,
        OM.OfferName,
        OM.OfferType,
        OM.DiscountType,
        OM.DiscountValue,
        OM.CouponCode,
        OM.IsCouponRequired,
        OM.StartDate,
        OM.EndDate,
        OM.Priority,
        OM.IsActive,
        OM.ApplyOnly_Category,
        OM.ApplyOnly_Product,
		CASE 
			WHEN OM.IsActive = 0 THEN ''Inactive''
			WHEN OM.EndDate < GETDATE() THEN ''Expired''
			ELSE ''Active''
		END AS Status,
        -- USAGE COUNT
        (SELECT COUNT(*) FROM OfferUsage OU WHERE OU.OfferId = OM.Id) AS UsedCount,

        -- APPLICABILITY SUMMARY
        ISNULL((
            SELECT STRING_AGG(
                COALESCE(
                    ''Category:'' + CAST(OA.CategoryId AS VARCHAR),
                    ''Product:'' + CAST(OA.ProductId AS VARCHAR),
                    ''Variant:'' + CAST(OA.VariantId AS VARCHAR)
                ), '', ''
            )
            FROM OfferApplicability OA
            WHERE OA.OfferId = OM.Id
        ), ''All'') AS Applicability,
		ISNULL(OM.LastModifiedDate, OM.CreatedDate) AS LastModifiedDate
    FROM Offers OM
    WHERE 1=1 
    ';

	
	IF ISNULL(@QuickFilter, '') <> ''
	BEGIN
		IF @QuickFilter = 'RECENT'
			SET @SQL += ' AND ISNULL(OM.LastModifiedDate, OM.CreatedDate) >= DATEADD(DAY,-7,GETDATE())'

		IF @QuickFilter = 'EXPIRING'
			SET @SQL += ' AND OM.EndDate BETWEEN GETDATE() AND DATEADD(DAY,5,GETDATE())'

		IF @QuickFilter = 'TOP'
			SET @SQL += ' AND (SELECT COUNT(*) FROM OfferUsage OU WHERE OU.OfferId = OM.Id) >= 50'
	END

    IF @Search IS NOT NULL
        SET @SQL += '
        AND (
            OM.OfferName LIKE ''%'' + @Search + ''%'' OR
            OM.CouponCode LIKE ''%'' + @Search + ''%'' OR
            OM.OfferType LIKE ''%'' + @Search + ''%''
        )';

    --SET @SQL += '
    --ORDER BY (CASE WHEN OM.IsActive = 1 AND OM.EndDate >= GETDATE() THEN 1 ELSE 2 END), ' + @OrderBy + ' ' + @SortDirection + '
    --OFFSET @Start ROWS FETCH NEXT @Length ROWS ONLY';
	SET @SQL += '
	ORDER BY 
		(CASE WHEN OM.IsActive = 1 AND OM.EndDate >= GETDATE() THEN 1 ELSE 2 END), 
		' + @OrderBy + ' ' + @SortDirection + '
	OFFSET @Start ROWS';

	IF (@Length > 0)
	BEGIN
		SET @SQL += ' FETCH NEXT @Length ROWS ONLY';
	END

    EXEC sp_executesql
        @SQL,
        N'@Search NVARCHAR(200), @Start INT, @Length INT',
        @Search, @Start, @Length;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Offer_Save]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* ============================================================
   OFFER SAVE
============================================================ */

CREATE   PROCEDURE [dbo].[SP_Offer_Save]
(
    @Id BIGINT = 0,

    @OfferName NVARCHAR(200) = NULL,
    @OfferType VARCHAR(50) = NULL,
    @DiscountType VARCHAR(20) = NULL,

    @DiscountValue DECIMAL(18,2) = NULL,
    @MaxDiscountAmount DECIMAL(18,2) = NULL,

    @MinOrderAmount DECIMAL(18,2) = NULL,
    @MinQty INT = NULL,

    @IsCouponRequired BIT = 0,
    @CouponCode NVARCHAR(50) = NULL,

    @StartDate DATETIME = NULL,
    @EndDate DATETIME = NULL,

    @ApplyOnly_Category NVARCHAR(500) = NULL,
    @ApplyOnly_Product NVARCHAR(500) = NULL,

    @IsActive BIT = 1,
    @IsDeleted BIT = 0,

    --@ApplicabilityData NVARCHAR(MAX) = NULL,
    --@ConditionData NVARCHAR(MAX) = NULL,
    --@BenefitData NVARCHAR(MAX) = NULL,

    @Mode NVARCHAR(10),
    @OperatedBy INT,
    @response NVARCHAR(MAX) OUT
)
AS
BEGIN
    SET NOCOUNT ON;

    SET @response = 'E|Opps!... Something went wrong.|0';

    BEGIN TRY

        IF @Mode NOT IN ('SAVE','STATUS','DELETE')
        BEGIN
            SET @response = 'E|Invalid mode supplied.|0';
            RETURN;
        END

        /* ========================================
           SAVE
        ======================================== */
        IF @Mode = 'SAVE'
        BEGIN
            /* ===== VALIDATION ===== */
            IF ISNULL(@OfferName,'') = ''
            BEGIN
                SET @response = 'E|Offer Name is required.|0';
                RETURN;
            END

            IF ISNULL(@OfferType,'') = ''
            BEGIN
				SET @OfferType = 'PRICE_DISCOUNT';
                --SET @response = 'E|Offer Type is required.|0';
                --RETURN;
            END

            IF ISNULL(@StartDate,'') = '' OR ISNULL(@EndDate,'') = ''
            BEGIN
                SET @response = 'E|Start and End Date required.|0';
                RETURN;
            END

            IF @IsCouponRequired = 1 AND ISNULL(@CouponCode,'') = ''
            BEGIN
                SET @response = 'E|Coupon Code is required.|0';
                RETURN;
            END

            /* ===== DUPLICATE ===== */
            IF EXISTS (
                SELECT 1 FROM Offers
                WHERE OfferName = @OfferName
                AND IsDeleted = 0
                AND (@Id = 0 OR Id <> @Id)
            )
            BEGIN
                SET @response = 'E|Offer Name already exists.|0';
                RETURN;
            END

            /* ===== INSERT / UPDATE ===== */
            IF @Id > 0
            BEGIN
                UPDATE Offers
                SET OfferName = @OfferName,
                    OfferType = @OfferType,
                    DiscountType = @DiscountType,
                    DiscountValue = @DiscountValue,
                    MaxDiscountAmount = @MaxDiscountAmount,
                    MinOrderAmount = @MinOrderAmount,
                    MinQty = @MinQty,
                    IsCouponRequired = @IsCouponRequired,
                    CouponCode = @CouponCode,
                    StartDate = @StartDate,
                    EndDate = @EndDate,
					ApplyOnly_Category = @ApplyOnly_Category,
					ApplyOnly_Product = @ApplyOnly_Product,
                    IsActive = @IsActive,
                    LastModifiedBy = @OperatedBy,
                    LastModifiedDate = GETDATE()
                WHERE Id = @Id;

                --/* DELETE OLD CHILD */
                --DELETE FROM OfferApplicability WHERE OfferId = @Id;
                --DELETE FROM OfferConditions WHERE OfferId = @Id;
                --DELETE FROM OfferBenefits WHERE OfferId = @Id;
            END
            ELSE
            BEGIN
                INSERT INTO Offers (
                    OfferName, OfferType, DiscountType,
                    DiscountValue, MaxDiscountAmount,
                    MinOrderAmount, MinQty,
                    IsCouponRequired, CouponCode,
                    StartDate, EndDate,
					ApplyOnly_Category, ApplyOnly_Product,
                    IsActive, IsDeleted,
                    CreatedBy, CreatedDate
                )
                VALUES (
                    @OfferName, @OfferType, @DiscountType,
                    @DiscountValue, @MaxDiscountAmount,
                    @MinOrderAmount, @MinQty,
                    @IsCouponRequired, @CouponCode,
                    @StartDate, @EndDate,
					@ApplyOnly_Category, @ApplyOnly_Product,
                    1, 0,
                    @OperatedBy, GETDATE()
                );

                SET @Id = SCOPE_IDENTITY();
            END

            --/* ========================================
            --   INSERT APPLICABILITY
            --======================================== */
            --IF ISNULL(@ApplicabilityData,'') <> ''
            --BEGIN
            --    INSERT INTO OfferApplicability (OfferId, ProductId, VariantId, CategoryId)
            --    SELECT 
            --        @Id,
            --        NULLIF(PARSENAME(REPLACE(value,'~','.'),3),'0'),
            --        NULLIF(PARSENAME(REPLACE(value,'~','.'),2),'0'),
            --        NULLIF(PARSENAME(REPLACE(value,'~','.'),1),'0')
            --    FROM STRING_SPLIT(@ApplicabilityData, ',')
            --END

            --/* ========================================
            --   INSERT CONDITIONS
            --======================================== */
            --IF ISNULL(@ConditionData,'') <> ''
            --BEGIN
            --    INSERT INTO OfferConditions (OfferId, ConditionType, ConditionValue)
            --    SELECT 
            --        @Id,
            --        PARSENAME(REPLACE(value,'~','.'),2),
            --        PARSENAME(REPLACE(value,'~','.'),1)
            --    FROM STRING_SPLIT(@ConditionData, ',')
            --END

            --/* ========================================
            --   INSERT BENEFITS
            --======================================== */
            --IF ISNULL(@BenefitData,'') <> ''
            --BEGIN
            --    INSERT INTO OfferBenefits (OfferId, BenefitType, Value, FreeProductId, FreeQty)
            --    SELECT 
            --        @Id,
            --        PARSENAME(REPLACE(value,'~','.'),4),
            --        NULLIF(PARSENAME(REPLACE(value,'~','.'),3),'0'),
            --        NULLIF(PARSENAME(REPLACE(value,'~','.'),2),'0'),
            --        NULLIF(PARSENAME(REPLACE(value,'~','.'),1),'0')
            --    FROM STRING_SPLIT(@BenefitData, ',')
            --END
        END

        /* ========================================
           STATUS
        ======================================== */
        ELSE IF @Mode = 'STATUS'
        BEGIN
            UPDATE Offers
            SET IsActive = @IsActive,
                IsDeleted = @IsDeleted,
                LastModifiedBy = @OperatedBy,
                LastModifiedDate = GETDATE()
            WHERE Id = @Id;
        END

        /* ========================================
           DELETE
        ======================================== */
        ELSE IF @Mode = 'DELETE'
        BEGIN
            UPDATE Offers
            SET IsActive = 0,
                IsDeleted = 1,
                LastModifiedBy = @OperatedBy,
                LastModifiedDate = GETDATE()
            WHERE Id = @Id;

            SET @response = 'S|Record deleted successfully|' + CAST(@Id AS NVARCHAR);
            RETURN;
        END

        SET @response = 'S|Record saved successfully|' + CAST(@Id AS NVARCHAR);
        RETURN;

    END TRY
    BEGIN CATCH
        SET @response = 'E|' + ERROR_MESSAGE() + '|0';
        RETURN;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Order_Detail_Get]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_Order_Detail_Get]
@Id int = 0

AS
BEGIN
	Select oi.Id As Id ,oi.OrderId AS OrderId, oi.VariantId AS VariantId , P.Id AS ProductId ,
	P.ProductName AS ProductName , PVM.SKU as VariantName ,oi.Quantity as Quantity , oi.UnitPrice AS UnitPrice ,
	oi.TotalPrice  AS TotalPrice,oi.IsActive AS IsActive from OrderItems oi
	LEFT JOIN ProductVariantMapping PVM ON PVM.Id = oi.VariantId 
	Left Join Products P ON P.Id = PVM.ProductId
	where OrderId = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Orders_Get]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_Orders_Get]
(
 @Id INT = NULL,
 @Search NVARCHAR(200) = NULL,
 @OrderStatus NVARCHAR(10) = 'ALL',
 @Start INT = 0,
 @Length INT = 25,
 @SortColumnIndex INT = 0,
 @SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN

SET NOCOUNT ON;

---------------------------------------
-- SINGLE RECORD
---------------------------------------
IF @Id IS NOT NULL
BEGIN

 --SELECT 1 AS TotalRecords, 1 AS FilteredRecords;

 SELECT
     1 AS SrNo,
     O.*,
     (SELECT Count(*)  FROM OrderItems where OrderId = O.Id and IsActive = 1 and IsDeleted = 0)No_Of_Items
 FROM Orders O
 WHERE O.Id = @Id
 AND O.IsDeleted = 0;

 RETURN;

END

---------------------------------------
-- SORT COLUMN MAP
---------------------------------------

DECLARE @OrderBy NVARCHAR(100);

SET @OrderBy =
CASE @SortColumnIndex
 WHEN 0 THEN 'O.OrderDate'
 WHEN 1 THEN 'O.OrderNumber'
 WHEN 2 THEN 'O.OrderDate'
 --WHEN 4 THEN 'O.IsActive'
 ELSE 'O.OrderDate'
END

IF @SortDirection NOT IN ('ASC','DESC')
 SET @SortDirection = 'DESC';

---------------------------------------
-- COUNTS
---------------------------------------

DECLARE @Total INT;
DECLARE @Filtered INT;

SELECT @Total = COUNT(*)
FROM Orders O
WHERE IsDeleted = 0;

SELECT @Filtered = COUNT(*)
FROM Orders O
WHERE O.IsDeleted = 0
AND ( @Search IS NULL OR O.OrderNumber LIKE '%' + @Search + '%' )
AND ( ISNULL(@OrderStatus, '') = '' OR ISNULL(@OrderStatus, '') = 'ALL' OR O.OrderStatus = @OrderStatus);

--SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords;

SELECT 
    @Total AS TotalRecords, @Filtered AS FilteredRecords,
    COUNT(*) AS AllCount,
    SUM(CASE WHEN OrderStatus = 'PEND' THEN 1 ELSE 0 END) AS Pending,
    SUM(CASE WHEN OrderStatus = 'CONF' THEN 1 ELSE 0 END) AS Confirmed,
    SUM(CASE WHEN OrderStatus = 'PROC' THEN 1 ELSE 0 END) AS Processing,
    SUM(CASE WHEN OrderStatus = 'COMP' THEN 1 ELSE 0 END) AS Completed,
    SUM(CASE WHEN OrderStatus = 'CANC' THEN 1 ELSE 0 END) AS Cancelled,
    SUM(CASE WHEN OrderStatus = 'RET' THEN 1 ELSE 0 END) AS Returned
FROM Orders O
WHERE O.IsDeleted = 0;

---------------------------------------
-- DATA
---------------------------------------

IF (@Length < 0)
BEGIN
    SET @Length = @Total;
END


DECLARE @SQL NVARCHAR(MAX);

SET @SQL = '
SELECT
 ROW_NUMBER() OVER (ORDER BY ' + @OrderBy + ' ' + @SortDirection + ') + @Start AS SrNo,
 O.*,
(SELECT Count(*)  FROM OrderItems where OrderId = O.Id and IsActive = 1 and IsDeleted = 0)No_Of_Items
FROM Orders O
WHERE O.IsDeleted = 0
';

IF @Search IS NOT NULL
SET @SQL += '
AND (
O.OrderNumber LIKE ''%'' + @Search + ''%''
 
)
';

IF (@OrderStatus IS NOT NULL AND @OrderStatus <> 'ALL')
BEGIN
    SET @SQL += '
    AND O.OrderStatus = @OrderStatus
    ';
END

SET @SQL += '
ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
OFFSET @Start ROWS FETCH NEXT @Length ROWS ONLY
';

EXEC sp_executesql
@SQL,
N'@Search NVARCHAR(200), @OrderStatus NVARCHAR(10), @Start INT, @Length INT',
@Search,@OrderStatus,@Start,@Length;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Orders_Save]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_Orders_Save]
(
    @Id INT = 0,
    @OrderNumber NVARCHAR(250) = null,
	@OrderDate datetime = null,
    @TotalAmount decimal(18,2) = null ,
	@DiscountAmount decimal(18,2) = null,
	@FinalAmount decimal(18,2) = null,
	@OrderItems [dbo].[Type_OrderItems] READONLY ,
	@IsActive BIT = 1,
	@NewStatus NVARCHAR(10) = NULL,
    @Mode NVARCHAR(10),
    @OperatedBy INT,
    @response NVARCHAR(MAX) OUT
)
AS
BEGIN

SET NOCOUNT ON;

-- PEND: Pending, CONF: Confirmed, PROC: Processing, COMP: Completed, CANC: Cancelled, RET: Returned

SET @response = 'E|Something went wrong|0';

BEGIN TRY

	--------------------------------------------------
	-- SAVE PRODUCT
	--------------------------------------------------

	IF @Mode = 'SAVE'
	BEGIN

	--------------------------------------------------
	-- UPDATE PRODUCT
	--------------------------------------------------

	IF @Id > 0
	BEGIN

	UPDATE Orders
	SET
	OrderNumber = @OrderNumber,
	UserId = @OperatedBy,
	OrderDate = @OrderDate,
	TotalAmount = @TotalAmount,
	DiscountAmount = @DiscountAmount,
	FinalAmount = @FinalAmount,
	IsActive = @IsActive,
	LastModifiedBy = @OperatedBy,
	LastModifiedDate = GETDATE()
	WHERE Id = @Id;

	Delete from OrderItems WHERE OrderId = @Id


	INSERT INTO OrderItems
	(OrderId,VariantId,Quantity,UnitPrice,TotalPrice, CreatedBy , CreatedDate  , IsActive , IsDeleted, LastModifiedBy , LastModifiedDate)
	 Select @Id , VariantId,Quantity,UnitPrice,TotalPrice, @OperatedBy , GETDATE(), 1,0, @OperatedBy , GETDATE() from @OrderItems  
	 SET @response = 'S|Order Updated successfully|' + CAST(@Id AS NVARCHAR);

	END
	ELSE
	BEGIN

	--------------------------------------------------
	-- INSERT ORDER
	--------------------------------------------------

	INSERT INTO Orders
	(OrderNumber, UserId,OrderDate,TotalAmount,DiscountAmount,FinalAmount,OrderStatus ,CreatedBy , CreatedDate  , IsActive , IsDeleted, LastModifiedBy , LastModifiedDate)
	VALUES
	(@OrderNumber,@OperatedBy,@OrderDate,@TotalAmount,@DiscountAmount,@FinalAmount,'PEND', @OperatedBy ,GETDATE(),@IsActive, 0, @OperatedBy, GETDATE());

	SET @Id = SCOPE_IDENTITY();


	INSERT INTO OrderItems
	(OrderId,VariantId,Quantity,UnitPrice,TotalPrice, CreatedBy , CreatedDate  , IsActive , IsDeleted, LastModifiedBy , LastModifiedDate)
	 Select @Id , VariantId,Quantity,UnitPrice,TotalPrice, @OperatedBy , GETDATE(), 1,0, @OperatedBy , GETDATE() from @OrderItems  

	 SET @response = 'S|Order saved successfully|' + CAST(@Id AS NVARCHAR);

	END

	RETURN;

	END
	----------------------------------------------------
	-- DELETE (SAFE SOFT DELETE)
	----------------------------------------------------
	IF @Mode = 'DELETE'
	BEGIN

	   UPDATE Orders
	   SET IsDeleted = 1,
		   LastModifiedBy = @OperatedBy,
		   LastModifiedDate = GETDATE()
	   WHERE Id = @Id;

		UPDATE OrderItems
	   SET IsDeleted = 1,
		   LastModifiedBy = @OperatedBy,
		   LastModifiedDate = GETDATE()
	   WHERE OrderId = @Id;
	   SET @response = 'S|Order deleted successfully|' + CAST(@Id AS NVARCHAR);
	   RETURN;

	  END

	IF (@Mode = 'STATUS')
	BEGIN
		BEGIN TRY
			-- ✅ Validate OrderNumber
			IF (@OrderNumber IS NULL OR LTRIM(RTRIM(@OrderNumber)) = '')
			BEGIN
				SET @response = 'E|Order numbers are required|0';
				RETURN;
			END

			-- ✅ Validate NewStatus
			IF (@NewStatus IS NULL OR LTRIM(RTRIM(@NewStatus)) = '')
			BEGIN
				SET @response = 'E|Status is required|0';
				RETURN;
			END

			-- ✅ Validate allowed status values
			IF (@NewStatus NOT IN ('PEND','CONF','PROC','COMP','CANC','RET'))
			BEGIN
				SET @response = 'E|Invalid status value|0';
				RETURN;
			END

			-- ✅ Convert to table
			DECLARE @Orders TABLE (OrderId INT);

			INSERT INTO @Orders (OrderId)
			SELECT TRY_CAST(value AS INT)
			FROM STRING_SPLIT(@OrderNumber, ',')
			WHERE TRY_CAST(value AS INT) IS NOT NULL;

			-- ✅ Check if no valid IDs
			IF NOT EXISTS (SELECT 1 FROM @Orders)
			BEGIN
				SET @response = 'E|Invalid order IDs|0';
				RETURN;
			END

			-- ✅ Check if orders exist in DB
			IF NOT EXISTS (
				SELECT 1
				FROM Orders O
				INNER JOIN @Orders T ON O.Id = T.OrderId
			)
			BEGIN
				SET @response = 'E|Orders not found|0';
				RETURN;
			END

			-- ✅ Update only allowed transitions
			UPDATE O
			SET 
				O.OrderStatus = @NewStatus,
				O.LastModifiedBy = @OperatedBy,
				O.LastModifiedDate = GETDATE()
			FROM Orders O
			INNER JOIN @Orders T ON O.Id = T.OrderId
			WHERE 
			(
				(O.OrderStatus = 'PEND' AND @NewStatus IN ('CONF','CANC')) OR
				(O.OrderStatus = 'CONF' AND @NewStatus IN ('PROC','CANC')) OR
				(O.OrderStatus = 'PROC' AND @NewStatus IN ('COMP','CANC'))
			);
			
			SET @response = 'S|Status updated successfully|1';

		END TRY
		BEGIN CATCH
			SET @response = 'E|' + ERROR_MESSAGE() + '|0';
		END CATCH

		RETURN;
	END
END TRY
BEGIN CATCH

SET @response = 'E|' + ERROR_MESSAGE() + '|0';

END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Product_Combo]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_Product_Combo]

AS
BEGIN
	Select Id , ProductName from Products where IsDeleted = 0 and IsActive = 1
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Product_Get]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_Product_Get]
(
 @Id INT = NULL,
 @CategoryId INT = NULL,
 @Search NVARCHAR(200) = NULL,
 @Start INT = 0,
 @Length INT = 25,
 @SortColumnIndex INT = 0,
 @SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN

SET NOCOUNT ON;

DECLARE @Total INT;
DECLARE @Filtered INT;
---------------------------------------
-- SINGLE RECORD
---------------------------------------
IF @Id > 0 OR ( @Id != -2 AND @CategoryId IS NOT NULL)
BEGIN

 SELECT
    1 AS SrNo,
    X.*,
    C.CategoryName,
    ISNULL(PV.Price, 0) AS Price,
    PV.SKU
FROM Products X
LEFT JOIN Category C ON C.Id = X.CategoryId
OUTER APPLY (
    SELECT TOP 1 Price, SKU
    FROM ProductVariantMapping PV
    WHERE PV.ProductId = X.Id AND PV.IsDeleted = 0
) PV
WHERE X.Id = @Id;
		
	SELECT * FROM ProductImages WHERE ProductId = @Id;

	SELECT 
		PVM.Id,
		PVM.ProductId,
		PVM.SKU,
		PVM.Price,
		
		ISNULL(PS.AvailableStock,0) AS AvailableStock,
		ISNULL(PS.ReservedStock,0) AS ReservedStock,
		ISNULL(PS.AvailableStock,0) + ISNULL(PS.ReservedStock,0) AS TotalStock,

		STRING_AGG(A.Name + ' : ' + AV.Value, ', ') AS VariantAttributes
	FROM ProductVariantMapping PVM	
	LEFT JOIN ProductStock PS ON PS.VariantId = PVM.Id
	INNER JOIN ProductVariantDetails PVD ON PVD.VariantId = PVM.Id
	INNER JOIN Attribute A ON A.Id = PVD.AttributeId
	INNER JOIN AttributeValue AV ON AV.Id = PVD.AttributeValueId
	WHERE PVM.ProductId = @Id
	GROUP BY PVM.Id, PVM.ProductId, PVM.SKU, PVM.Price, PS.AvailableStock, PS.ReservedStock;
	
	SELECT 
		PVD.Id,
		PVD.VariantId,
		PVD.AttributeId,
		A.Name AttributeName,
		PVD.AttributeValueId,
		AV.Value AS AttributeValue
	FROM ProductVariantDetails PVD
	INNER JOIN Attribute A ON A.Id = PVD.AttributeId
	INNER JOIN AttributeValue AV ON AV.Id = PVD.AttributeValueId
	WHERE PVD.VariantId IN 
	(
		SELECT Id 
		FROM ProductVariantMapping 
		WHERE ProductId = @Id 
	);

 RETURN;

END
Else If  @Id = -1
begin

	SELECT
	 X.*,
	 C.CategoryName,
		 PV.Price,
		 PV.SKU
	 FROM Products X
	 LEFT JOIN Category C ON C.Id = X.CategoryId
	 OUTER APPLY (
		SELECT TOP 1 Price, SKU
		FROM ProductVariantMapping PV
		WHERE PV.ProductId = X.Id AND PV.IsDeleted = 0
	) PV
	WHERE X.IsDeleted = 0
end
Else If  @Id = -2
begin
-- TOTAL COUNT (NO SEARCH)
SELECT @Total = COUNT(DISTINCT PVM.Id)
FROM Products X
LEFT JOIN Category C ON C.Id = X.CategoryId
INNER JOIN ProductVariantMapping PVM ON PVM.ProductId = X.Id
INNER JOIN ProductVariantDetails PVD ON PVD.VariantId = PVM.Id
INNER JOIN Attribute A ON A.Id = PVD.AttributeId
INNER JOIN AttributeValue AV ON AV.Id = PVD.AttributeValueId
LEFT JOIN ProductImages PI ON PI.ProductId = X.Id AND PI.VariantId = PVM.Id
LEFT JOIN (
    SELECT VariantId,
           SUM(ISNULL(AvailableStock,0)) - SUM(ISNULL(ReservedStock,0)) AS TotalAvailableStock
    FROM ProductStock
    GROUP BY VariantId
) PS ON PS.VariantId = PVM.Id
WHERE X.IsActive = 1 
AND PVM.IsActive = 1 
AND C.IsActive = 1 
AND X.IsDeleted = 0
AND X.CategoryId = (CASE WHEN ISNULL(@CategoryId, 0) <= 0 THEN X.CategoryId ELSE @CategoryId END);


-- FILTERED COUNT (WITH SEARCH)
SELECT @Filtered = COUNT(DISTINCT PVM.Id)
FROM Products X
LEFT JOIN Category C ON C.Id = X.CategoryId
INNER JOIN ProductVariantMapping PVM ON PVM.ProductId = X.Id
INNER JOIN ProductVariantDetails PVD ON PVD.VariantId = PVM.Id
INNER JOIN Attribute A ON A.Id = PVD.AttributeId
INNER JOIN AttributeValue AV ON AV.Id = PVD.AttributeValueId
LEFT JOIN ProductImages PI ON PI.ProductId = X.Id AND PI.VariantId = PVM.Id
LEFT JOIN (
    SELECT VariantId,
           SUM(ISNULL(AvailableStock,0)) - SUM(ISNULL(ReservedStock,0)) AS TotalAvailableStock
    FROM ProductStock
    GROUP BY VariantId
) PS ON PS.VariantId = PVM.Id
WHERE X.IsActive = 1 
AND PVM.IsActive = 1 
AND C.IsActive = 1 
AND X.IsDeleted = 0
AND X.CategoryId = (CASE WHEN ISNULL(@CategoryId, 0) <= 0 THEN X.CategoryId ELSE @CategoryId END)

AND (
    @Search IS NULL
    OR X.ProductName LIKE '%' + @Search + '%'
    OR C.CategoryName LIKE '%' + @Search + '%'
);


-- RETURN COUNTS
SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords;


-- FINAL DATA (IMPORTANT: also apply same search here)
SELECT 
    X.Id AS ProductId,
	x.ProductDescription,
    PVM.Id AS VarientId,
    X.ProductName,
    C.Id AS CategoryId,
    C.CategoryName,
	c.ParentCategoryId,--add from VishalG

    STRING_AGG(AV.Value, ', ') AS VariantAttributeValues_Only,
    STRING_AGG(A.Name + ' : ' + AV.Value, ', ') AS VariantAttributes,

    PVM.SKU,
    PVM.Price,
    PI.ImagePath,
    ISNULL(PS.TotalAvailableStock,0) AS TotalAvailableStock

FROM Products X
LEFT JOIN Category C ON C.Id = X.CategoryId
INNER JOIN ProductVariantMapping PVM ON PVM.ProductId = X.Id
LEFT JOIN ProductVariantDetails PVD ON PVD.VariantId = PVM.Id
LEFT JOIN Attribute A ON A.Id = PVD.AttributeId
LEFT JOIN AttributeValue AV ON AV.Id = PVD.AttributeValueId
LEFT JOIN ProductImages PI ON PI.ProductId = X.Id AND PI.VariantId = PVM.Id
LEFT JOIN (
    SELECT VariantId,
           SUM(ISNULL(AvailableStock,0)) - SUM(ISNULL(ReservedStock,0)) AS TotalAvailableStock
    FROM ProductStock
    GROUP BY VariantId
) PS ON PS.VariantId = PVM.Id

WHERE X.IsActive = 1 
AND PVM.IsActive = 1 
AND C.IsActive = 1 
AND X.IsDeleted = 0
AND X.CategoryId = (CASE WHEN ISNULL(@CategoryId, 0) <= 0 THEN X.CategoryId ELSE @CategoryId END)

AND (
    @Search IS NULL
    OR X.ProductName LIKE '%' + @Search + '%'
    OR C.CategoryName LIKE '%' + @Search + '%'
)

GROUP BY 
    X.Id, X.ProductName,
		x.ProductDescription,
    C.Id, C.CategoryName,
    PVM.Id, PVM.ProductId, PVM.SKU, PVM.Price,
    PI.ImagePath,
    PS.TotalAvailableStock,
	c.ParentCategoryId --add from VishalG

ORDER BY 
    X.ProductName,
    C.CategoryName;
end
else
begin
---------------------------------------
-- SORT COLUMN MAP
---------------------------------------

DECLARE @OrderBy NVARCHAR(100);

SET @OrderBy =
CASE @SortColumnIndex
 WHEN 0 THEN 'ISNULL(X.LastModifiedDate, X.CreatedDate)'
 WHEN 1 THEN 'X.ProductName'
 WHEN 2 THEN 'C.CategoryName'
 WHEN 3 THEN 'PV.Price'
 WHEN 4 THEN 'X.IsActive'
 ELSE 'ISNULL(X.LastModifiedDate, X.CreatedDate)'
END

IF @SortDirection NOT IN ('ASC','DESC')
 SET @SortDirection = 'DESC';

---------------------------------------
-- COUNTS
---------------------------------------


SELECT @Total = COUNT(*)
FROM Products
WHERE IsDeleted = 0;

SELECT @Filtered = COUNT(*)
FROM Products X
LEFT JOIN Category C ON C.Id = X.CategoryId
WHERE X.IsDeleted = 0
AND (
 @Search IS NULL
 OR X.ProductName LIKE '%' + @Search + '%'
 OR C.CategoryName LIKE '%' + @Search + '%'
);

SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords;

---------------------------------------
-- DATA
---------------------------------------

DECLARE @SQL NVARCHAR(MAX);

SET @SQL = '
SELECT
 ROW_NUMBER() OVER (ORDER BY ' + @OrderBy + ' ' + @SortDirection + ') + @Start AS SrNo,
 X.*,
 C.CategoryName,
 ISNULL(PV.Price, 0) AS Price,
 PV.SKU,
 PI.ImagePath

FROM Products X

LEFT JOIN Category C 
    ON C.Id = X.CategoryId

-- ✅ Price + SKU
OUTER APPLY (
    SELECT TOP 1 Price, SKU
    FROM ProductVariantMapping PV
    WHERE PV.ProductId = X.Id 
      AND PV.IsDeleted = 0
    ORDER BY PV.Id ASC
) PV

-- ✅ Primary Image (ONLY Product base)
OUTER APPLY (
    SELECT TOP 1 ImagePath
    FROM ProductImages PI
    WHERE PI.ProductId = X.Id
      AND PI.VariantId = 0   -- 🔥 Only base product image
      AND PI.IsDeleted = 0
      AND PI.IsActive = 1
    ORDER BY PI.IsPrimary DESC, PI.Id ASC
) PI

WHERE X.IsDeleted = 0
';

IF @Search IS NOT NULL
SET @SQL += '
AND (
 X.ProductName LIKE ''%'' + @Search + ''%''
 OR C.CategoryName LIKE ''%'' + @Search + ''%''
)
';

SET @SQL += '
ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
OFFSET @Start ROWS FETCH NEXT @Length ROWS ONLY
';

EXEC sp_executesql
@SQL,
N'@Search NVARCHAR(200), @Start INT, @Length INT',
@Search,@Start,@Length;

END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Product_Save]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_Product_Save]
(
    @Id INT = 0,
    @CategoryId INT = NULL,
    @ProductName NVARCHAR(250) = NULL,
    @ProductDescription NVARCHAR(MAX) = NULL,
    --@SKU NVARCHAR(250)= NULL,
	@Price DECIMAL(18,2) = NULL,
    @ProductImages NVARCHAR(MAX) = NULL,
	@ProductVariants NVARCHAR(MAX) = NULL,
    @IsActive BIT = 1,
    @Mode NVARCHAR(10),
    @OperatedBy INT,
    @response NVARCHAR(MAX) OUT
)
AS
BEGIN

SET NOCOUNT ON;

SET @response = 'E|Something went wrong|0';

  IF @Mode NOT IN ('SAVE','STATUS','DELETE')
  BEGIN
   SET @response = 'E|Invalid mode supplied.|0';
   RETURN;
  END

BEGIN TRY

	DECLARE @ProductId INT = 0;
	
	DECLARE @OldPrice DECIMAL(18,2);
	DECLARE @VariantId INT;
	DECLARE @NewPrice DECIMAL(18,2);

	-- VALIDATIONS FIRST
	IF @Mode NOT IN ('SAVE','STATUS','DELETE')
	BEGIN
		SET @response = 'E|Invalid mode supplied.|0';
		RETURN;
	END

	IF @Mode = 'SAVE'
	BEGIN
		IF ISNULL(@ProductName,'') = ''
		BEGIN
			SET @response = 'E|Product Name is required.|0';
			RETURN;
		END

		IF ISNULL(@CategoryId,0) <= 0
		BEGIN
			SET @response = 'E|Category is required.|0';
			RETURN;
		END

		--IF ISNULL(@Price,0) <= 0
		--BEGIN
		--	SET @response = 'E|Price is required.|0';
		--	RETURN;
		--END
				
	   -- Duplicate validation
	   IF EXISTS (
		SELECT 1 FROM Products
		WHERE ProductName = @ProductName
		  AND ISNULL(CategoryId,0) = ISNULL(@CategoryId,0)
		  AND IsDeleted = 0
		  AND (@Id = 0 OR Id <> @Id)
	   )
	   BEGIN
		SET @response = 'E|Product already exists under same category.|0';
		RETURN;
	   END

	END


	--------------------------------------------------
	-- SAVE PRODUCT
	--------------------------------------------------

	IF @Mode = 'SAVE'
	BEGIN
	
	IF @Id > 0
	BEGIN
	
		--------------------------------------------------
		-- UPDATE PRODUCT
		--------------------------------------------------

		UPDATE Products
			SET CategoryId = @CategoryId,
				ProductName = @ProductName,
				ProductDescription = @ProductDescription,
				IsActive = @IsActive,
				LastModifiedBy = @OperatedBy,
				LastModifiedDate = GETDATE()
		WHERE Id = @Id;

		SET @ProductId = @Id;
	END
	ELSE
	BEGIN

		--------------------------------------------------
		-- INSERT PRODUCT
		--------------------------------------------------

		INSERT INTO Products (CategoryId, ProductName, ProductDescription, IsActive, IsDeleted, CreatedBy, CreatedDate)
		VALUES (@CategoryId, @ProductName, @ProductDescription, @IsActive, 0, @OperatedBy, GETDATE());

		SET @ProductId = SCOPE_IDENTITY();

		END

	--------------------------------------------------
	-- PRODUCT IMAGES
	--------------------------------------------------

	IF TRIM(ISNULL(@ProductImages,'')) <> ''
	BEGIN

		DECLARE @Images TABLE
		(
			Id INT,
			ImagePath NVARCHAR(500),
			IsPrimary BIT,
			IsRemove BIT
		);

		-- Split rows by ||
		WITH ImageRows AS
		(
			SELECT value
			FROM STRING_SPLIT(@ProductImages,'~')
		),
		SplitColumns AS
		(
			SELECT 
				r.value,
				s.value AS columnValue,
				ROW_NUMBER() OVER (PARTITION BY r.value ORDER BY (SELECT 1)) rn
			FROM ImageRows r
			CROSS APPLY STRING_SPLIT(r.value,'|') s
		)
		INSERT INTO @Images
		SELECT
			MAX(CASE WHEN rn = 1 THEN TRY_CAST(columnValue AS INT) END),
			MAX(CASE WHEN rn = 2 THEN (CASE WHEN TRIM(ISNULL(columnValue, '')) = '-' THEN '' ELSE columnValue END) END),
			MAX(CASE WHEN rn = 3 THEN TRY_CAST(columnValue AS INT) END),
			MAX(CASE WHEN rn = 4 THEN TRY_CAST(columnValue AS INT) END)
		FROM SplitColumns
		GROUP BY value

		--------------------------------------------------
		-- DELETE IMAGES
		--------------------------------------------------

		DELETE ProductImages WHERE Id IN (SELECT Id FROM @Images WHERE IsRemove = 1) AND VariantId = 0;

		--UPDATE ProductImages
		--SET IsDeleted = 1, LastModifiedBy = @OperatedBy, LastModifiedDate = GETDATE()
		--WHERE Id IN (SELECT Id FROM @Images WHERE IsRemove = 1)

		--------------------------------------------------
		-- INSERT NEW IMAGES
		--------------------------------------------------

		INSERT INTO ProductImages (ProductId, VariantId, ImagePath, IsPrimary, IsActive, IsDeleted, CreatedBy, CreatedDate)
		SELECT @ProductId, 0, ImagePath, IsPrimary, 1, 0, @OperatedBy, GETDATE()
		FROM @Images I WHERE ISNULL(ImagePath, '') <> '' AND IsRemove = 0
		AND NOT EXISTS ( SELECT 1 FROM ProductImages PI WHERE PI.ProductId = @ProductId AND PI.Id = I.Id AND PI.VariantId = 0 );
		
		--------------------------------------------------
		-- UPDATE PRIMARY FLAG
		--------------------------------------------------

		UPDATE PI
		SET PI.ImagePath = (CASE WHEN ISNULL(I.ImagePath, '') <> '' THEN I.ImagePath ELSE PI.ImagePath END),
			PI.IsPrimary = I.IsPrimary,
			PI.LastModifiedBy = @OperatedBy,
			PI.LastModifiedDate = GETDATE()
		FROM ProductImages PI
		INNER JOIN @Images I ON PI.Id = I.Id
		WHERE I.Id > 0 AND I.IsRemove = 0 AND PI.VariantId = 0

		--------------------------------------------------
		-- ENSURE SINGLE PRIMARY
		--------------------------------------------------

		IF EXISTS (SELECT 1 FROM @Images WHERE IsPrimary = 1)
		BEGIN

			UPDATE ProductImages
			SET IsPrimary = 0
			WHERE ProductId = @Id AND IsDeleted = 0

			UPDATE PI
			SET IsPrimary = 1
			FROM ProductImages PI
			INNER JOIN @Images I ON PI.Id = I.Id
			WHERE I.IsPrimary = 1

		END

	END
	
	--DELETE FROM ProductImages WHERE ProductId = @ProductId AND VariantId > 0;

	IF TRIM(ISNULL(@ProductVariants,'')) <> ''
	BEGIN
		-- Variants Table
		DECLARE @Varients TABLE
		(
			SrNo INT,
			VariantId INT,
			AttributeValueId NVARCHAR(500),
			Price DECIMAL(18,2),
			SKU NVARCHAR(500),
			ImagePath NVARCHAR(500),
			IsRemove BIT
		);

		WITH VarientRows AS
		(
			SELECT TRIM(value) AS value
			FROM STRING_SPLIT(@ProductVariants,'~')
		),
		SplitColumns AS
		(
			SELECT 
				r.value,
				s.value AS columnValue,
				ROW_NUMBER() OVER (PARTITION BY r.value ORDER BY (SELECT 1)) rn
			FROM VarientRows r
			CROSS APPLY STRING_SPLIT(r.value,'|') s
		)
		INSERT INTO @Varients
		SELECT ROW_NUMBER() OVER (ORDER BY (SELECT NULL)),
			MAX(CASE WHEN rn = 1 THEN TRIM(columnValue) END),
			MAX(CASE WHEN rn = 2 THEN TRIM(columnValue) END), -- Attribute values
			MAX(CASE WHEN rn = 3 THEN TRY_CAST(columnValue AS DECIMAL(18,2)) END), -- Price
			MAX(CASE WHEN rn = 4 THEN columnValue END), -- SKU
			MAX(CASE WHEN rn = 5 THEN TRIM(ISNULL(columnValue, '')) END), -- Image
			MAX(CASE WHEN rn = 6 THEN columnValue END)
		FROM SplitColumns
		GROUP BY value;
		
		--------------------------------------------------
		-- 1️⃣ Update Product Variants
		--------------------------------------------------
		
		UPDATE PVM 
			SET PVM.Price = V.Price, PVM.SKU = V.SKU, PVM.IsActive = 1, PVM.IsDeleted = 0, LastModifiedBy = @OperatedBy, LastModifiedDate =  GETDATE()
		FROM ProductVariantMapping PVM
		INNER JOIN @Varients V ON V.VariantId = PVM.Id
		WHERE PVM.ProductId = @ProductId AND V.VariantId > 0;

		--------------------------------------------------
		-- 2 Insert Product Variants
		--------------------------------------------------

		DECLARE @CurrentSrNo INT;
		
		SELECT @CurrentSrNo = MIN(SrNo) FROM @Varients WHERE VariantId <= 0;

		WHILE @CurrentSrNo IS NOT NULL
		BEGIN

			INSERT INTO ProductVariantMapping (ProductId, Price, SKU, IsActive, IsDeleted, CreatedBy, CreatedDate )
			SELECT @ProductId, Price, SKU, 1, 0, @OperatedBy, GETDATE()
			FROM @Varients
			WHERE SrNo = @CurrentSrNo AND VariantId <= 0;

			UPDATE @Varients SET VariantId = SCOPE_IDENTITY() WHERE SrNo = @CurrentSrNo;
			SELECT @CurrentSrNo = MIN(SrNo) FROM @Varients WHERE VariantId <= 0;
			
		END
		
		SELECT @CurrentSrNo = MIN(SrNo) 
		FROM @Varients 
		WHERE VariantId > -1

		WHILE @CurrentSrNo IS NOT NULL
		BEGIN

			-- RESET VARIABLES (VERY IMPORTANT)
			SET @OldPrice = NULL
			SET @VariantId = NULL
			SET @NewPrice = NULL

			-- GET CURRENT ROW DATA
			SELECT @VariantId = VariantId, @NewPrice = Price
			FROM @Varients 
			WHERE SrNo = @CurrentSrNo

			---------------------------------------
			-- GET CURRENT ACTIVE PRICE
			---------------------------------------
			SELECT TOP 1 @OldPrice = Price
			FROM ProductPriceHistory
			WHERE ProductId = @ProductId AND VariantId = @VariantId AND EndDate IS NULL
			ORDER BY StartDate DESC

			---------------------------------------
			-- PRICE CHANGE LOGIC
			---------------------------------------
			IF (@VariantId > 0 AND (@OldPrice IS NULL OR @OldPrice <> @NewPrice))
			BEGIN
					-- CLOSE OLD PRICE
					UPDATE ProductPriceHistory
					SET EndDate = GETDATE()
					WHERE ProductId = @ProductId AND VariantId = @VariantId AND EndDate IS NULL;

					-- INSERT NEW PRICE
					INSERT INTO ProductPriceHistory ( ProductId, VariantId, Price, StartDate, CreatedBy )
					VALUES (@ProductId, @VariantId, @NewPrice, GETDATE(), @OperatedBy);
			END

			---------------------------------------
			-- MOVE TO NEXT ROW (CRITICAL)
			---------------------------------------
			SELECT @CurrentSrNo = MIN(SrNo)
			FROM @Varients
			WHERE SrNo > @CurrentSrNo

		END
		
		UPDATE PVM
			SET PVM.IsDeleted = 1, PVM.LastModifiedBy = @OperatedBy, PVM.LastModifiedDate = GETDATE()
		FROM ProductVariantMapping PVM
		LEFT JOIN @Varients V ON V.VariantId = PVM.Id
		WHERE PVM.ProductId = @ProductId AND V.VariantId IS NULL;

		--------------------------------------------------
		-- 3️⃣ Insert Attribute Mapping
		--------------------------------------------------
		
		DELETE FROM ProductVariantDetails WHERE VariantId IN ( SELECT VariantId FROM @Varients);

		INSERT INTO ProductVariantDetails (VariantId,AttributeId,AttributeValueId,IsActive,IsDeleted,CreatedBy,CreatedDate)
		SELECT v.VariantId,	LEFT(s.value,CHARINDEX('-',s.value)-1),	RIGHT(s.value,LEN(s.value)-CHARINDEX('-',s.value)),	1, 0, @OperatedBy, GETDATE()
		FROM @Varients v
		CROSS APPLY STRING_SPLIT(v.AttributeValueId,'=') s;
		--WHERE v.VariantId = 0;
				
		--------------------------------------------------
		-- INSERT NEW IMAGES
		--------------------------------------------------
		
		--DELETE FROM ProductImages WHERE ProductId = @ProductId AND VariantId > 0 AND VariantId NOT IN ( SELECT VariantId FROM @Varients WHERE ISNULL(ImagePath, '') <> '');

		DELETE FROM ProductImages WHERE ProductId = @ProductId AND VariantId > 0 AND VariantId IN ( SELECT VariantId FROM @Varients WHERE IsRemove = 1);

		INSERT INTO ProductImages (ProductId, VariantId, ImagePath, IsPrimary, IsActive, IsDeleted, CreatedBy, CreatedDate)
		SELECT @ProductId, V.VariantId, V.ImagePath, 0, 1, 0, @OperatedBy, GETDATE()
		FROM @Varients V WHERE ISNULL(V.ImagePath, '') <> ''
		AND NOT EXISTS ( SELECT 1 FROM ProductImages PI WHERE PI.ProductId = @ProductId AND PI.VariantId = V.VariantId );
		
		UPDATE PI SET PI.ImagePath = V.ImagePath, PI.IsActive = 1, PI.IsDeleted = 0, PI.LastModifiedBy = @OperatedBy, PI.LastModifiedDate = GETDATE()
		FROM ProductImages PI
		LEFT JOIN @Varients V ON V.VariantId = PI.VariantId
		WHERE ISNULL(V.ImagePath, '') <> '' AND PI.VariantId > 0
				
		--;WITH InvalidVariants AS (
		--	SELECT PVM.Id
		--	FROM ProductVariantMapping PVM
		--	WHERE PVM.ProductId = @ProductId
		--	AND PVM.IsDeleted = 0
		--	AND NOT EXISTS (
		--		SELECT 1 
		--		FROM ProductVariantDetails PVD
		--		WHERE PVD.VariantId = PVM.Id
		--		AND PVD.IsDeleted = 0
		--	)
		--)

		---- DELETE CHILD FIRST
		--DELETE FROM ProductImages WHERE VariantId IN (SELECT Id FROM InvalidVariants)

		--DELETE FROM ProductPriceHistory WHERE VariantId IN (SELECT Id FROM InvalidVariants)

		---- DELETE MAIN
		--DELETE FROM ProductVariantMapping WHERE Id IN (SELECT Id FROM InvalidVariants)

		SELECT PVM.Id
				INTO #InvalidVariants
				FROM ProductVariantMapping PVM
				WHERE PVM.ProductId = @ProductId
				AND PVM.IsDeleted = 0
				AND NOT EXISTS (
					SELECT 1 
					FROM ProductVariantDetails PVD
					WHERE PVD.VariantId = PVM.Id
					AND PVD.IsDeleted = 0
				)

				-- STEP 2: DELETE CHILD TABLES FIRST
				DELETE FROM ProductImages 
				WHERE VariantId IN (SELECT Id FROM #InvalidVariants)

				DELETE FROM ProductPriceHistory 
				WHERE VariantId IN (SELECT Id FROM #InvalidVariants)

				-- STEP 3: DELETE MAIN TABLE
				DELETE FROM ProductVariantMapping 
				WHERE Id IN (SELECT Id FROM #InvalidVariants)

				-- STEP 4: DROP TEMP TABLE
				DROP TABLE #InvalidVariants
		
	END
	
	IF TRIM(ISNULL(@ProductVariants,'')) = ''
	BEGIN
		
		-- RESET VARIABLES (VERY IMPORTANT)
			SET @OldPrice = NULL
			SET @VariantId = 0

		--------------------------------------------------
		-- CREATE DEFAULT VARIANT
		--------------------------------------------------

		SELECT @VariantId = PVM.Id
		FROM ProductVariantMapping PVM
		WHERE PVM.ProductId = @ProductId AND NOT EXISTS (
			SELECT 1 
			FROM ProductVariantDetails PVD
			WHERE PVD.VariantId = PVM.Id
		);
		
		IF ISNULL(@VariantId, 0) > 0
		BEGIN			
			UPDATE PVM 
				SET PVM.Price = @Price, PVM.SKU = LOWER(@ProductName), PVM.IsActive = 1, PVM.IsDeleted = 0, LastModifiedBy = @OperatedBy, LastModifiedDate =  GETDATE()
			FROM ProductVariantMapping PVM
			WHERE PVM.ProductId = @ProductId AND PVM.Id = @VariantId;
		END
		ELSE	
		BEGIN
			INSERT INTO ProductVariantMapping (ProductId, SKU, Price, StockQuantity, IsActive, IsDeleted, CreatedBy, CreatedDate)
			VALUES (@ProductId, LOWER(@ProductName), @Price, 0, 1, 0, @OperatedBy, GETDATE());

			SET @VariantId = SCOPE_IDENTITY();
		END

			---------------------------------------
			-- GET CURRENT ACTIVE PRICE
			---------------------------------------
			SELECT TOP 1 @OldPrice = Price
			FROM ProductPriceHistory
			WHERE ProductId = @ProductId AND VariantId = @VariantId AND EndDate IS NULL
			ORDER BY StartDate DESC

			---------------------------------------
			-- PRICE CHANGE LOGIC
			---------------------------------------
			IF (@VariantId > 0 AND (@OldPrice IS NULL OR @OldPrice <> @Price))
			BEGIN
					-- CLOSE OLD PRICE
					UPDATE ProductPriceHistory
					SET EndDate = GETDATE()
					WHERE ProductId = @ProductId AND VariantId = @VariantId AND EndDate IS NULL;

					-- INSERT NEW PRICE
					INSERT INTO ProductPriceHistory ( ProductId, VariantId, Price, StartDate, CreatedBy )
					VALUES (@ProductId, @VariantId, @Price, GETDATE(), @OperatedBy);
			END

	END

    --COMMIT TRANSACTION;

	SET @response = 'S|Record saved successfully|' + CAST(@ProductId AS NVARCHAR);

	RETURN;

END


 ----------------------------------------------------
 -- STATUS CHANGE
 ----------------------------------------------------
  IF @Mode = 'STATUS'
  BEGIN

   UPDATE Products
   SET IsActive = @IsActive,
       LastModifiedBy = @OperatedBy,
       LastModifiedDate = GETDATE()
   WHERE Id = @Id;

   SET @response = 'S|Status updated successfully|' + CAST(@Id AS NVARCHAR);
   RETURN;

  END

	 ----------------------------------------------------
	 -- DELETE (SAFE SOFT DELETE)
	 ----------------------------------------------------
	  IF @Mode = 'DELETE'
	  BEGIN

	   UPDATE Products
	   SET IsActive = 0,
		   IsDeleted = 1,
		   LastModifiedBy = @OperatedBy,
		   LastModifiedDate = GETDATE()
	   WHERE Id = @Id;

	    UPDATE ProductImages
	   SET IsActive = 0,
		   IsDeleted = 1,
		   LastModifiedBy = @OperatedBy,
		   LastModifiedDate = GETDATE()
	   WHERE ProductId = @Id;
	    UPDATE ProductVariantMapping
	   SET IsActive = 0,
		   IsDeleted = 1,
		   LastModifiedBy = @OperatedBy,
		   LastModifiedDate = GETDATE()
	   WHERE ProductId = @Id;
	   UPDATE ProductVariantDetails
	   SET IsActive = 0,
		   IsDeleted = 1,
		   LastModifiedBy = @OperatedBy,
		   LastModifiedDate = GETDATE()
	   WHERE VariantId in (select Id from ProductVariantMapping WHERE ProductId = @Id);
	   SET @response = 'S|Product deleted successfully|' + CAST(@Id AS NVARCHAR);
	   RETURN;

	  END

END TRY
BEGIN CATCH

	SET @response = 'E|' + ERROR_MESSAGE() + '|0';

END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_ProductStock_Adjust]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[SP_ProductStock_Adjust]
(
    @ProductId INT,
    @VariantIds NVARCHAR(MAX),
    @ChangeType NVARCHAR(10), -- ADD / SUB
    @Quantity INT,
    @ReferenceId INT = NULL,
    @ReferenceType NVARCHAR(50) = NULL,
    @Remarks NVARCHAR(500) = NULL,
    @OperatedBy INT,
    @response NVARCHAR(MAX) OUTPUT
)
AS
BEGIN

SET NOCOUNT ON

SET @response = 'E|Something went wrong|0'

BEGIN TRY

------------------------------------------------
-- VALIDATION
------------------------------------------------

IF @Quantity <= 0
BEGIN
    SET @response = 'E|Invalid quantity|0'
    RETURN
END

------------------------------------------------
-- SPLIT VARIANTS
------------------------------------------------

DECLARE @Variants TABLE (VariantId INT)

INSERT INTO @Variants
SELECT value
FROM STRING_SPLIT(@VariantIds, ',')

------------------------------------------------
-- CREATE STOCK RECORD IF NOT EXISTS
------------------------------------------------

INSERT INTO ProductStock
(ProductId, VariantId, AvailableStock, ReservedStock, LastModifiedBy, LastModifiedDate)
SELECT
@ProductId,
V.VariantId,
0,
0, @OperatedBy, GETDATE()
FROM @Variants V
WHERE NOT EXISTS
(
    SELECT 1
    FROM ProductStock PS
    WHERE PS.ProductId = @ProductId
    AND PS.VariantId = V.VariantId
)

------------------------------------------------
-- ADD STOCK
------------------------------------------------

IF @ChangeType = 'IN'
BEGIN

UPDATE PS
SET
AvailableStock = ISNULL(AvailableStock,0) + @Quantity,
       LastModifiedBy = @OperatedBy,
       LastModifiedDate = GETDATE()
FROM ProductStock PS
INNER JOIN @Variants V
ON PS.VariantId = V.VariantId
WHERE PS.ProductId = @ProductId

END

------------------------------------------------
-- SUBTRACT STOCK
------------------------------------------------

IF @ChangeType = 'OUT'
BEGIN

UPDATE PS
SET
AvailableStock =
CASE
WHEN ISNULL(AvailableStock,0) - @Quantity < 0
THEN 0
ELSE ISNULL(AvailableStock,0) - @Quantity
END,
       LastModifiedBy = @OperatedBy,
       LastModifiedDate = GETDATE()
FROM ProductStock PS
INNER JOIN @Variants V
ON PS.VariantId = V.VariantId
WHERE PS.ProductId = @ProductId

END

------------------------------------------------
-- STOCK HISTORY
------------------------------------------------

INSERT INTO ProductStockHistory
(
ProductId,
VariantId,
ChangeType,
Quantity,
ReferenceId,
ReferenceType,
Remarks,
LastModifiedBy,
LastModifiedDate
)
SELECT
@ProductId,
VariantId,
@ChangeType,
@Quantity,
@ReferenceId,
@ReferenceType,
@Remarks,
@OperatedBy,
GETDATE()
FROM @Variants

------------------------------------------------

SET @response = 'S|Stock adjusted successfully|1'

END TRY
BEGIN CATCH

SET @response = 'E|' + ERROR_MESSAGE() + '|0'

END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_ProductStock_Get]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ProductStock_Get]
(
    @ProductId INT = NULL,
    @Search NVARCHAR(200) = NULL,
    @Start INT = 0,
    @Length INT = 25,
    @SortColumnIndex INT = 0,
    @SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN
    SET NOCOUNT ON;

	-------------------------------------------------------
	-- SINGLE RECORD
	-------------------------------------------------------
	IF @ProductId IS NOT NULL 
	BEGIN

		SELECT 
			S.Id,
			S.ProductId,
			P.ProductName,
			V.Id VariantId,
			V.SKU,
			S.AvailableStock,
			S.ReservedStock,
			(S.AvailableStock + S.ReservedStock) AS TotalStock, S.LastModifiedBy, S.LastModifiedDate
		FROM ProductStock S
		LEFT JOIN Products P ON P.Id = S.ProductId
		LEFT JOIN ProductVariantMapping V ON V.Id = S.VariantId
		WHERE S.ProductId = (CASE WHEN @ProductId < 0 THEN S.ProductId ELSE @ProductId END);

		SELECT 
			ROW_NUMBER() OVER (ORDER BY H.LastModifiedDate DESC) AS SrNo,
			H.ChangeType,
			H.Quantity,
			H.ReferenceType,
			H.Remarks,
			H.LastModifiedDate
		FROM ProductStockHistory H
		WHERE H.ProductId = ABS(@ProductId)
		ORDER BY H.LastModifiedDate DESC;

		RETURN;

	END

	DECLARE @OrderBy NVARCHAR(100);

	SET @OrderBy =
		CASE @SortColumnIndex
			WHEN 0 THEN 'S.LastModifiedDate'
			WHEN 1 THEN 'P.ProductName'
			WHEN 2 THEN 'V.SKU'
			WHEN 3 THEN 'S.AvailableStock'
			WHEN 4 THEN 'S.ReservedStock'
			ELSE 'S.LastModifiedDate'
		END;

	IF @SortDirection NOT IN ('ASC','DESC')
		SET @SortDirection = 'DESC';

	DECLARE @Total INT, @Filtered INT;

	SELECT @Total = COUNT(*) 
	FROM ProductStock;

	SELECT @Filtered = COUNT(*)
	FROM ProductStock S
	LEFT JOIN Products P ON P.Id = S.ProductId
	LEFT JOIN ProductVariantMapping V ON V.Id = S.VariantId
	WHERE (
			@Search IS NULL
			OR P.ProductName LIKE '%' + @Search + '%'
			OR V.SKU LIKE '%' + @Search + '%'
		);

	SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords;

	DECLARE @SQL NVARCHAR(MAX);

	SET @SQL = '
	SELECT 
		ROW_NUMBER() OVER (ORDER BY ' + @OrderBy + ' ' + @SortDirection + ') + @Start AS SrNo,
		S.Id,
		S.ProductId,
		P.ProductName,
		V.Id AS VariantId,
		V.SKU,
		S.AvailableStock,
		S.ReservedStock,
		(S.AvailableStock + S.ReservedStock) AS TotalStock,
		P.IsActive
	FROM ProductStock S
	LEFT JOIN Products P ON P.Id = S.ProductId
	LEFT JOIN ProductVariantMapping V ON V.Id = S.VariantId
	';

	IF @Search IS NOT NULL
	SET @SQL += '
	AND (
		P.ProductName LIKE ''%'' + @Search + ''%'' OR
		V.SKU LIKE ''%'' + @Search + ''%''
	)';

	SET @SQL += '
	ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
	OFFSET @Start ROWS FETCH NEXT @Length ROWS ONLY';

	EXEC sp_executesql
		@SQL,
		N'@Search NVARCHAR(200), @Start INT, @Length INT',
		@Search, @Start, @Length;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_ReleaseExpiredReservations]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ReleaseExpiredReservations]
(
    @ProductId INT,
    @VariantId INT,
    @Quantity INT
)
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    DECLARE @Retry INT = 0, 
            @MaxRetry INT = 3;

RetryBlock:

    BEGIN TRY
        BEGIN TRAN;

        DECLARE @AvailableStock INT, @ReservedStock INT;

        /* =========================================================
           STEP 1: INITIAL STOCK CHECK (LOCK ROW)
        ========================================================= */
        SELECT @AvailableStock = AvailableStock, @ReservedStock = ReservedStock
        FROM ProductStock WITH (UPDLOCK, HOLDLOCK)
        WHERE VariantId = @VariantId;

        /* =========================================================
           STEP 2: RELEASE EXPIRED CARTS IF NEEDED (FIFO)
        ========================================================= */
		IF (@AvailableStock - @ReservedStock) < @Quantity
		BEGIN
			DECLARE @Needed INT = @Quantity - (@AvailableStock - @ReservedStock);

			-- Step 1: Drop temp table if exists
			IF OBJECT_ID('tempdb..#ToRelease') IS NOT NULL
				DROP TABLE #ToRelease;

			-- Step 2: Fill temp table
			SELECT 
				OE.CartId,
				OE.ProductId,
				OE.VariantId,
				OE.Quantity,
				OE.EffectiveDate,
				OE.RunningTotal,
				CASE 
					WHEN OE.RunningTotal <= @Needed THEN OE.Quantity
					WHEN OE.RunningTotal - OE.Quantity < @Needed THEN OE.Quantity
					ELSE 0
				END AS QtyToRelease,
				CASE 
					WHEN OE.RunningTotal <= @Needed THEN 1
					WHEN OE.RunningTotal - OE.Quantity < @Needed THEN 1
					ELSE 0
				END AS ShouldDeactivate
			INTO #ToRelease
			FROM (
				SELECT 
					C.Id AS CartId,
					C.ProductId,
					C.VariantId,
					C.Quantity,
					ISNULL(C.LastModifiedDate, C.CreatedDate) AS EffectiveDate,
					SUM(C.Quantity) OVER (
						ORDER BY ISNULL(C.LastModifiedDate, C.CreatedDate), C.Id
					) AS RunningTotal
				FROM CustomerCart C WITH (UPDLOCK, ROWLOCK)
				WHERE C.ProductId = @ProductId 
				  AND C.VariantId = @VariantId
				  AND C.IsActive = 1
				  AND ISNULL(C.LastModifiedDate, C.CreatedDate) < DATEADD(MINUTE, -15, GETDATE())
			) OE;

			------------------------------------------------------

			-- Step 3: Release Reserved Stock
			UPDATE PS
			SET PS.ReservedStock = CASE 
				WHEN PS.ReservedStock >= TR.QtyToRelease
					THEN PS.ReservedStock - TR.QtyToRelease
				ELSE 0
			END
			FROM ProductStock PS
			INNER JOIN #ToRelease TR
				ON PS.ProductId = TR.ProductId
			   AND PS.VariantId = TR.VariantId
			WHERE TR.QtyToRelease > 0;

			------------------------------------------------------

			-- Step 4: Deactivate Cart Rows
			UPDATE C
			SET C.IsActive = 0
			FROM CustomerCart C
			INNER JOIN #ToRelease TR 
				ON C.Id = TR.CartId
			WHERE TR.ShouldDeactivate = 1;

			------------------------------------------------------

			-- Step 5: Cleanup
			DROP TABLE #ToRelease;
		END

        /* =========================================================
           STEP 3: RE-CHECK STOCK
        ========================================================= */
        SELECT @AvailableStock = AvailableStock, @ReservedStock = ReservedStock
        FROM ProductStock WITH (UPDLOCK, HOLDLOCK)
        WHERE ProductId = @ProductId AND VariantId = @VariantId;

        IF (@AvailableStock - @ReservedStock) < @Quantity
        BEGIN
            ROLLBACK;
            RAISERROR('Insufficient stock available.', 16, 1);
            RETURN;
        END

        /* =========================================================
           STEP 4: FINAL RESERVATION
        ========================================================= */
        UPDATE ProductStock
        SET ReservedStock = ReservedStock + @Quantity
        WHERE ProductId = @ProductId AND VariantId = @VariantId;

        COMMIT;
    END TRY

    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK;

        /* --- Deadlock Retry --- */
        IF ERROR_NUMBER() = 1205 AND @Retry < @MaxRetry
        BEGIN
            SET @Retry += 1;
            WAITFOR DELAY '00:00:00.200';
            GOTO RetryBlock;
        END

        /* --- Raise Error --- */
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrorMessage, 16, 1);
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_RemoveFromCart]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_RemoveFromCart]
(
    @CustomerId INT,
    @ProductId INT,
    @VariantId INT,
    @Quantity INT = NULL  -- NULL = remove full cart
)
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    DECLARE @Retry INT = 0, 
            @MaxRetry INT = 3;

RetryBlock:

    BEGIN TRY
        BEGIN TRAN;

        DECLARE @CartId INT,
                @CartQty INT;

        /* =====================================================
           STEP 1: LOCK CART ROW
        ===================================================== */
        SELECT TOP 1
            @CartId = Id,
            @CartQty = Quantity
        FROM CustomerCart WITH (UPDLOCK, HOLDLOCK)
        WHERE CustomerId = @CustomerId
          AND ProductId = @ProductId AND VariantId = @VariantId
          AND IsActive = 1;

        IF @CartId IS NULL
        BEGIN
            ROLLBACK;
            RAISERROR('Cart item not found.', 16, 1);
            RETURN;
        END

        /* =====================================================
           STEP 2: DETERMINE REMOVE QUANTITY
        ===================================================== */
        DECLARE @RemoveQty INT;

        IF @Quantity IS NULL OR @Quantity >= @CartQty
            SET @RemoveQty = @CartQty;  -- full remove
        ELSE
            SET @RemoveQty = @Quantity; -- partial remove

        /* =====================================================
           STEP 3: RELEASE RESERVED STOCK
        ===================================================== */
        UPDATE ProductStock
        SET ReservedStock = CASE 
            WHEN ReservedStock >= @RemoveQty 
            THEN ReservedStock - @RemoveQty
            ELSE 0
        END
        WHERE ProductId = @ProductId AND VariantId = @VariantId;

        /* =====================================================
           STEP 4: UPDATE CART
        ===================================================== */
        IF @RemoveQty = @CartQty
        BEGIN
            -- Full removal → deactivate
            --UPDATE CustomerCart
            --SET IsActive = 0,
            --    LastModifiedDate = GETDATE()
            --WHERE Id = @CartId;
           
			DELETE CustomerCart WHERE Id = @CartId;
        END
        ELSE
        BEGIN
            -- Partial removal → reduce quantity
            UPDATE CustomerCart
            SET Quantity = Quantity - @RemoveQty,
                LastModifiedDate = GETDATE()
            WHERE Id = @CartId;
        END

        COMMIT;
    END TRY

    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK;

        IF ERROR_NUMBER() = 1205 AND @Retry < @MaxRetry
        BEGIN
            SET @Retry += 1;
            WAITFOR DELAY '00:00:00.200';
            GOTO RetryBlock;
        END

        DECLARE @ErrMsg NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrMsg, 16, 1);
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Reviews_Get]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Reviews_Get]
(
 @Id INT = NULL,
 @ProductID INT = NULL,
 @Search NVARCHAR(200) = NULL,
 @Start INT = 0,
 @Length INT = 25,
 @SortColumnIndex INT = 0,
 @SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN

SET NOCOUNT ON;

---------------------------------------
-- SINGLE RECORD
---------------------------------------

DECLARE @Total INT
DECLARE @Filtered INT

IF @Id >0
BEGIN

SELECT
R.Id,
R.ProductId,
R.UserId,
P.ProductName,
--U.UserName,
(c.FirstName + ' ' + c.LastName) as UserName,
R.Rating,
R.ReviewText,
R.IsApproved,
R.IsActive,
R.CreatedDate

FROM Reviews R
LEFT JOIN Products P ON R.ProductId = P.Id
LEFT JOIN Customer c ON R.UserId = c.Id
WHERE R.Id = @Id
AND R.IsDeleted = 0

RETURN

END

IF @Id = -1 AND @ProductId IS NOT NULL
BEGIN
SELECT @Total = COUNT(*)
FROM Reviews
WHERE IsDeleted = 0 AND (@ProductID = NULL or ProductId = @ProductID)

SELECT @Filtered = COUNT(*)
FROM Reviews R
LEFT JOIN Products P ON R.ProductId = P.Id
LEFT JOIN Customer c ON R.UserId = c.Id
WHERE R.IsDeleted = 0
AND (@ProductID = NULL or r.ProductId = @ProductID)

AND (
 @Search IS NULL
 OR P.ProductName LIKE '%' + @Search + '%'
 OR (c.FirstName+c.LastName) LIKE '%' + @Search + '%'
 OR R.ReviewText LIKE '%' + @Search + '%'
)
SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords
SELECT
R.Id,
R.ProductId,
R.UserId,
P.ProductName,
--U.UserName,
(c.FirstName + ' ' + c.LastName) as UserName,
R.Rating,
R.ReviewText,
R.IsApproved,
R.IsActive,
R.CreatedDate

FROM Reviews R
LEFT JOIN Products P ON R.ProductId = P.Id
LEFT JOIN Customer c ON R.UserId = c.Id
WHERE R.IsDeleted = 0 AND (@ProductID = NULL or R.ProductId = @ProductID)

RETURN

end

---------------------------------------
-- SORT COLUMN MAP
---------------------------------------

DECLARE @OrderBy NVARCHAR(100)

SET @OrderBy =
CASE @SortColumnIndex
 WHEN 0 THEN 'R.Id'
 WHEN 1 THEN 'R.Id'
 WHEN 2 THEN 'P.ProductName'
WHEN 3 THEN '(c.FirstName + '' '' + c.LastName)'
 WHEN 4 THEN 'R.Rating'
 WHEN 5 THEN 'R.ReviewText'
 WHEN 6 THEN 'R.IsApproved'
 ELSE 'R.Id'
END

IF @SortDirection NOT IN ('ASC','DESC')
SET @SortDirection = 'DESC'

---------------------------------------
-- COUNTS
---------------------------------------


SELECT @Total = COUNT(*)
FROM Reviews
WHERE IsDeleted = 0

SELECT @Filtered = COUNT(*)
FROM Reviews R
LEFT JOIN Products P ON R.ProductId = P.Id
LEFT JOIN Customer c ON R.UserId = c.Id
WHERE R.IsDeleted = 0
AND (
 @Search IS NULL
 OR P.ProductName LIKE '%' + @Search + '%'
 OR (c.FirstName+c.LastName) LIKE '%' + @Search + '%'
 OR R.ReviewText LIKE '%' + @Search + '%'
)

SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords

---------------------------------------
-- DATA
---------------------------------------

DECLARE @SQL NVARCHAR(MAX)

SET @SQL = '
SELECT
 ROW_NUMBER() OVER (ORDER BY ' + @OrderBy + ' ' + @SortDirection + ') + @Start AS SrNo,
 R.Id,
 P.ProductName,
 --U.UserName,
(c.FirstName + '' '' + c.LastName) as UserName,
 R.Rating,
 R.ReviewText,
 R.IsApproved,
 R.IsActive,
 R.CreatedDate

FROM Reviews R
LEFT JOIN Products P ON R.ProductId = P.Id
LEFT JOIN Customer c ON R.UserId = c.Id

WHERE R.IsDeleted = 0
'

IF @Search IS NOT NULL
SET @SQL += '
AND (
 P.ProductName LIKE ''%'' + @Search + ''%''
OR (c.FirstName + '' '' + c.LastName) LIKE ''%'' + @Search + ''%''
 OR R.ReviewText LIKE ''%'' + @Search + ''%''
)
'

SET @SQL += '
ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
OFFSET @Start ROWS FETCH NEXT @Length ROWS ONLY
'

EXEC sp_executesql
@SQL,
N'@Search NVARCHAR(200), @Start INT, @Length INT',
@Search,@Start,@Length

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Reviews_Save]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_Reviews_Save]
(
 @Id INT = 0,
 @ProductId INT = NULL,
 @UserId INT = NULL,
 @Rating INT = NULL,
 @ReviewText NVARCHAR(MAX) = NULL,
 @IsApproved BIT = 0,
 @IsActive BIT = 1,
 @Mode NVARCHAR(10),
 @OperatedBy INT,
 @response NVARCHAR(MAX) OUT
)
AS
BEGIN

SET NOCOUNT ON

SET @response = 'E|Something went wrong|0'

BEGIN TRY

------------------------------------------------
-- SAVE
------------------------------------------------

IF @Mode = 'SAVE'
BEGIN

IF @Id > 0
BEGIN

UPDATE Reviews
SET
ProductId = @ProductId,
UserId = @UserId,
Rating = @Rating,
ReviewText = @ReviewText,
IsApproved = @IsApproved,
IsActive = @IsActive,
LastModifiedBy = @OperatedBy,
LastModifiedDate = GETDATE()

WHERE Id = @Id

END
ELSE
BEGIN

INSERT INTO Reviews
(
ProductId,
UserId,
Rating,
ReviewText,
IsApproved,
IsActive,
IsDeleted,
CreatedBy
)

VALUES
(
@ProductId,
@UserId,
@Rating,
@ReviewText,
@IsApproved,
1,
0,
@OperatedBy
)

SET @Id = SCOPE_IDENTITY()

END

SET @response = 'S|Record saved successfully|' + CAST(@Id AS NVARCHAR)

RETURN

END

------------------------------------------------
-- DELETE
------------------------------------------------

IF @Mode = 'DELETE'
BEGIN

UPDATE Reviews
SET
IsDeleted = 1,
IsActive = 0,
LastModifiedBy = @OperatedBy,
LastModifiedDate = GETDATE()

WHERE Id = @Id

SET @response = 'S|Review deleted successfully|' + CAST(@Id AS NVARCHAR)

END

END TRY
BEGIN CATCH

SET @response = 'E|' + ERROR_MESSAGE() + '|0'

END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Roles_Get]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[SP_Roles_Get]
(
 @Id INT = NULL,
 @Search NVARCHAR(200) = NULL,
 @Start INT = 0,
 @Length INT = 25,
 @SortColumnIndex INT = 0,
 @SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN
 SET NOCOUNT ON;

	-- ============================================
    -- 🔹 IF ID IS PROVIDED → RETURN SINGLE RECORD
    -- ============================================
    IF @Id IS NOT NULL
    BEGIN
        SELECT 
            X.Id,
            X.RoleName,
            X.Description,
            X.IsActive,
            X.LastModifiedDate,
			(SELECT STUFF(( SELECT ',' + CAST(ActionId AS VARCHAR(10)) FROM dbo.RolePermissions WHERE RoleId = X.Id FOR XML PATH('') ),1,1,'')) AS SelectedMenu,
    (
        SELECT STUFF((
            SELECT ',' + A.Name
            FROM dbo.RolePermissions RP
            INNER JOIN dbo.Menus A ON RP.ActionId = A.Id
            WHERE RP.RoleId = X.Id AND A.IsActive = 1
            FOR XML PATH('')
        ),1,1,'')
    ) AS SelectedMenu_Names
        FROM Roles X
        WHERE X.Id = (CASE WHEN @Id < 0 THEN X.Id ELSE @Id END) AND X.IsDeleted = 0
		AND X.IsActive = (CASE WHEN @Id < 0 THEN 1 ELSE X.IsActive END) AND X.Id > 1;

        RETURN;
    END

    -- =============================
    -- Counts
    -- =============================
	 DECLARE @Total INT, @Filtered INT;

	 SELECT @Total = COUNT(*) FROM Roles WHERE IsDeleted = 0;

	 SELECT @Filtered = COUNT(*)
	 FROM Roles X WHERE X.IsDeleted = 0 AND (@Search IS NULL OR X.RoleName LIKE '%' + @Search + '%' OR X.Description LIKE '%' + @Search + '%');
   
	 SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords;

	
	-- =============================
    -- Data
    -- =============================
    DECLARE @SQL NVARCHAR(MAX)
	
	DECLARE @OrderBy NVARCHAR(100)

    -- Map column index to actual DB column
    SET @OrderBy = 
        CASE @SortColumnIndex
            WHEN 1 THEN 'X.CreatedDate'
            WHEN 2 THEN 'X.RoleName'
            WHEN 3 THEN 'X.SelectedMenu_Names'
            WHEN 4 THEN 'X.Description'
            WHEN 5 THEN 'X.IsActive'
            ELSE 'X.CreatedDate'
        END

    -- Force direction safe
    IF @SortDirection NOT IN ('ASC','DESC') SET @SortDirection = 'DESC'

    SET @SQL = '
    SELECT 
        ROW_NUMBER() OVER (ORDER BY ' + @OrderBy + ' ' + @SortDirection + ') + @Start AS SrNo,
        X.Id,
        X.RoleName,
    (
        SELECT STUFF((
            SELECT '','' + A.Name
            FROM dbo.RolePermissions RP
            INNER JOIN dbo.Menus A ON RP.ActionId = A.Id
            WHERE RP.RoleId = X.Id AND A.IsActive = 1
            FOR XML PATH('''')
        ),1,1,'''')
    ) AS SelectedMenu_Names,
        X.Description,
        X.IsActive,
        X.LastModifiedDate
    FROM Roles X
    WHERE X.IsDeleted = 0 AND X.Id > 1
    '

    IF @Search IS NOT NULL
        SET @SQL += '
        AND (
            X.RoleName LIKE ''%'' + @Search + ''%'' OR
            X.Description LIKE ''%'' + @Search + ''%''
        )'

    SET @SQL += ' ORDER BY ' + @OrderBy + ' ' + @SortDirection + ' OFFSET @Start ROWS FETCH NEXT @Length ROWS ONLY'

    EXEC sp_executesql @SQL, N'@Search NVARCHAR(200), @Start INT, @Length INT', @Search, @Start, @Length;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Roles_Save]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/* ============================================================
   Roles
============================================================ */

CREATE   PROCEDURE [dbo].[SP_Roles_Save]
(
 @Id INT = 0,
 @RoleName NVARCHAR(250) = NULL,
 @Description NVARCHAR(2000) = NULL,
 @SelectedMenu NVARCHAR(1000) = NULL,
 @IsActive BIT = 1,
 @IsDeleted BIT = 0,
 @Mode NVARCHAR(10),
 @OperatedBy INT,
 @response NVARCHAR(MAX) OUT
)
AS
BEGIN
 SET NOCOUNT ON;

 -- Default Error Response
 SET @response = 'E|Opps!... Something went wrong. Please contact system administrator|0';

 BEGIN TRY

  IF @Mode NOT IN ('SAVE','STATUS','DELETE')
  BEGIN
   SET @response = 'E|Invalid mode supplied.|0';
   RETURN;
  END

  IF @Mode = 'SAVE'
  BEGIN
  
   -- ============================
   -- Required Field Validation
   -- ============================
   IF ISNULL(@RoleName,'') = ''
   BEGIN
    SET @response = 'E|Role Name is required.|0';
    RETURN;
   END


   IF @Id > 0
    UPDATE Roles
    SET RoleName = @RoleName,
		Description = @Description,
		LastModifiedBy = @OperatedBy,
        LastModifiedDate = GETDATE()
    WHERE Id = @Id;
   ELSE
   BEGIN
    INSERT INTO Roles (RoleName, Description, CreatedBy)
    VALUES (@RoleName, @Description, @OperatedBy);

    SET @Id = SCOPE_IDENTITY();

   END

	DELETE [dbo].[RolePermissions] WHERE RoleId = @Id;

	IF @SelectedMenu IS NOT NULL
	BEGIN
		INSERT INTO [dbo].[RolePermissions](RoleId, ActionId, IsActive, IsDeleted, CreatedBy)
		SELECT @Id, Id, 1, 0, @OperatedBy
		FROM Menus
		WHERE Id IN ( SELECT CAST(value AS INT) FROM STRING_SPLIT(@SelectedMenu, ',') )
	END
		
  END
  ELSE IF @Mode = 'STATUS'
  BEGIN
   UPDATE Roles
   SET IsActive = @IsActive,
       IsDeleted = @IsDeleted,
       LastModifiedBy = @OperatedBy,
       LastModifiedDate = GETDATE()
   WHERE Id = @Id;
  END
  ELSE IF @Mode = 'DELETE'
  BEGIN
   UPDATE Roles
   SET IsActive = 0,
       IsDeleted = 1,
       LastModifiedBy = @OperatedBy,
       LastModifiedDate = GETDATE()
   WHERE Id = @Id;
   
	--DELETE [dbo].[RolePermissions] WHERE RoleId = @Id;

            SET @response = 'S|Record deleted successfully|' + CAST(@Id AS NVARCHAR);
            RETURN;
  END

  SET @response = 'S|Record saved successfully|' + CAST(@Id AS NVARCHAR);
  RETURN;

 END TRY
 BEGIN CATCH
  SET @response = 'E|' + ERROR_MESSAGE() + '|0';
  RETURN;
 END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SimilarProduct_Get]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_SimilarProduct_Get]
(
    @ProductId INT,
    @TopCount INT = 10
)
AS
BEGIN
    SET NOCOUNT ON;
DECLARE @CategoryId INT;

-- Get current product category
SELECT 
    @CategoryId = CategoryId
FROM Products
WHERE Id = @ProductId;

-- Fetch similar products with images
SELECT TOP (@TopCount)
    p.Id,
    p.ProductName,
    p.ProductDescription,
    p.CategoryId,
    p.CreatedDate,

    -- ✅ Comma-separated VariantIds
    STRING_AGG(CAST(pi.VariantId AS VARCHAR), ',') AS VariantIds,

    -- ✅ Main Image (VariantId = 0)
    MAX(CASE 
        WHEN pi.VariantId = 0 THEN pi.ImagePath 
        ELSE NULL 
    END) AS MainImage

FROM Products p

LEFT JOIN ProductImages pi 
    ON pi.ProductId = p.Id
    AND pi.IsActive = 1
    AND ISNULL(pi.IsDeleted, 0) = 0

WHERE 
    p.Id <> @ProductId
    AND p.IsActive = 1
    AND ISNULL(p.IsDeleted, 0) = 0
    AND p.CategoryId = @CategoryId

GROUP BY 
    p.Id,
    p.ProductName,
    p.ProductDescription,
    p.CategoryId,
    p.CreatedDate

ORDER BY 
    p.CreatedDate DESC;
END
--select * from ProductImages WHERE ProductId = 3
GO
/****** Object:  StoredProcedure [dbo].[SP_User_ForgotPassword_GenerateOTP]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_User_ForgotPassword_GenerateOTP]
    @Email NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @UserId INT;
    DECLARE @OTP INT;

    -- Check Email Exists
    SELECT @UserId = Id
    FROM Users
    WHERE Email = @Email;

    IF (@UserId IS NULL)
    BEGIN
        SELECT 0 AS Status, 'Email not found' AS Message;
        RETURN;
    END

    -- Mark all old OTPs as used
    UPDATE User_ForgetPassword
    SET IsUsed = 1
    WHERE Email = @Email
      AND IsUsed = 0;

    -- Generate 6-digit OTP
    SET @OTP = ABS(CHECKSUM(NEWID())) % 900000 + 100000;

    -- Insert new OTP with 10 min expiry
    INSERT INTO User_ForgetPassword
    (
        Email,
        OTP,
        CreatedAt,
        ExpiryDate,
        IsUsed
    )
    VALUES
    (
        
        @Email,
        @OTP,
        GETDATE(),
        DATEADD(MINUTE, 10, GETDATE()),
        0
    );

    -- Success response
    SELECT 
        1 AS Status,
        'OTP generated successfully' AS Message,
        @OTP AS OTP; -- remove in production
END


GO
/****** Object:  StoredProcedure [dbo].[SP_User_ForgotPassword_ResetPassword]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[SP_User_ForgotPassword_ResetPassword]
    @Email NVARCHAR(100),
    @NewPassword NVARCHAR(200)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @UserId INT;

    -- Check Email Exists
    SELECT @UserId = Id
    FROM Users
    WHERE Email = @Email;

    IF (@UserId IS NULL)
    BEGIN
        SELECT 0 AS Status, 'Email not found' AS Message;
        RETURN;
    END

    
    

    -- Update Password
    UPDATE Users
    SET Password = @NewPassword
    WHERE Id = @UserId;

    SELECT 1 AS Status, 'Password reset successfully' AS Message;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_User_ForgotPassword_VerifyOTP]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_User_ForgotPassword_VerifyOTP]
    @Email NVARCHAR(100),
    @OTP INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @DB_OTP INT;
    DECLARE @CreatedAt DATETIME;
    DECLARE @IsUsed BIT;

    -- Get latest OTP (last inserted)
    SELECT TOP 1 
        @DB_OTP = OTP,
        @CreatedAt = CreatedAt,
        @IsUsed = IsUsed
    FROM User_ForgetPassword
    WHERE Email = @Email
    ORDER BY CreatedAt DESC;

    -- 1. Check OTP exists
    IF (@DB_OTP IS NULL)
    BEGIN
        SELECT 0 AS Status, 'OTP expired or not found.' AS Message;
        RETURN;
    END

    -- 2. Check already used
    IF (@IsUsed = 1)
    BEGIN
        SELECT 0 AS Status, 'OTP already used.' AS Message;
        RETURN;
    END

    -- 3. Check expiry (10 minutes)
    IF (DATEDIFF(MINUTE, @CreatedAt, GETDATE()) > 10)
    BEGIN
        SELECT 0 AS Status, 'OTP expired (valid only 10 minutes).' AS Message;
        RETURN;
    END

    -- 4. Check OTP match
    IF (@DB_OTP <> @OTP)
    BEGIN
        SELECT 0 AS Status, 'Invalid OTP.' AS Message;
        RETURN;
    END

    -- 5. Mark OTP as used
    UPDATE User_ForgetPassword
    SET IsUsed = 1
    WHERE Email = @Email
      AND OTP = @OTP
      AND IsUsed = 0;

    SELECT 1 AS Status, 'OTP verified successfully' AS Message;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_UserMenuAccess]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_UserMenuAccess]
(
    @UserId BIGINT
)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @RoleId BIGINT;
    DECLARE @RoleName NVARCHAR(100);
    DECLARE @IsSuperAdmin BIT = 0;
    DECLARE @IsAdmin BIT = 0;

    -- Get Role Info
    SELECT 
        @RoleId = r.Id,
        @RoleName = r.RoleName
    FROM Users u
    INNER JOIN Roles r ON u.RoleId = r.Id
    WHERE u.Id = @UserId
      AND u.IsDeleted = 0
      AND r.IsDeleted = 0;

    -- SuperAdmin Check
    IF @RoleName = 'SuperAdmin'
        SET @IsSuperAdmin = 1;

    -- Admin Check
    IF @RoleName = 'Admin'
        SET @IsAdmin = 1;

    /* ============================================================
       1️⃣ FIRST RESULT SET
    ============================================================ */
    SELECT 
        @IsSuperAdmin AS IsSuperAdmin,
        @IsAdmin AS IsAdmin;


    /* ============================================================
       2️⃣ SECOND RESULT SET (UserMenuAccess)
    ============================================================ */

    IF @IsSuperAdmin = 1
    BEGIN
        -- SuperAdmin gets full access to all active menus
        SELECT
            @RoleId                    AS RoleId,
            @UserId                    AS UserId,
            a.Id                       AS MenuId,
            CAST(1 AS BIT)             AS IsCreate,
            CAST(1 AS BIT)             AS IsUpdate,
            CAST(1 AS BIT)             AS IsRead,
            CAST(1 AS BIT)             AS IsDelete,

            r.RoleName                 AS RoleName,
            (u.FirstName + ' ' + u.LastName) AS UserName,
            a.Name                     AS MenuName,
            a.Area                     AS Area,
            a.Controller               AS Controller,
            a.Url                      AS Url,
            ISNULL(a.ParentId,0)   AS ParentMenuId,
            pm.Name                    AS ParentMenuName,
            a.DisplayOrder             AS DisplayOrder

        FROM Menus a
        INNER JOIN Roles r ON r.Id = @RoleId
        INNER JOIN Users u ON u.Id = @UserId
        LEFT JOIN Menus pm ON pm.Id = a.ParentId
        WHERE a.IsDeleted = 0
          AND a.IsActive = 1
        ORDER BY a.DisplayOrder;
    END
    ELSE
    BEGIN
        -- Role-based permissions
        SELECT
            rp.RoleId                  AS RoleId,
            @UserId                    AS UserId,
            a.Id                       AS MenuId,
            r.RoleName                 AS RoleName,
            (u.FirstName + ' ' + u.LastName) AS UserName,
            a.Name                     AS MenuName,
            a.Area                     AS Area,
            a.Controller               AS Controller,
            a.Url                      AS Url,
            ISNULL(a.ParentId,0)   AS ParentMenuId,
            pm.Name                    AS ParentMenuName,
            a.DisplayOrder             AS DisplayOrder

        FROM RolePermissions rp
        INNER JOIN Menus a ON rp.ActionId = a.Id
        INNER JOIN Roles r ON rp.RoleId = r.Id
        INNER JOIN Users u ON u.RoleId = r.Id
        LEFT JOIN Menus pm ON pm.Id = a.ParentId
        WHERE u.Id = @UserId
          AND rp.IsDeleted = 0
          AND rp.IsActive = 1
          AND a.IsDeleted = 0
          AND a.IsActive = 1
        ORDER BY a.DisplayOrder;
    END

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Users_Get]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[SP_Users_Get]
(
 @Id INT = NULL,
 @Search NVARCHAR(200) = NULL,
 @Start INT = 0,
 @Length INT = 25,
 @SortColumnIndex INT = 0,
 @SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN
 SET NOCOUNT ON;

	-- ============================================
    -- 🔹 IF ID IS PROVIDED → RETURN SINGLE RECORD
    -- ============================================
    IF @Id IS NOT NULL
    BEGIN
        SELECT 
            X.Id,
            X.RoleId,
            R.RoleName,
            X.FirstName,
            X.LastName,
            X.UserName,
            X.IsActive,
            X.LastModifiedDate
        FROM Users X
        LEFT JOIN Roles R ON R.Id = X.RoleId
        WHERE X.Id = (CASE WHEN @Id < 0 THEN X.Id ELSE @Id END) AND X.IsDeleted = 0 AND X.Id > 1
		AND X.IsActive = (CASE WHEN @Id < 0 THEN 1 ELSE X.IsActive END) ;

        RETURN;
    END

 DECLARE @OrderBy NVARCHAR(100)

    -- Map column index to actual DB column
    SET @OrderBy = 
        CASE @SortColumnIndex
            WHEN 0 THEN 'X.Id'
            WHEN 1 THEN 'X.UserName'
            WHEN 2 THEN 'X.FirstName'     -- FullName
            WHEN 3 THEN 'R.RoleName'
            WHEN 4 THEN 'X.IsActive'
            ELSE 'X.Id'
        END

    -- Force direction safe
    IF @SortDirection NOT IN ('ASC','DESC')
        SET @SortDirection = 'DESC'

    -- =============================
    -- Counts
    -- =============================
	 DECLARE @Total INT, @Filtered INT;

	 SELECT @Total = COUNT(*) FROM Users WHERE IsDeleted = 0 AND Id > 1;

	 SELECT @Filtered = COUNT(*)
	 FROM Users X WHERE X.IsDeleted = 0 AND Id > 1 AND (@Search IS NULL OR X.UserName LIKE '%' + @Search + '%' OR X.FirstName LIKE '%' + @Search + '%' OR X.LastName LIKE '%' + @Search + '%');
   
	 SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords;

	
	-- =============================
    -- Data
    -- =============================
    DECLARE @SQL NVARCHAR(MAX)

    SET @SQL = '
    SELECT 
        ROW_NUMBER() OVER (ORDER BY ' + @OrderBy + ' ' + @SortDirection + ') + @Start AS SrNo,
        X.Id,
        X.RoleId,
        R.RoleName,
        X.FirstName,
        X.LastName,
        X.UserName,
        X.IsActive,
        X.LastModifiedDate
    FROM Users X
    LEFT JOIN Roles R ON R.Id = X.RoleId
    WHERE X.IsDeleted = 0 AND X.Id > 1
    '

    IF @Search IS NOT NULL
        SET @SQL += '
        AND (
            X.UserName LIKE ''%'' + @Search + ''%'' OR
            X.FirstName LIKE ''%'' + @Search + ''%'' OR
            X.LastName LIKE ''%'' + @Search + ''%''
        )'

    SET @SQL += '
    ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
    OFFSET @Start ROWS FETCH NEXT @Length ROWS ONLY'

    EXEC sp_executesql
        @SQL,
        N'@Search NVARCHAR(200), @Start INT, @Length INT',
        @Search, @Start, @Length;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Users_Save]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/* ============================================================
   Users
============================================================ */

CREATE   PROCEDURE [dbo].[SP_Users_Save]
(
 @Id INT = 0,
 @RoleId INT = 0,
 @UserName NVARCHAR(250) = NULL,
 @Password NVARCHAR(500) = NULL,
 @FirstName NVARCHAR(250) = NULL,
 @LastName NVARCHAR(250) = NULL,
  @Email NVARCHAR(150) = NULL,
 @IsActive BIT = 1,
 @IsDeleted BIT = 0,
 @Mode NVARCHAR(10),
 @OperatedBy INT,
 @response NVARCHAR(MAX) OUT
)
AS
BEGIN
 SET NOCOUNT ON;

 -- Default Error Response
 SET @response = 'E|Opps!... Something went wrong. Please contact system administrator|0';

 BEGIN TRY

  IF @Mode NOT IN ('SAVE','STATUS','DELETE')
  BEGIN
   SET @response = 'E|Invalid mode supplied.|0';
   RETURN;
  END

  IF @Mode = 'SAVE'
  BEGIN
  
   -- ============================
   -- Required Field Validation
   -- ============================
   IF ISNULL(@FirstName,'') = ''
   BEGIN
    SET @response = 'E|First Name is required.|0';
    RETURN;
   END

   IF ISNULL(@LastName,'') = ''
   BEGIN
    SET @response = 'E|Last Name is required.|0';
    RETURN;
   END

   IF ISNULL(@UserName,'') = ''
   BEGIN
    SET @response = 'E|User Name is required.|0';
    RETURN;
   END

   IF ISNULL(@RoleId,0) = 0
   BEGIN
    SET @response = 'E|Role is required.|0';
    RETURN;
   END

   -- ============================
   -- Password Rule
   -- ============================
   IF @Id = 0 AND ISNULL(@Password,'') = ''
   BEGIN
    SET @response = 'E|Password is required for new user.|0';
    RETURN;
   END

   -- ============================
   -- Duplicate Validation
   -- ============================
   IF EXISTS (
        SELECT 1
        FROM Users
        WHERE UserName = @UserName
          AND IsDeleted = 0
          AND (@Id = 0 OR Id <> @Id) AND Id > 1
      )
   BEGIN
    SET @response = 'E|User Name already exists.|0';
    RETURN;
   END

   IF @Id > 0
    UPDATE Users
    SET RoleId = @RoleId,
		 UserName = @UserName,
		 Password = (CASE WHEN ISNULL(@Password, '') != '' THEN @Password ELSE Password END),
		 FirstName = @FirstName,
		 Email=@Email,
		 LastName = @LastName,
		 IsActive = @IsActive,
		 LastModifiedBy = @OperatedBy,
        LastModifiedDate = GETDATE()
    WHERE Id = @Id AND Id > 1;
   ELSE
   BEGIN
    INSERT INTO Users (FirstName, LastName, UserName, [Password], RoleId, IsActive, IsDeleted, CreatedBy, CreatedDate,Email)
    VALUES (@FirstName, @LastName, @UserName, @Password, @RoleId, 1, 0, @OperatedBy, GETDATE(),@Email);

    SET @Id = SCOPE_IDENTITY();
   END
  END
  ELSE IF @Mode = 'STATUS'
  BEGIN
   UPDATE Users
   SET IsActive = @IsActive,
       IsDeleted = @IsDeleted,
       LastModifiedBy = @OperatedBy,
       LastModifiedDate = GETDATE()
   WHERE Id = @Id AND Id > 1;
  END
  ELSE IF @Mode = 'DELETE'
  BEGIN
   UPDATE Users
   SET IsActive = 0,
       IsDeleted = 1,
       LastModifiedBy = @OperatedBy,
       LastModifiedDate = GETDATE()
   WHERE Id = @Id AND Id > 1;
   
            SET @response = 'S|Record deleted successfully|' + CAST(@Id AS NVARCHAR);
            RETURN;
  END

  SET @response = 'S|Record saved successfully|' + CAST(@Id AS NVARCHAR);
  RETURN;

 END TRY
 BEGIN CATCH
  SET @response = 'E|' + ERROR_MESSAGE() + '|0';
  RETURN;
 END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Variant_Combo]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_Variant_Combo]

AS
BEGIN
	Select Id , ((select ProductName from Products where Id = ProductId) +'(' + SKU  + ')')Product_Name , Price from ProductVariantMapping WHERE IsDeleted = 0
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Wishlist_List]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Wishlist_List]
(
    @CustomerId INT
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        WC.Id,
        WC.CustomerId,
        WC.ProductId,
        WC.VariantId,
        WC.CreatedDate
    FROM WishlistCustomer WC WITH(NOLOCK)
    WHERE WC.CustomerId = @CustomerId
      AND WC.IsDeleted = 0
      AND WC.IsActive = 1
    ORDER BY WC.CreatedDate DESC;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Wishlist_Save]    Script Date: 02-06-2026 12:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Wishlist_Save]
(
    @CustomerId INT,
    @ProductId INT,
    @VariantId INT = NULL,
    @Operated_By INT,
    @Action VARCHAR(20),
    @Response VARCHAR(100) OUTPUT
)
AS
BEGIN
    SET NOCOUNT ON;

    SET @Response = 'E|Contact system administrator|0';

    IF(@Action = 'INSERT')
    BEGIN
        IF EXISTS
        (
            SELECT 1
            FROM WishlistCustomer WITH(NOLOCK)
            WHERE CustomerId = @CustomerId
            AND ProductId = @ProductId
            AND ISNULL(VariantId,0) = ISNULL(@VariantId,0)
            AND IsDeleted = 0
        )
        BEGIN
            SET @Response = 'E|Product already exists in wishlist|0';
            RETURN;
        END

        INSERT INTO WishlistCustomer
        (
            CustomerId,
            ProductId,
            VariantId,
            IsActive,
            IsDeleted,
            CreatedBy,
            CreatedDate
        )
        VALUES
        (
            @CustomerId,
            @ProductId,
            @VariantId,
            1,
            0,
            @Operated_By,
            GETDATE()
        );

        SET @Response = 'S|Product added to wishlist successfully|0';
    END

    ELSE IF(@Action = 'REMOVE')
    BEGIN
        UPDATE WishlistCustomer
        SET
            IsDeleted = 1,
            IsActive = 0,
            LastModifiedBy = @Operated_By,
            LastModifiedDate = GETDATE()
        WHERE CustomerId = @CustomerId
        AND ProductId = @ProductId
        AND ISNULL(VariantId,0) = ISNULL(@VariantId,0)
        AND IsDeleted = 0;

        SET @Response = 'S|Product removed from wishlist successfully|0';
    END
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "X"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 286
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C"
            Begin Extent = 
               Top = 7
               Left = 334
               Bottom = 170
               Right = 564
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PVM"
            Begin Extent = 
               Top = 7
               Left = 612
               Bottom = 170
               Right = 842
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PVD"
            Begin Extent = 
               Top = 7
               Left = 890
               Bottom = 170
               Right = 1120
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "A"
            Begin Extent = 
               Top = 175
               Left = 48
               Bottom = 338
               Right = 278
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AV"
            Begin Extent = 
               Top = 175
               Left = 326
               Bottom = 338
               Right = 556
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PI"
            Begin Extent = 
               Top = 175
               Left = 604
               Bottom = 338
               Right = 834
            End
            DisplayFlags = 280
            TopColumn = 0
         E' , @level0type=N'SCHEMA',@level0name=N'padhyaso_admin', @level1type=N'VIEW',@level1name=N'VW_Products'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'nd
         Begin Table = "PS"
            Begin Extent = 
               Top = 175
               Left = 882
               Bottom = 294
               Right = 1125
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'padhyaso_admin', @level1type=N'VIEW',@level1name=N'VW_Products'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'padhyaso_admin', @level1type=N'VIEW',@level1name=N'VW_Products'
GO
