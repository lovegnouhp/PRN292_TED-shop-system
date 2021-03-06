USE [master]
GO
/****** Object:  Database [PRN292_TED_SHOP]    Script Date: 07/25/2021 17:21:19 ******/
CREATE DATABASE [PRN292_TED_SHOP] ON  PRIMARY 

USE [PRN292_TED_SHOP]

CREATE TABLE [dbo].[Account](
	[Username] [varchar](30) NOT NULL,
	[Password] [varchar](30) NULL,
	[Role] [nvarchar](20) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Account] ([Username], [Password], [Role]) VALUES (N'customer1', N'123', N'customer')
INSERT [dbo].[Account] ([Username], [Password], [Role]) VALUES (N'customer2', N'123', N'customer')
INSERT [dbo].[Account] ([Username], [Password], [Role]) VALUES (N'customer3', N'123', N'customer')
INSERT [dbo].[Account] ([Username], [Password], [Role]) VALUES (N'customer4', N'123', N'customer')
INSERT [dbo].[Account] ([Username], [Password], [Role]) VALUES (N'customer5', N'123', N'customer')
INSERT [dbo].[Account] ([Username], [Password], [Role]) VALUES (N'manager', N'123', N'manager')
INSERT [dbo].[Account] ([Username], [Password], [Role]) VALUES (N'staff', N'123', N'staff')
INSERT [dbo].[Account] ([Username], [Password], [Role]) VALUES (N'staff1', N'123', N'staff')
INSERT [dbo].[Account] ([Username], [Password], [Role]) VALUES (N'staff2', N'123', N'staff')
INSERT [dbo].[Account] ([Username], [Password], [Role]) VALUES (N'trinh', N'123', N'manager')
/****** Object:  Table [dbo].[ProductType]    Script Date: 07/25/2021 17:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductType](
	[ProductTypeID] [uniqueidentifier] NOT NULL,
	[Type_name] [varchar](255) NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[ProductTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ProductType] ([ProductTypeID], [Type_name]) VALUES (N'b8db072c-371c-4ca2-a7d6-122b5c3b0338', N'kem duong da')
INSERT [dbo].[ProductType] ([ProductTypeID], [Type_name]) VALUES (N'8ec445b9-f98d-45e1-bdf7-15dfcace941b', N'Sunscreens')
INSERT [dbo].[ProductType] ([ProductTypeID], [Type_name]) VALUES (N'77cf6b04-c447-4a43-90ea-32f5200926ba', N'Facial Cleansers')
INSERT [dbo].[ProductType] ([ProductTypeID], [Type_name]) VALUES (N'faa68f34-6134-4599-83af-3aa3163174b8', N'Lip Care')
INSERT [dbo].[ProductType] ([ProductTypeID], [Type_name]) VALUES (N'f83bc2a0-c299-4cdf-9185-4d9c8864b9f8', N'Facial Toners')
INSERT [dbo].[ProductType] ([ProductTypeID], [Type_name]) VALUES (N'b7fdc303-f447-4d98-be64-4ee77a8e62d4', N'Anti-Aging Creams')
INSERT [dbo].[ProductType] ([ProductTypeID], [Type_name]) VALUES (N'c9d09720-830b-4525-b110-534b0351415b', N'Acne Products')
INSERT [dbo].[ProductType] ([ProductTypeID], [Type_name]) VALUES (N'9ceaa494-22d9-4acc-9cba-5429b98dc551', N'Body Care')
INSERT [dbo].[ProductType] ([ProductTypeID], [Type_name]) VALUES (N'efd5747b-be3b-4aac-8a00-59863434e2dc', N'Facial Exfoliators')
INSERT [dbo].[ProductType] ([ProductTypeID], [Type_name]) VALUES (N'6721c963-df6f-417f-9e63-6f83e781d850', N'Skin Care Sets')
INSERT [dbo].[ProductType] ([ProductTypeID], [Type_name]) VALUES (N'7170dfbb-7d4c-443f-bad8-a48fc22cedbe', N'Corrective Serums')
INSERT [dbo].[ProductType] ([ProductTypeID], [Type_name]) VALUES (N'4d815354-8e8e-4b59-9b37-b552cff02bfb', N'Eye Care')
INSERT [dbo].[ProductType] ([ProductTypeID], [Type_name]) VALUES (N'34851908-faec-4f3f-9c9f-b595d67ea45c', N'Facial Masks')
INSERT [dbo].[ProductType] ([ProductTypeID], [Type_name]) VALUES (N'72b43268-2553-4246-b2ce-cb8debf9c9e1', N'Moisturizers')
INSERT [dbo].[ProductType] ([ProductTypeID], [Type_name]) VALUES (N'525a4197-10f5-4be5-9493-d16a3143e816', N'Antioxidants')
INSERT [dbo].[ProductType] ([ProductTypeID], [Type_name]) VALUES (N'7cb6ec58-dd17-4cc0-9e47-d50fc5fb96bc', N'Retinol Creams')
/****** Object:  Table [dbo].[Product]    Script Date: 07/25/2021 17:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [uniqueidentifier] NOT NULL,
	[ProductTypeID] [uniqueidentifier] NULL,
	[Produce_country] [varchar](50) NULL,
	[Name] [varchar](60) NULL,
	[Description] [varchar](3000) NULL,
	[User_guide] [varchar](3000) NULL,
	[Price] [float] NULL,
	[Sell_price] [float] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'b976fe54-5fad-4f43-98ed-008b1efa5861', N'7170dfbb-7d4c-443f-bad8-a48fc22cedbe', N'United States', N'ANTIOXIDANT LIP REPAIR', N'Helps attract and retain water to rejuvenate, reshape and replenish lip tissue
For relief of lip dryness from drying prescription therapies such as oral isotretinoins
Alleviates dryness and tightness', N'Daily lip treatment (use light application and follow with sunscreen)', 30, 40, 28)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'b1a0bd18-0d5d-43b8-9f85-039fc6f1ae84', N'8ec445b9-f98d-45e1-bdf7-15dfcace941b', N'United States', N'HYDRATING B5 GEL', N'Hydrating B5 Gel replenishes nutrients the skin needs to feel smooth and appear younger. This oil free moisturizer combines vitamin B5 with hyaluronic acid, the body’s natural hydrator, to help bind moisture to the skin. It can be used alone or with a daily moisturizer to provide extra hydration, and is an ideal moisturizer for acne prone skin.', N'Using fingertips, apply 2-3 drops to the entire face, neck, and chest. Avoid the eye area. If using in the morning, apply after a SkinCeuticals vitamin C antioxidant serum and before a SkinCeuticals sunscreen. If using with a retinol at night, apply after retinol application.
', 70, 83, 18)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'85e8671e-8e55-4598-9f25-05389822b222', N'6721c963-df6f-417f-9e63-6f83e781d850', N'United States', N'EQUALIZING TONER', N'Features mixed hydroxy acids and calming botanicals to help regulate the pH of the skin
Alcohol-, dye-, fragrance-, and gluten-free
Ideal complement to aesthetic procedures and at-home cosmeceutical use', N'• Twice daily after using a SkinCeuticals cleanser, pour a small amount of this pH balancing toner onto a cotton ball and smooth over face, neck and chest.

• If using in the morning, follow with a SkinCeuticals vitamin C serum and sunscreen.

• If using in the evening, follow with a SkinCeuticals corrective product or moisturizer.', 20, 34, 18)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'57331f28-8ab2-48a8-ab0d-1f1c42339514', N'c9d09720-830b-4525-b110-534b0351415b', N'United States', N'GENTLE CLEANSER', N'Gentle Cleanser is a creamy, mild cleanser formulated with an emollient-rich surfactant and 3% concentration of key ingredients combining allantoin, glycerin, and orange oil to soften and restore skin’s surface. This non-foaming, gentle skin cleanser efficiently removes impurities and long-wear face and eye makeup without any traces of residue. Skin is left feeling soft, moisturized, and primed for in-office treatments and at-home cosmeceutical use.', N'Gentle Cleanser is a creamy, mild cleanser formulated with an emollient-rich surfactant and 3% concentration of key ingredients combining allantoin, glycerin, and orange oil to soften and restore skin’s surface. This non-foaming, gentle skin cleanser efficiently removes impurities and long-wear face and eye makeup without any traces of residue. Skin is left feeling soft, moisturized, and primed for in-office treatments and at-home cosmeceutical use.', 25, 35, 60)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'3a566364-68a0-4f7a-b3eb-24ba0f2d40c7', N'525a4197-10f5-4be5-9493-d16a3143e816', N'United States', N'ANTI-AGING SKIN SYSTEM', N'C E FERULIC® (30ml) Combination antioxidant treatment delivers advanced environment protection by neutralizing free radicals that cause the appearance of accelerated skin aging. Proven to visibly improve the look of wrinkles and skin''s firmness.

A.G.E. INTERRUPTER (50ml) Multi-faceted treatment specifically formulated to improve the creping, thinning appearance of mature skin. Proven to significantly improve skin''s elasticity and reduce the appearance of wrinkles by 20%.

RESVERATROL B E (30ml) Antioxidant night concentrate helps boosts skin’s own defense system to help improve the appearance of accumulated damage. Proven to statistically improve radiance.', N'In the morning, after cleansing and toning, apply 4-5 drops of C E Ferulic to face, neck, and chest. Avoid contact with eyes. Allow to absorb before applying A.G.E. Interrupter.

In the evening, after cleansing and toning apply 1-2 pumps of Resveratrol B E to a dry face. Allow to absorb before applying A.G.E. Interrupter.

Antioxidant product color naturally evolves over time due to high concentrations of active ingredients, but formula remains effective.', 300, 345, 10)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'abf67f5c-f304-408c-abab-2b7570a0eaa6', N'efd5747b-be3b-4aac-8a00-59863434e2dc', N'United States', N'CLARIFYING CLAY MASK FOR ACNE PRONE SKIN', N'A hydroxy acid blend gently exfoliates dead skin cells
Natural earth clays, kaolin and bentonite, decongest pores, lift impurities, and help remove excess oils
Aloe and chamomile calm and soothe the skin', N'Apply Clarifying Clay Mask on clean face. Leave on for 10-15 minutes. (This mask will not dry hard.) Rinse with warm water and pat dry. (For optimal results use once a week to help remove buildup of exfoliated skin.)', 45, 59, 18)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'a2670d86-b936-4454-ad7a-2fb3cc0708c9', N'7cb6ec58-dd17-4cc0-9e47-d50fc5fb96bc', N'Campuchia', N'chao buoi sang', N'khong co gi ca', N'hehe', 1111, 2222, -1)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'7f3e8891-48ab-46e5-8229-34fee3e129db', N'c9d09720-830b-4525-b110-534b0351415b', N'United States', N'REPLENISHING CLEANSER', N'Replenishing Cleanser is a face wash for combination skin formulated with a rich amino acid based surfactant system and a 15% concentration of key ingredients combining ceramides, panthenol, glycerin, and essential oils to deliver deep facial cleansing while maintaining essential moisture. This creamy face wash lathers into a rich foam to remove dirt, debris, impurities, and long-wear makeup without stripping natural oils. Replenishing Cleanser rinses clear of residue while locking in hydration and priming skin for at-home cosmeceutical use.', N'Twice daily, gently massage a small amount of this creamy face wash onto a wet face and neck using a light circular motion. Rinse thoroughly with warm water and pat dry. If using in the morning, follow with a SkinCeuticals vitamin C serum and sunscreen. If using in the evening, follow with a SkinCeuticals corrective product or moisturizer.', 25, 35, 25)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'e2ffedd5-bfc1-4fa7-9d7d-3db098ab57cc', N'faa68f34-6134-4599-83af-3aa3163174b8', N'United States', N'A.G.E. INTERRUPTER', N'A.G.E. Interrupter is an advanced wrinkle treatment that fights the visible signs of aging caused by advanced glycation end-products (A.G.E.), a major factor of the natural aging process. This anti-aging cream is formulated with an unprecedented 30% concentration of proxylane™, 4% blueberry extract, and 0.2% phytosphingosine (pronounced fi''to-sfing''go-sen) to improve the appearance of wrinkling and restore the loss of firmness caused by the glycation process.', N'Once or twice daily, massage a thin, even layer onto the entire face, neck, and chest. If using in the morning, apply after a SkinCeuticals vitamin C antioxidant serum and before a SkinCeuticals sunscreen. If using with a retinol at night, apply after retinol application.', 150, 162, 50)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'72dfbd06-17ad-47d3-b6a6-3e6ad7ce6236', N'77cf6b04-c447-4a43-90ea-32f5200926ba', N'United States', N'FACE CREAM', N'Specifically formulated to combat the visible signs of aging and moisture loss in mature skin. This light, rehabilitative cream provides powerful firming benefits and replenishes moisture with emollients', N'Once or twice daily, apply Face Cream to the entire face, neck, and chest.', 130, 142, 50)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'fe980203-58c8-4fca-9a5d-4ecf33b8123a', N'c9d09720-830b-4525-b110-534b0351415b', N'United States', N'SOOTHING CLEANSER', N'Soothing Cleanser is a potent cleansing foam formulated with a rich amilite surfactant and a 22% concentration combining sorbitol, glycerin, orchid extract, and cucumber extract to gently remove impurities while soothing and comforting sensitive, compromised, or post-procedure skin. This soap free cleanser dispenses a dense cleansing foam that transforms on contact into a comforting emulsion to provide a mild yet effective clean. Tested post-procedure.', N'Twice daily, gently massage one pump of this soap free cleanser onto a wet face and neck using a light circular motion. Rinse thoroughly with warm water and pat dry. If using in the morning, apply before a SkinCeuticals vitamin C serum and sunscreen. If using in the evening, apply before a SkinCeuticals corrective product or moisturizer.', 25, 35, 57)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'f41358ec-9272-4ead-a287-4f3b5ece910c', N'c9d09720-830b-4525-b110-534b0351415b', N'United States', N'LHA CLEANSING GEL: OUR BEST CLEANSER FOR ACNE PRONE SKIN', N'LHA Cleanser is a targeted exfoliating cleanser featuring a conditioning surfactant and a 12% concentration of key ingredients combining lipo-hydroxy acid, glycolic acid, salicylic acid, glycerin, and sorbitol to remove excess oils and makeup, while decongesting pores and brightening skin. Formulated for aging skin prone to breakouts, this deep cleansing gel gently refines the appearance of congested pores and helps to reduce blemishes without drying the skin.', N'Twice daily, apply a small amount of this exfoliating cleanser onto a wet face and neck using a light circular motion. Rinse thoroughly with warm water and pat dry. If using in the morning, follow with a SkinCeuticals vitamin C serum and sunscreen. If using in the evening, follow with a SkinCeuticals corrective product or moisturizer.', 30, 41, 11)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'ffad4f6a-06ae-471f-ab78-53ae77c8bbad', N'8ec445b9-f98d-45e1-bdf7-15dfcace941b', N'United States', N'PHYTO CORRECTIVE GEL', N'Phyto Corrective Gel contains hyaluronic acid, cucumber, thyme, and other botanical ingredients, making it an ideal moisturizer for sensitive skin. It also features mulberry to help minimize the appearance of discoloration and promote a clear, fresh-looking complexion. This soothing gel is also an excellent moisturizer for acne-prone skin.', N'As needed, apply 2-3 drops to face, neck, and chest. Can be used on other areas of the body as needed. If using in the morning, apply after a SkinCeuticals vitamin C antioxidant serum and before a SkinCeuticals sunscreen. If using with a retinol at night, apply after retinol application.', 50, 67, 10)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'ad570df6-4fb1-46e2-b7a3-59b408a76819', N'efd5747b-be3b-4aac-8a00-59863434e2dc', N'United States', N'PHYTO CORRECTIVE MASK', N'Phyto Corrective Mask contains highly-concentrated botanical extracts, a calming dipeptide, and hyaluronic acid to intensively soothe and replenish temporary skin reactivity. This intensive calming facial mask cools on contact, comforts skin sensitivity, and restores natural radiance and smoothness. Phyto Corrective Mask has been clinically tested post-procedure to effectively reduce visual redness and discomfort. This versatile botanical facial mask has multifaceted uses post temporary skin reactivity.', N'This face mask can be applied as a leave-on, rinse-off, or overnight treatment.

Apply a generous coat to clean face, chest, or neck avoiding eye and lip area. Allow mask to remain on for 10-15 minutes. Rinse with cool water if desired. Use 2-3 times a week or as needed. Apply post-procedure as indicated by a physician.', 45, 59, 16)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'e4088b14-de89-45e6-bf8e-59c98168fdad', N'7cb6ec58-dd17-4cc0-9e47-d50fc5fb96bc', N'United States', N'PHYSICAL UV DEFENSE SPF 30', N'Formulated specifically for post-procedure, sensitive, and very dry skin, Physical UV Defense SPF 30 combines barrier repair and broad spectrum UVA/UVB protection. More advanced than traditional sunscreens, Physical UV Defense is proven to increase the expression of essential proteins responsible for skin’s barrier integrity. This all-physical sunscreen, featuring zinc oxide (Z-Cote®*) and titanium dioxide, provides all day hydration making it ideal for daily use. Artemia salina, a plankton extract, provides increased photoprotection by stimulating skin’s defenses and resistance to UV and heat stress.**


*Z-COTE HP-1 is a Registered Trademark of BASF

**based on in-vitro testing', N'In the morning, following a SkinCeuticals antioxidant, apply a dime size amount to the face, neck, and chest at least 15 minutes prior to sun exposure. Apply before makeup. Reapply after 80 minutes of sweating, swimming, immediately after towel drying, and at least every two hours. For children under six months of age, consult a physician before use.', 20, 34, 15)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'06b2cd56-8c0b-4a6d-a34c-5a8a9f887b47', N'c9d09720-830b-4525-b110-534b0351415b', N'United States', N'CLARIFYING EXFOLIATING CLEANSER', N'Clarifying Exfoliating Cleanser is a dual-action exfoliating cream formulated with a 7% concentration combining salicylic, glycolic, and lactic acids and exfoliating pumice beads to efficiently remove dead skin cells, while purifying and clarifying skin. This gentle exfoliating cleanser dissolves pore congestion, smooths skin texture, and promotes skin clarity, effectively priming skin for at-home cosmeceutical use.', N'Once daily, gently massage a small amount of this exfoliating cream onto a wet face and neck with light circular motion. Rinse thoroughly with warm water and pat dry. If using in the morning, follow with a SkinCeuticals vitamin C serum and sunscreen. If using in the evening, following with a SkinCeuticals corrective product or moisturizer.', 25, 35, 42)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'5437cc45-09a3-41f0-a6db-6135566a90dd', N'77cf6b04-c447-4a43-90ea-32f5200926ba', N'United States', N'TRIPLE LIPID RESTORE 2:4:2', N'Triple Lipid Restore 2:4:2 is an anti-aging cream that contains the optimal and patented lipid ratio of 2% pure ceramides 1 and 3, 4% natural cholesterol, and 2% fatty acids, which is proven to nourish skin and correct signs of aging. This unique lipid correction cream contains the first 2:4:2 cholesterol-dominant ratio to help restore skin''s external barrier and support natural self-repair, while potently nourishing aging skin for improvement in the visible appearance of skin smoothness, laxity, pores, and overall radiance.

BENEFITS:', N'Apply a small amount between fingertips, warm and melt the cream in circular motions. Apply once or twice daily to face, neck, and chest. If using in the morning, apply after a SkinCeuticals vitamin C antioxidant serum and before a SkinCeuticals sunscreen. If using with a retinol at night, apply after retinol application.', 120, 130, 20)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'98d26fd6-5167-465a-9326-617236c8b7f3', N'9ceaa494-22d9-4acc-9cba-5429b98dc551', N'United States', N'GLYCOLIC 10 RENEW OVERNIGHT', N'Glycolic 10 Renew Overnight is formulated with a free acid value of 10% glycolic acid, allowing it to work at a true 10% concentration proven optimal in promoting effective exfoliation and natural cell turnover. Free acid value refers to the true strength of a glycolic acid product, and is affected by both the concentration of acid and the pH of the formula. This potent night cream is synergistically blended with 2% phytic acid to promote skin clarity and brightness, and a triple action-soothing complex to help support the skin barrier. Proven tolerable for nightly use, Glycolic 10 Renew Overnight improves the appearance of skin texture and tone to promote a bright complexion and glowing skin.', N'• Shake before use.

• Some skin types may require time to acclimate to glycolic acid. In these cases, precondition skin for this night cream by limiting initial use to once every other evening.

• Apply an even, pea-sized layer over entire face and neck. After one week, increase to every evening or as advised by a skincare professional.

• Avoid eye area.

• Always use with a daytime antioxidant + sunscreen.

• With use of a high-concentration glycolic acid, it is common to experience mild symptoms of skin detoxification such as redness and temporary skin purging. Generally, these side effects resolve with continual use.', 70, 80, 15)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'0f428655-2eb6-47c2-87be-636404390e2c', N'f83bc2a0-c299-4cdf-9185-4d9c8864b9f8', N'United States', N'BODY TIGHTENING CONCENTRATE', N'Formulated for loose, sagging skin on gravity-fighting body zones including the abdomen, buttocks, thighs, knees and upper arms, this cooling fluid reinflates and helps support skin’s structure resulting in the appearance of a smooth, tight surface.

BENEFITS:
Helps tightens, firms, and lift the appearance of sagging skin
2% hydrolyzed rice protein: Helps skin feel firm
Instant cooling effect
Formulated for use on abdomen, buttocks, thighs, knees, and upper arms
Paraben-free and fragrance-free formulation
', N'Apply twice daily to loose, sagging body areas.', 65, 79, 30)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'314f6bd0-7e6b-4bc2-93b0-76f4e4de96b4', N'b7fdc303-f447-4d98-be64-4ee77a8e62d4', N'United States', N'PHYTO +', N'Phyto+ is designed to help improve skin discoloration without irritation. Formulated in a soothing gel with botanical extracts cucumber and thyme combined with arbutin and kojic acid to improve the appearance of dark spots and promote an overall brighter, more even and radiant complexion. Phyto + is delivered in a hyaluronic acid base to hydrate and improve the overall appearance of skin.', N'Twice daily, apply 3-4 drops of this botanical serum to areas of discoloration.', 72, 87, 25)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'bbf8d092-cfaa-4ada-8f89-76fddc76e7da', N'34851908-faec-4f3f-9c9f-b595d67ea45c', N'United States', N'DAILY MOISTURE', N'Restores and maintains moisture
Formulated with botanical extracts to help reduce the appearance of pore size
Protects skin from environmental damage
Leaves skin with a smooth, non-greasy finish
Ideal for normal to oily skin', N'Once or twice daily, apply a generous amount to the entire face, neck, and chest. If using in the morning, apply after a SkinCeuticals vitamin C antioxidant serum and before a SkinCeuticals sunscreen. If using with a retinol at night, apply after retinol application.', 50, 63, 25)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'e19d8654-973f-4518-ae45-804f53ef8a5b', N'faa68f34-6134-4599-83af-3aa3163174b8', N'United States', N'PHLORETIN CF® WITH FERULIC ACID', N'Phloretin CF features a patented synergistic combination of 2% phloretin, 10% pure vitamin C (l-ascorbic acid), and 0.5% ferulic acid for enhanced protection against atmospheric skin aging – environmental damage and premature signs of aging caused by free radicals from UVA/UVB, infrared radiation (IRA), and ozone pollution (O3). In addition to antioxidant protective benefits, Phloretin CF improves the appearance of discoloration, fine lines, and uneven skin tone.', N'In the morning after cleansing and toning, apply 4-5 drops to a dry face, neck, and chest before other skincare products. May be used on the back of the hands. It is normal for vitamin C products to darken after opening due to air and light exposure. The formula will remain effective. Once opened, it is recommended to be used within 3 months of opening.

Complete your regimen with a SkinCeuticals sunscreen. When used together, SkinCeuticals antioxidants and broad spectrum sunscreens provide the most complete protection against visible aging caused by environmental aggressors.
', 150, 166, 50)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'73cbd6a3-16df-4f62-b01b-87b248f2ab95', N'7cb6ec58-dd17-4cc0-9e47-d50fc5fb96bc', N'United States', N'PHYSICAL EYE UV DEFENSE SPF 50', N'Delivering a new standard in eye care, this ophthalmologist-tested sunscreen defends, enhances, and optimizes the entire eye area, including the eye lid. Formulated specifically for the unique structure of the thinner and more sensitive skin around the eye, Physical Eye UV Defense provides broad spectrum SPF 50 protection without migrating into and irritating the eyes. A unifying tint enhances skin tone while ceramides nourish, creating a smooth, optimal canvas for makeup application.', N'
In the morning, following SkinCeuticals antioxidant application, squeeze a pea size of sunscreen onto fingertips. Gently dab onto the entire eye area, including under the eyes, around the eyes, and the on the eye lids. Finish with a SkinCeuticals broad spectrum sunscreen for the entire face.', 20, 30, 18)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'8ccbbfea-d6e6-4e6a-8ba6-8983553dc894', N'9ceaa494-22d9-4acc-9cba-5429b98dc551', N'United States', N'LHA TONER', N'LHA Toner is a targeted glycolic acid toner ideal for combination oily skin. Formulated with a triple combination of exfoliating agents, including lipo-hydroxy acid, glycolic acid, and salicylic acid, it efficiently removes excess residue and surface cells to get rid of clogged pores. Designed for aging skin prone to breakouts, this glycolic acid toner has a low pH to efficiently exfoliate and reveal brighter, more even, and refined skin.', N'- Twice daily after using LHA Cleanser, pour a small amount of this glycolic acid toner onto a cotton ball and smooth over face, neck and chest.

- If using in the morning, follow with a SkinCeuticals vitamin C serum and sunscreen.

- If using in the evening, follow with a SkinCeuticals corrective product or moisturizer.', 30, 40, 15)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'2237b0ad-3989-47e2-b184-89d4eb60d85a', N'7cb6ec58-dd17-4cc0-9e47-d50fc5fb96bc', N'United States', N'PHYSICAL MATTE UV DEFENSE SPF 50', N'Daily UVA/UVB oil-absorbing protective base with a matte finish.

This mattifying 100% physical sunscreen is formulated with titanium dioxide and zinc oxide (Z-Cote®*) to provide high broad spectrum UV protection. Enhanced with aerated silica technology, it is proven to maintain a matte finish even in hot, humid conditions. Its weightless mousse texture dries to a powder finish, optimizing makeup application. *Z-COTE HP-1 is a Registered Trademark of BASF', N'Apply sunscreen liberally to the face, neck, and chest 15 minutes before sun exposure and before applying makeup. Reapply sunscreen after 40 minutes of swimming, sweating, immediately after towel drying, and least every two hours. For children under six months of age, consult a physician before use.', 20, 35, 15)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'00a0a580-99cd-4c84-b13e-8ee144825122', N'faa68f34-6134-4599-83af-3aa3163174b8', N'United States', N'RESVERATROL B E', N'Resveratrol B E is a first-of-its kind night treatment that combines a maximized concentration of 1% pure, stable resveratrol, synergistically enhanced with 0.5% baicalin and 1% pure vitamin E (alpha tocopherol) for optimized anti-aging antioxidant performance. This patented antioxidant cocktail neutralizes free radicals, supports skin’s natural antioxidant defenses, and reveals visible radiance and firmness.', N'In the evening after cleansing, apply one to two pumps to a dry face. Follow with a SkinCeuticals corrective product.', 130, 153, 30)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'f37ad20f-4215-49c8-9dfd-a14d31e864c7', N'c9d09720-830b-4525-b110-534b0351415b', N'United States', N'GLYCOLIC RENEWAL CLEANSER', N'Glycolic Renewal Cleanser is a high-concentration, soft-foaming gel cleanser designed to effectively exfoliate skin. Formulated with a free acid value of 8% glycolic acid, combined with 1% phytic acid, aloe leaf juice, and glycerin, this exfoliating cleanser helps deliver a clear and bright complexion while removing oil, dirt, debris, and long-wear makeup without stripping the skin of moisture.', N'Twice daily, gently massage a small amount onto a wet face.

• Rinse with warm water and pat dry.

• If using in the morning, apply before a SkinCeuticals vitamin C serum and sunscreen.

• If using in the evening, follow with a SkinCeuticals corrective product or moisturizer.
', 26, 38, 55)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'feae0e16-88c2-4969-93fc-aa9b89cd486c', N'72b43268-2553-4246-b2ce-cb8debf9c9e1', N'United States', N'RETINOL 0.3', N'Retinol 0.3 is recommended for first-time retinol users. This potent nighttime treatment features 0.3% pure retinol enhanced with the latest stabilization and delivery technologies to ensure a steady, even release. Formulated with soothing bisabolol to minimize irritation and specially packaged to preserve its potency, this retinol cream for face helps improve the appearance of fine lines, wrinkles, discoloration, blemishes, and pores by accelerating cellular turnover. Retinol 0.3 is ideal for continued use or for conditioning skin as a prerequisite to SkinCeuticals Retinol 0.5.', N'In the evening, apply a pea size amount to clean dry skin, avoiding the eye area. Allow product to absorb before applying other skincare products. Limit initial use to once or twice a week, gradually increasing frequency to every other night, then every night as tolerated. It is important to establish consistent skin tolerance before advancing to a higher concentration.

Retinol may increase photosensitivity. Always use a high-protection, broad spectrum sunscreen when using this product.

As a precaution, retinol cream products should not be used by pregnant women or women who intend to become pregnant in the near future. Though there are no reports of topical retinol having any negative effect on fetal development, always consult a physician.', 50, 67, 47)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'0ff08b74-670f-4fa0-8a85-b92d21b7976e', N'77cf6b04-c447-4a43-90ea-32f5200926ba', N'United States', N'ADVANCED PIGMENT CORRECTOR', N'Advanced Pigment Corrector targets skin discoloration often caused by accumulated sun exposure, hormonal shifts, and the natural aging process. This multi-active comprehensive technology exfoliates and improves skin radiance to reduce the appearance of discoloration. Tested across all skin tones to improve the appearance of stubborn skin discoloration and uneven skin tone as it boosts the appearance of radiance.', N'Once or twice daily, apply 1-2 pumps to a dry face and other areas of discoloration, or as directed by a physician. If using in the morning, apply after a SkinCeuticals vitamin C antioxidant serum and before a SkinCeuticals sunscreen.', 85, 92, 50)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'81058d79-ba68-480f-8399-ba2b1cdc07c0', N'faa68f34-6134-4599-83af-3aa3163174b8', N'United States', N'SERUM 10 AOX+', N'Ideal for sensitive skin types or those new to vitamin C antioxidant serum, Serum 10 AOX+ utilizes 10% pure vitamin C (l-ascorbic acid) and 0.2% ferulic acid to help neutralize damaging free radicals that contribute to atmospheric skin aging – environmental damage and premature signs of aging caused by free radicals from UVA/UVB radiation. In addition to providing the benefits of vitamin C, this antioxidant serum also helps improve the appearance of fine lines and wrinkles.', N'In the morning after cleansing, apply 4-5 drops of this antioxidant serum to a dry face, neck, and chest before other skincare products. May also be used on backs of the hands. It is normal for vitamin C products to darken after opening due to air and light exposure. The formula will remain effective. Once opened, it is recommended to be used within 3 months of opening.

Complete your regimen with a SkinCeuticals sunscreen. When used together, SkinCeuticals antioxidants and broad spectrum sunscreens provide more comprehensive protection against visible aging caused by environmental aggressors.', 60, 70, 30)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'bf7a2943-cf4d-42ff-b0f1-c3dda6e2dc84', N'4d815354-8e8e-4b59-9b37-b552cff02bfb', N'United States', N'AOX+ EYE GEL', N'AOX+ Eye Gel is a groundbreaking serum-in-a-gel that contains a synergistic combination of 5% pure vitamin C (l-ascorbic acid), 1% phloretin, and 0.5% ferulic acid along with powerful botanicals to protect the delicate eye area from atmospheric skin aging – environmental damage and premature signs of aging caused by free radicals from UVA/UVB, infrared radiation (IRA), and ozone pollution (O3). This refreshing eye serum targets visible signs of aging such as crow’s feet and fine lines, and improves the appearance of puffiness, fatigue, and under eye circles.', N'In the morning, apply 1/2 pump per eye on fingertips. Apply on the area below the eyes, on the outer corners, and on the brow bone. Gently pat the gel until it is completely absorbed. Do not apply product to the inner corners near the tear ducts, below the brow bone, or on the upper lid. Follow with SkinCeuticals Physical Eye UV Defense SPF 50.

It is normal for vitamin C products to darken after opening due to air and light exposure. The formula will remain effective. Once opened, it is recommended to be used within 3 months of opening.', 90, 95, 18)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'b4fca4f6-73fd-46f1-b026-c7d6aa4e2609', N'c9d09720-830b-4525-b110-534b0351415b', N'United States', N'SIMPLY CLEAN: OUR BEST CLEANSER FOR OILY SKIN', N'Simply Clean is a powerful makeup removing cleanser formulated with an amino acid surfactant system and a 6% concentration combining sulfonic acid (HEPES), glycerin, chamomile and aloe extracts, orange oil, and citric acid to gently exfoliate uneven or rough skin. This unique gel cleanser efficiently removes waterproof makeup and excess oil to leave skin feeling clean and primed for in-office treatments and at-home cosmeceutical use. Tested pre-procedure.', N'Twice daily, gently massage one pump of this soap free cleanser onto a wet face and neck using a light circular motion. Rinse thoroughly with warm water and pat dry. If using in the morning, apply before a SkinCeuticals vitamin C serum and sunscreen. If using in the evening, apply before a SkinCeuticals corrective product or moisturizer.

', 25, 35, 25)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'19a19e78-4780-4dec-acf8-cefa1070e4a4', N'f83bc2a0-c299-4cdf-9185-4d9c8864b9f8', N'United States', N'BODY RETEXTURING TREATMENT', N'Formulated for dull, rough body zones, this once daily treatment by promoting exfoliation and providing simultaneous hydration to retexture rough body surfaces and significantly improve radiance and smoothness. Suitable for all skin types, Body Retexturing Treatment is effective even on extremely dry, flaky skin.', N'Once daily after showering, apply to legs, arms, and other dull, rough body zones. Can be applied after shaving. Body Retexturing Treatment can be used once daily morning or night.', 50, 61, 54)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'22f5b371-d876-432b-81e7-d1e75fc97064', N'c9d09720-830b-4525-b110-534b0351415b', N'United States', N'MICRO-EXFOLIATING SCRUB', N'Micro-Exfoliating Scrub features a powerful 2% concentration combining hydrated silica, glycerin, and aloe extract to purify pores and promote a healthy skin barrier. Gentle enough for daily use, this exfoliating scrub provides a mild and even exfoliation to improve texture while softening and hydrating the skin.', N'Once daily, apply a small amount of this gentle face scrub onto a wet face and neck using a light circular motion. Rinse thoroughly with warm water and pat dry. If using in the morning, apply before SkinCeuticals vitamin C serums and sunscreens. If using in the evening, apply before SkinCeuticals corrective products and moisturizers.', 25, 35, 55)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'0e6439a7-bef1-46ae-94aa-d257e28c32ff', N'f83bc2a0-c299-4cdf-9185-4d9c8864b9f8', N'United States', N'TRIPEPTIDE-R NECK REPAIR', N'A daily retinol cream specifically formulated for the neck, Tripeptide-R Neck Repair is designed to target early to advanced signs of neck aging, including lines and wrinkles due to repetitive movements from looking down at mobile devices. Formulated with 0.2% pure, slow-release retinol, 2.5% tripeptide concentrate, and 5.0% glaucine complex, this corrective technology is clinically demonstrated to target multiple signs of visible neck aging. Tripeptide-R Neck Repair is specifically formulated for delicate neck skin, is appropriate for daily use, and complements professional treatments.', N' Apply 1-2 pumps every other night from décolleté to jawline by massaging the product in an upward motion. After one week, increase use to nightly, then twice daily as tolerated or as advised by a skincare professional.

• Pair usage with Triple Lipid Restore 2:4:2 as needed to help replenish lipids while acclimating skin to retinol usage.

• Retinol may increase photosensitivity. Always use a high-protection, broad spectrum sunscreen when using this product.

• As a precaution, retinol cream products should not be used by pregnant women or women who intend to become pregnant in the near future. Though there are no reports of topical retinol having any negative effect on fetal development, always consult a physician.', 110, 120, 12)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'edf1dfbd-a3c4-48c4-b1c9-dc559724bbb8', N'34851908-faec-4f3f-9c9f-b595d67ea45c', N'United States', N'EPIDERMAL REPAIR', N'Soothes skin
Diminishes the appearance of redness', N'Once daily or as needed, apply a small amount to affected areas.', 60, 74, 59)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'dfb511da-42d8-4973-9af7-ded6acc3f118', N'72b43268-2553-4246-b2ce-cb8debf9c9e1', N'United States', N'RETINOL 1.0', N'Promotes cell turnover
Improves the appearance of fine lines, wrinkles, discoloration, pores, and blemishes
Formulated to minimize irritation commonly associated with the use of a retinol face cream
Specialized packaging preserves retinol potency
Non-comedogenic, paraben-, fragrance-, and gluten-free
Ideal for skin preconditioned with Retinol 0.5', N'In the evening, apply a pea size amount to clean dry skin, avoiding the eye area. Allow product to absorb before applying other skincare products. Limit initial use to once or twice a week, gradually increasing frequency to every other night, then every night as tolerated. It is recommended for new users to start with a Retinol 0.3 to establish skin tolerance.

Retinol may increase photosensitivity. Always use a high-protection, broad spectrum sunscreen when using this product.

As a precaution, retinol face creams should not be used by pregnant women or women who intend to become pregnant in the near future. Though there are no reports of topical retinol having any negative effect on fetal development, always consult a physician.

', 70, 88, 19)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'72cdd9e3-c25b-4a3e-b90d-e458be952720', N'faa68f34-6134-4599-83af-3aa3163174b8', N'United States', N'C E FERULIC® WITH 15% L-ASCORBIC ACID', N'C E Ferulic features a synergistic antioxidant combination of 15% pure vitamin C (L-ascorbic acid), 1% vitamin E (alpha tocopherol), and 0.5% ferulic acid to enhance protection against environmental damage caused by free radicals that can contribute to atmospheric aging. C E Ferulic is now proven to reduce combined oxidative damage generated by UVA/UVB rays, ozone pollution, and diesel engine exhaust by up to 41%. In addition to antioxidant protective benefits, C E Ferulic improves signs of aging and photodamage, the appearance of lines and wrinkles, and the loss of firmness, while brightening skin''s complexion.', N'In the morning after cleansing and toning, apply 4-5 drops to a dry face, neck, and chest before other anti-aging skincare products.

Complete your regimen with a SkinCeuticals sunscreen. When used together, SkinCeuticals antioxidants and broad spectrum sunscreens provide protection against visible aging caused by environmental aggressors.', 150, 166, 50)
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [Produce_country], [Name], [Description], [User_guide], [Price], [Sell_price], [Quantity]) VALUES (N'ab48b00a-d6db-402e-9742-f335fe14dbb9', N'f83bc2a0-c299-4cdf-9185-4d9c8864b9f8', N'United States', N'NECK, CHEST & HAND REPAIR', N'Specifically designed for the skin quality and concerns of forgotten body areas frequently exposed to the sun, Neck, Chest & Hand Repair delivers dual brightening and restoration action. Powerful skin brightening agents fade the look of accumulated damage and age spots while improving the appearance of texture.', N'Apply twice daily to neck, chest, and hands. For hydration, use a hand moisturizer as needed.', 60, 71, 25)
/****** Object:  Table [dbo].[Customer]    Script Date: 07/25/2021 17:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](60) NULL,
	[Phone] [varchar](20) NULL,
	[Address] [varchar](255) NULL,
	[Username] [varchar](30) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Customer] UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Customer] ([CustomerID], [Name], [Phone], [Address], [Username]) VALUES (N'b4322e08-9eb0-41bf-a69d-6d980a4ad947', N'Hong Phuc', N'0254875698', N'Ha Noi', N'customer1')
INSERT [dbo].[Customer] ([CustomerID], [Name], [Phone], [Address], [Username]) VALUES (N'ed177c38-152b-4490-a030-96fae4546707', N'Duc Manh', N'0254875693', N'Ho Chi Minh', N'customer2')
INSERT [dbo].[Customer] ([CustomerID], [Name], [Phone], [Address], [Username]) VALUES (N'3ec784a4-e064-4ac0-9711-b9432b510b30', N'Minh Dan', N'0548759635', N'Ha Noi', N'customer3')
INSERT [dbo].[Customer] ([CustomerID], [Name], [Phone], [Address], [Username]) VALUES (N'dc6674e2-322a-49df-9010-c1ff9253e3fe', N'Kim Hoa', N'0648756985', N'Ha Noi ', N'customer4')
INSERT [dbo].[Customer] ([CustomerID], [Name], [Phone], [Address], [Username]) VALUES (N'c7ddce6a-ac07-44fd-8150-d27955153aef', N'Minh Chien', N'0258756985', N'Da Nang', N'customer5')
/****** Object:  Table [dbo].[Staff]    Script Date: 07/25/2021 17:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Staff](
	[StaffID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](60) NULL,
	[Address] [varchar](255) NULL,
	[Phone] [varchar](20) NULL,
	[BankAccount] [varchar](20) NULL,
	[Username] [varchar](30) NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Staff] UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Staff] ([StaffID], [Name], [Address], [Phone], [BankAccount], [Username]) VALUES (N'48cddf63-619c-4767-ade7-3c481f4970d4', N'Minh Hien', N'Ha Noi - Vietnam', N'0578599856', N'2548796358', N'manager')
INSERT [dbo].[Staff] ([StaffID], [Name], [Address], [Phone], [BankAccount], [Username]) VALUES (N'5afd19fb-3879-4511-9a02-59aaba5b4280', N'Thu Thuy', N'Ha Noi - Vietnam', N'0578599856', N'2548796358', N'staff')
INSERT [dbo].[Staff] ([StaffID], [Name], [Address], [Phone], [BankAccount], [Username]) VALUES (N'36bdce36-2d3d-4678-b52b-60c4863b8b50', N'Thu Hien', N'Ha Noi - Vietnam', N'0578599856', N'2548796358', N'staff1')
INSERT [dbo].[Staff] ([StaffID], [Name], [Address], [Phone], [BankAccount], [Username]) VALUES (N'3945ebd8-7bb8-4f39-8890-83f84d9b518d', N'Trinh', N'hoa lac', N'123456789', N'0123456789', N'trinh')
/****** Object:  Table [dbo].[Import]    Script Date: 07/25/2021 17:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Import](
	[ImportID] [uniqueidentifier] NOT NULL,
	[StaffID] [uniqueidentifier] NULL,
	[ImportDate] [date] NULL,
 CONSTRAINT [PK_Import] PRIMARY KEY CLUSTERED 
(
	[ImportID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Import] ([ImportID], [StaffID], [ImportDate]) VALUES (N'a1e218f0-5bdb-4a96-856d-05f960ffbe17', N'48cddf63-619c-4767-ade7-3c481f4970d4', CAST(0xBC420B00 AS Date))
INSERT [dbo].[Import] ([ImportID], [StaffID], [ImportDate]) VALUES (N'07180f0a-e565-4cbc-a289-0add0b684cc2', N'5afd19fb-3879-4511-9a02-59aaba5b4280', CAST(0xBD420B00 AS Date))
INSERT [dbo].[Import] ([ImportID], [StaffID], [ImportDate]) VALUES (N'4322419d-97b6-4acb-8460-3ebffeb776d7', N'48cddf63-619c-4767-ade7-3c481f4970d4', CAST(0xBE420B00 AS Date))
INSERT [dbo].[Import] ([ImportID], [StaffID], [ImportDate]) VALUES (N'af45cb2a-3286-41d7-9962-50b75f8a9053', N'48cddf63-619c-4767-ade7-3c481f4970d4', CAST(0xBF420B00 AS Date))
INSERT [dbo].[Import] ([ImportID], [StaffID], [ImportDate]) VALUES (N'5d8c04fe-c407-4d66-8953-5e26bddab984', N'5afd19fb-3879-4511-9a02-59aaba5b4280', CAST(0xC0420B00 AS Date))
INSERT [dbo].[Import] ([ImportID], [StaffID], [ImportDate]) VALUES (N'c4c7735d-3a65-4d53-85b7-5f56ac560a31', N'48cddf63-619c-4767-ade7-3c481f4970d4', CAST(0xC1420B00 AS Date))
INSERT [dbo].[Import] ([ImportID], [StaffID], [ImportDate]) VALUES (N'0a57f36f-0382-46c5-88f9-8e3d01603085', N'5afd19fb-3879-4511-9a02-59aaba5b4280', CAST(0xC1420B00 AS Date))
/****** Object:  Table [dbo].[Carts]    Script Date: 07/25/2021 17:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [uniqueidentifier] NULL,
	[ProductID] [uniqueidentifier] NULL,
	[Count] [int] NULL,
	[DateCreated] [date] NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Carts] ON
INSERT [dbo].[Carts] ([RecordId], [CustomerID], [ProductID], [Count], [DateCreated]) VALUES (1, N'137bb260-26b4-490f-bdb7-821ddfff8e55', N'ffad4f6a-06ae-471f-ab78-53ae77c8bbad', 1, CAST(0xCA420B00 AS Date))
INSERT [dbo].[Carts] ([RecordId], [CustomerID], [ProductID], [Count], [DateCreated]) VALUES (2, N'137bb260-26b4-490f-bdb7-821ddfff8e55', N'b1a0bd18-0d5d-43b8-9f85-039fc6f1ae84', 2, CAST(0xCA420B00 AS Date))
INSERT [dbo].[Carts] ([RecordId], [CustomerID], [ProductID], [Count], [DateCreated]) VALUES (3, N'c9a1920f-fa2c-48f6-b20b-ad3bb3c71c53', N'b1a0bd18-0d5d-43b8-9f85-039fc6f1ae84', 2, CAST(0xCA420B00 AS Date))
INSERT [dbo].[Carts] ([RecordId], [CustomerID], [ProductID], [Count], [DateCreated]) VALUES (4, N'c9a1920f-fa2c-48f6-b20b-ad3bb3c71c53', N'ffad4f6a-06ae-471f-ab78-53ae77c8bbad', 1, CAST(0xCA420B00 AS Date))
INSERT [dbo].[Carts] ([RecordId], [CustomerID], [ProductID], [Count], [DateCreated]) VALUES (5, N'69ff4cb0-099e-4b0f-bd97-9b4588eeeb28', N'ffad4f6a-06ae-471f-ab78-53ae77c8bbad', 1, CAST(0xCA420B00 AS Date))
INSERT [dbo].[Carts] ([RecordId], [CustomerID], [ProductID], [Count], [DateCreated]) VALUES (6, N'1dce25c1-fb73-43bd-afa0-a9a9b61135d2', N'ffad4f6a-06ae-471f-ab78-53ae77c8bbad', 2, CAST(0xCA420B00 AS Date))
INSERT [dbo].[Carts] ([RecordId], [CustomerID], [ProductID], [Count], [DateCreated]) VALUES (7, N'36bdce36-2d3d-4678-b52b-60c4863b8b50', N'b1a0bd18-0d5d-43b8-9f85-039fc6f1ae84', 1, CAST(0xCA420B00 AS Date))
INSERT [dbo].[Carts] ([RecordId], [CustomerID], [ProductID], [Count], [DateCreated]) VALUES (9, N'36bdce36-2d3d-4678-b52b-60c4863b8b50', N'b1a0bd18-0d5d-43b8-9f85-039fc6f1ae84', 2, CAST(0xCA420B00 AS Date))
INSERT [dbo].[Carts] ([RecordId], [CustomerID], [ProductID], [Count], [DateCreated]) VALUES (10, N'd740bd79-5531-4241-a80e-de5e8d502384', N'ffad4f6a-06ae-471f-ab78-53ae77c8bbad', 2, CAST(0xCA420B00 AS Date))
SET IDENTITY_INSERT [dbo].[Carts] OFF
/****** Object:  Table [dbo].[Orders]    Script Date: 07/25/2021 17:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [uniqueidentifier] NOT NULL,
	[CustomerID] [uniqueidentifier] NULL,
	[Order_date] [date] NULL,
	[Total_amount] [float] NULL,
	[StaffID] [uniqueidentifier] NULL,
	[Deliver_date] [date] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Order_date], [Total_amount], [StaffID], [Deliver_date]) VALUES (N'fc2456fb-dafd-407b-8932-1dbecfbfc62b', N'b4322e08-9eb0-41bf-a69d-6d980a4ad947', CAST(0xC1420B00 AS Date), 347, N'48cddf63-619c-4767-ade7-3c481f4970d4', CAST(0xC3420B00 AS Date))
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Order_date], [Total_amount], [StaffID], [Deliver_date]) VALUES (N'eceb5006-175a-4b1a-bf73-1e837698bbe5', N'ed177c38-152b-4490-a030-96fae4546707', CAST(0xC1420B00 AS Date), 332, N'5afd19fb-3879-4511-9a02-59aaba5b4280', NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Order_date], [Total_amount], [StaffID], [Deliver_date]) VALUES (N'9cf61c28-3436-4e13-957d-43b0a89dd71c', N'ed177c38-152b-4490-a030-96fae4546707', CAST(0xC2420B00 AS Date), 519, N'48cddf63-619c-4767-ade7-3c481f4970d4', NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Order_date], [Total_amount], [StaffID], [Deliver_date]) VALUES (N'da11c75a-bc5d-4463-82f6-459f84b8d3f0', N'b4322e08-9eb0-41bf-a69d-6d980a4ad947', CAST(0xCA420B00 AS Date), 421, NULL, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Order_date], [Total_amount], [StaffID], [Deliver_date]) VALUES (N'958f91ba-44a5-46f5-974e-7a7d17bb7cf5', N'b4322e08-9eb0-41bf-a69d-6d980a4ad947', CAST(0xCA420B00 AS Date), 399, NULL, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Order_date], [Total_amount], [StaffID], [Deliver_date]) VALUES (N'6df4455b-5145-45df-a45a-8089d464b563', N'3ec784a4-e064-4ac0-9711-b9432b510b30', CAST(0xC2420B00 AS Date), 70, N'5afd19fb-3879-4511-9a02-59aaba5b4280', NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Order_date], [Total_amount], [StaffID], [Deliver_date]) VALUES (N'f38fca0b-5663-4d2c-82a1-9fee1f389c42', N'dc6674e2-322a-49df-9010-c1ff9253e3fe', CAST(0xC2420B00 AS Date), 529, N'5afd19fb-3879-4511-9a02-59aaba5b4280', NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Order_date], [Total_amount], [StaffID], [Deliver_date]) VALUES (N'be0e7b06-b154-416f-a3c1-b1537432bf23', N'3ec784a4-e064-4ac0-9711-b9432b510b30', CAST(0xC6420B00 AS Date), 30, N'48cddf63-619c-4767-ade7-3c481f4970d4', NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Order_date], [Total_amount], [StaffID], [Deliver_date]) VALUES (N'78e25c38-1187-4747-90bc-c0c553305dce', N'dc6674e2-322a-49df-9010-c1ff9253e3fe', CAST(0xC7420B00 AS Date), 137, N'5afd19fb-3879-4511-9a02-59aaba5b4280', NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Order_date], [Total_amount], [StaffID], [Deliver_date]) VALUES (N'8fdb18ac-4d2e-4f94-b30e-cdea47dc9104', N'b4322e08-9eb0-41bf-a69d-6d980a4ad947', CAST(0xCA420B00 AS Date), 61, NULL, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Order_date], [Total_amount], [StaffID], [Deliver_date]) VALUES (N'f11f64d5-8cde-424a-9dc3-db22ad08d7b8', N'c7ddce6a-ac07-44fd-8150-d27955153aef', CAST(0xC8420B00 AS Date), 326, N'48cddf63-619c-4767-ade7-3c481f4970d4', NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Order_date], [Total_amount], [StaffID], [Deliver_date]) VALUES (N'84c95fa3-10dd-4de0-9553-e5fd7729c7d0', N'3ec784a4-e064-4ac0-9711-b9432b510b30', CAST(0xCA420B00 AS Date), 2222, NULL, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Order_date], [Total_amount], [StaffID], [Deliver_date]) VALUES (N'1d61fb08-3929-4edc-a7bb-fdeb941a46e2', N'b4322e08-9eb0-41bf-a69d-6d980a4ad947', CAST(0xCA420B00 AS Date), 399, NULL, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Order_date], [Total_amount], [StaffID], [Deliver_date]) VALUES (N'42ff3650-b49d-443f-939e-ff2aa5932870', N'ed177c38-152b-4490-a030-96fae4546707', CAST(0xCA420B00 AS Date), 118, NULL, NULL)
/****** Object:  Table [dbo].[Order_details]    Script Date: 07/25/2021 17:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_details](
	[OrderID] [uniqueidentifier] NOT NULL,
	[OrderLine] [int] NOT NULL,
	[Quantity] [int] NULL,
	[ProductID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Order_details] PRIMARY KEY CLUSTERED 
(
	[OrderLine] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Order_details] ([OrderID], [OrderLine], [Quantity], [ProductID]) VALUES (N'fc2456fb-dafd-407b-8932-1dbecfbfc62b', 1, 2, N'b976fe54-5fad-4f43-98ed-008b1efa5861')
INSERT [dbo].[Order_details] ([OrderID], [OrderLine], [Quantity], [ProductID]) VALUES (N'da11c75a-bc5d-4463-82f6-459f84b8d3f0', 1, 3, N'0e6439a7-bef1-46ae-94aa-d257e28c32ff')
INSERT [dbo].[Order_details] ([OrderID], [OrderLine], [Quantity], [ProductID]) VALUES (N'958f91ba-44a5-46f5-974e-7a7d17bb7cf5', 1, 1, N'ffad4f6a-06ae-471f-ab78-53ae77c8bbad')
INSERT [dbo].[Order_details] ([OrderID], [OrderLine], [Quantity], [ProductID]) VALUES (N'8fdb18ac-4d2e-4f94-b30e-cdea47dc9104', 1, 1, N'19a19e78-4780-4dec-acf8-cefa1070e4a4')
INSERT [dbo].[Order_details] ([OrderID], [OrderLine], [Quantity], [ProductID]) VALUES (N'84c95fa3-10dd-4de0-9553-e5fd7729c7d0', 1, 1, N'a2670d86-b936-4454-ad7a-2fb3cc0708c9')
INSERT [dbo].[Order_details] ([OrderID], [OrderLine], [Quantity], [ProductID]) VALUES (N'1d61fb08-3929-4edc-a7bb-fdeb941a46e2', 1, 1, N'ffad4f6a-06ae-471f-ab78-53ae77c8bbad')
INSERT [dbo].[Order_details] ([OrderID], [OrderLine], [Quantity], [ProductID]) VALUES (N'42ff3650-b49d-443f-939e-ff2aa5932870', 1, 2, N'ad570df6-4fb1-46e2-b7a3-59b408a76819')
INSERT [dbo].[Order_details] ([OrderID], [OrderLine], [Quantity], [ProductID]) VALUES (N'fc2456fb-dafd-407b-8932-1dbecfbfc62b', 2, 3, N'57331f28-8ab2-48a8-ab0d-1f1c42339514')
INSERT [dbo].[Order_details] ([OrderID], [OrderLine], [Quantity], [ProductID]) VALUES (N'da11c75a-bc5d-4463-82f6-459f84b8d3f0', 2, 1, N'19a19e78-4780-4dec-acf8-cefa1070e4a4')
INSERT [dbo].[Order_details] ([OrderID], [OrderLine], [Quantity], [ProductID]) VALUES (N'958f91ba-44a5-46f5-974e-7a7d17bb7cf5', 2, 2, N'b1a0bd18-0d5d-43b8-9f85-039fc6f1ae84')
INSERT [dbo].[Order_details] ([OrderID], [OrderLine], [Quantity], [ProductID]) VALUES (N'1d61fb08-3929-4edc-a7bb-fdeb941a46e2', 2, 2, N'b1a0bd18-0d5d-43b8-9f85-039fc6f1ae84')
INSERT [dbo].[Order_details] ([OrderID], [OrderLine], [Quantity], [ProductID]) VALUES (N'fc2456fb-dafd-407b-8932-1dbecfbfc62b', 3, 1, N'e2ffedd5-bfc1-4fa7-9d7d-3db098ab57cc')
INSERT [dbo].[Order_details] ([OrderID], [OrderLine], [Quantity], [ProductID]) VALUES (N'958f91ba-44a5-46f5-974e-7a7d17bb7cf5', 3, 2, N'b1a0bd18-0d5d-43b8-9f85-039fc6f1ae84')
INSERT [dbo].[Order_details] ([OrderID], [OrderLine], [Quantity], [ProductID]) VALUES (N'1d61fb08-3929-4edc-a7bb-fdeb941a46e2', 3, 2, N'b1a0bd18-0d5d-43b8-9f85-039fc6f1ae84')
INSERT [dbo].[Order_details] ([OrderID], [OrderLine], [Quantity], [ProductID]) VALUES (N'eceb5006-175a-4b1a-bf73-1e837698bbe5', 4, 2, N'f41358ec-9272-4ead-a287-4f3b5ece910c')
INSERT [dbo].[Order_details] ([OrderID], [OrderLine], [Quantity], [ProductID]) VALUES (N'eceb5006-175a-4b1a-bf73-1e837698bbe5', 5, 5, N'e4088b14-de89-45e6-bf8e-59c98168fdad')
INSERT [dbo].[Order_details] ([OrderID], [OrderLine], [Quantity], [ProductID]) VALUES (N'eceb5006-175a-4b1a-bf73-1e837698bbe5', 6, 1, N'98d26fd6-5167-465a-9326-617236c8b7f3')
INSERT [dbo].[Order_details] ([OrderID], [OrderLine], [Quantity], [ProductID]) VALUES (N'9cf61c28-3436-4e13-957d-43b0a89dd71c', 7, 2, N'73cbd6a3-16df-4f62-b01b-87b248f2ab95')
INSERT [dbo].[Order_details] ([OrderID], [OrderLine], [Quantity], [ProductID]) VALUES (N'9cf61c28-3436-4e13-957d-43b0a89dd71c', 8, 3, N'00a0a580-99cd-4c84-b13e-8ee144825122')
INSERT [dbo].[Order_details] ([OrderID], [OrderLine], [Quantity], [ProductID]) VALUES (N'6df4455b-5145-45df-a45a-8089d464b563', 9, 1, N'81058d79-ba68-480f-8399-ba2b1cdc07c0')
INSERT [dbo].[Order_details] ([OrderID], [OrderLine], [Quantity], [ProductID]) VALUES (N'f38fca0b-5663-4d2c-82a1-9fee1f389c42', 10, 1, N'3a566364-68a0-4f7a-b3eb-24ba0f2d40c7')
INSERT [dbo].[Order_details] ([OrderID], [OrderLine], [Quantity], [ProductID]) VALUES (N'f38fca0b-5663-4d2c-82a1-9fee1f389c42', 11, 2, N'fe980203-58c8-4fca-9a5d-4ecf33b8123a')
INSERT [dbo].[Order_details] ([OrderID], [OrderLine], [Quantity], [ProductID]) VALUES (N'f38fca0b-5663-4d2c-82a1-9fee1f389c42', 12, 1, N'06b2cd56-8c0b-4a6d-a34c-5a8a9f887b47')
INSERT [dbo].[Order_details] ([OrderID], [OrderLine], [Quantity], [ProductID]) VALUES (N'f38fca0b-5663-4d2c-82a1-9fee1f389c42', 13, 3, N'0f428655-2eb6-47c2-87be-636404390e2c')
INSERT [dbo].[Order_details] ([OrderID], [OrderLine], [Quantity], [ProductID]) VALUES (N'be0e7b06-b154-416f-a3c1-b1537432bf23', 14, 1, N'73cbd6a3-16df-4f62-b01b-87b248f2ab95')
INSERT [dbo].[Order_details] ([OrderID], [OrderLine], [Quantity], [ProductID]) VALUES (N'78e25c38-1187-4747-90bc-c0c553305dce', 15, 1, N'feae0e16-88c2-4969-93fc-aa9b89cd486c')
INSERT [dbo].[Order_details] ([OrderID], [OrderLine], [Quantity], [ProductID]) VALUES (N'78e25c38-1187-4747-90bc-c0c553305dce', 16, 2, N'b4fca4f6-73fd-46f1-b026-c7d6aa4e2609')
INSERT [dbo].[Order_details] ([OrderID], [OrderLine], [Quantity], [ProductID]) VALUES (N'f11f64d5-8cde-424a-9dc3-db22ad08d7b8', 17, 1, N'0e6439a7-bef1-46ae-94aa-d257e28c32ff')
INSERT [dbo].[Order_details] ([OrderID], [OrderLine], [Quantity], [ProductID]) VALUES (N'f11f64d5-8cde-424a-9dc3-db22ad08d7b8', 18, 1, N'72cdd9e3-c25b-4a3e-b90d-e458be952720')
INSERT [dbo].[Order_details] ([OrderID], [OrderLine], [Quantity], [ProductID]) VALUES (N'f11f64d5-8cde-424a-9dc3-db22ad08d7b8', 19, 2, N'b976fe54-5fad-4f43-98ed-008b1efa5861')
/****** Object:  Table [dbo].[Import_details]    Script Date: 07/25/2021 17:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Import_details](
	[ImportID] [uniqueidentifier] NOT NULL,
	[ImportLine] [int] NOT NULL,
	[ProductID] [uniqueidentifier] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_Import_details] PRIMARY KEY CLUSTERED 
(
	[ImportLine] ASC,
	[ImportID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Import_details] ([ImportID], [ImportLine], [ProductID], [Quantity]) VALUES (N'a1e218f0-5bdb-4a96-856d-05f960ffbe17', 1, N'b976fe54-5fad-4f43-98ed-008b1efa5861', 10)
INSERT [dbo].[Import_details] ([ImportID], [ImportLine], [ProductID], [Quantity]) VALUES (N'a1e218f0-5bdb-4a96-856d-05f960ffbe17', 2, N'b1a0bd18-0d5d-43b8-9f85-039fc6f1ae84', 15)
INSERT [dbo].[Import_details] ([ImportID], [ImportLine], [ProductID], [Quantity]) VALUES (N'a1e218f0-5bdb-4a96-856d-05f960ffbe17', 5, N'85e8671e-8e55-4598-9f25-05389822b222', 12)
INSERT [dbo].[Import_details] ([ImportID], [ImportLine], [ProductID], [Quantity]) VALUES (N'a1e218f0-5bdb-4a96-856d-05f960ffbe17', 6, N'3a566364-68a0-4f7a-b3eb-24ba0f2d40c7', 13)
INSERT [dbo].[Import_details] ([ImportID], [ImportLine], [ProductID], [Quantity]) VALUES (N'07180f0a-e565-4cbc-a289-0add0b684cc2', 7, N'7f3e8891-48ab-46e5-8229-34fee3e129db', 5)
INSERT [dbo].[Import_details] ([ImportID], [ImportLine], [ProductID], [Quantity]) VALUES (N'07180f0a-e565-4cbc-a289-0add0b684cc2', 8, N'72dfbd06-17ad-47d3-b6a6-3e6ad7ce6236', 9)
INSERT [dbo].[Import_details] ([ImportID], [ImportLine], [ProductID], [Quantity]) VALUES (N'07180f0a-e565-4cbc-a289-0add0b684cc2', 9, N'fe980203-58c8-4fca-9a5d-4ecf33b8123a', 10)
INSERT [dbo].[Import_details] ([ImportID], [ImportLine], [ProductID], [Quantity]) VALUES (N'07180f0a-e565-4cbc-a289-0add0b684cc2', 10, N'ffad4f6a-06ae-471f-ab78-53ae77c8bbad', 17)
INSERT [dbo].[Import_details] ([ImportID], [ImportLine], [ProductID], [Quantity]) VALUES (N'07180f0a-e565-4cbc-a289-0add0b684cc2', 11, N'e19d8654-973f-4518-ae45-804f53ef8a5b', 5)
INSERT [dbo].[Import_details] ([ImportID], [ImportLine], [ProductID], [Quantity]) VALUES (N'07180f0a-e565-4cbc-a289-0add0b684cc2', 12, N'00a0a580-99cd-4c84-b13e-8ee144825122', 8)
INSERT [dbo].[Import_details] ([ImportID], [ImportLine], [ProductID], [Quantity]) VALUES (N'07180f0a-e565-4cbc-a289-0add0b684cc2', 13, N'0ff08b74-670f-4fa0-8a85-b92d21b7976e', 15)
INSERT [dbo].[Import_details] ([ImportID], [ImportLine], [ProductID], [Quantity]) VALUES (N'07180f0a-e565-4cbc-a289-0add0b684cc2', 14, N'bf7a2943-cf4d-42ff-b0f1-c3dda6e2dc84', 10)
INSERT [dbo].[Import_details] ([ImportID], [ImportLine], [ProductID], [Quantity]) VALUES (N'07180f0a-e565-4cbc-a289-0add0b684cc2', 15, N'19a19e78-4780-4dec-acf8-cefa1070e4a4', 14)
INSERT [dbo].[Import_details] ([ImportID], [ImportLine], [ProductID], [Quantity]) VALUES (N'4322419d-97b6-4acb-8460-3ebffeb776d7', 16, N'b1a0bd18-0d5d-43b8-9f85-039fc6f1ae84', 5)
INSERT [dbo].[Import_details] ([ImportID], [ImportLine], [ProductID], [Quantity]) VALUES (N'4322419d-97b6-4acb-8460-3ebffeb776d7', 17, N'57331f28-8ab2-48a8-ab0d-1f1c42339514', 10)
INSERT [dbo].[Import_details] ([ImportID], [ImportLine], [ProductID], [Quantity]) VALUES (N'4322419d-97b6-4acb-8460-3ebffeb776d7', 18, N'abf67f5c-f304-408c-abab-2b7570a0eaa6', 8)
INSERT [dbo].[Import_details] ([ImportID], [ImportLine], [ProductID], [Quantity]) VALUES (N'4322419d-97b6-4acb-8460-3ebffeb776d7', 19, N'72dfbd06-17ad-47d3-b6a6-3e6ad7ce6236', 7)
INSERT [dbo].[Import_details] ([ImportID], [ImportLine], [ProductID], [Quantity]) VALUES (N'4322419d-97b6-4acb-8460-3ebffeb776d7', 20, N'ffad4f6a-06ae-471f-ab78-53ae77c8bbad', 4)
INSERT [dbo].[Import_details] ([ImportID], [ImportLine], [ProductID], [Quantity]) VALUES (N'4322419d-97b6-4acb-8460-3ebffeb776d7', 21, N'e4088b14-de89-45e6-bf8e-59c98168fdad', 15)
INSERT [dbo].[Import_details] ([ImportID], [ImportLine], [ProductID], [Quantity]) VALUES (N'af45cb2a-3286-41d7-9962-50b75f8a9053', 22, N'0f428655-2eb6-47c2-87be-636404390e2c', 10)
INSERT [dbo].[Import_details] ([ImportID], [ImportLine], [ProductID], [Quantity]) VALUES (N'af45cb2a-3286-41d7-9962-50b75f8a9053', 23, N'314f6bd0-7e6b-4bc2-93b0-76f4e4de96b4', 11)
INSERT [dbo].[Import_details] ([ImportID], [ImportLine], [ProductID], [Quantity]) VALUES (N'af45cb2a-3286-41d7-9962-50b75f8a9053', 24, N'bbf8d092-cfaa-4ada-8f89-76fddc76e7da', 10)
INSERT [dbo].[Import_details] ([ImportID], [ImportLine], [ProductID], [Quantity]) VALUES (N'5d8c04fe-c407-4d66-8953-5e26bddab984', 25, N'8ccbbfea-d6e6-4e6a-8ba6-8983553dc894', 12)
INSERT [dbo].[Import_details] ([ImportID], [ImportLine], [ProductID], [Quantity]) VALUES (N'5d8c04fe-c407-4d66-8953-5e26bddab984', 26, N'2237b0ad-3989-47e2-b184-89d4eb60d85a', 8)
INSERT [dbo].[Import_details] ([ImportID], [ImportLine], [ProductID], [Quantity]) VALUES (N'c4c7735d-3a65-4d53-85b7-5f56ac560a31', 27, N'57331f28-8ab2-48a8-ab0d-1f1c42339514', 1)
INSERT [dbo].[Import_details] ([ImportID], [ImportLine], [ProductID], [Quantity]) VALUES (N'c4c7735d-3a65-4d53-85b7-5f56ac560a31', 28, N'abf67f5c-f304-408c-abab-2b7570a0eaa6', 15)
INSERT [dbo].[Import_details] ([ImportID], [ImportLine], [ProductID], [Quantity]) VALUES (N'c4c7735d-3a65-4d53-85b7-5f56ac560a31', 29, N'72dfbd06-17ad-47d3-b6a6-3e6ad7ce6236', 10)
INSERT [dbo].[Import_details] ([ImportID], [ImportLine], [ProductID], [Quantity]) VALUES (N'0a57f36f-0382-46c5-88f9-8e3d01603085', 30, N'f41358ec-9272-4ead-a287-4f3b5ece910c', 23)
INSERT [dbo].[Import_details] ([ImportID], [ImportLine], [ProductID], [Quantity]) VALUES (N'0a57f36f-0382-46c5-88f9-8e3d01603085', 31, N'e4088b14-de89-45e6-bf8e-59c98168fdad', 12)
INSERT [dbo].[Import_details] ([ImportID], [ImportLine], [ProductID], [Quantity]) VALUES (N'0a57f36f-0382-46c5-88f9-8e3d01603085', 32, N'0f428655-2eb6-47c2-87be-636404390e2c', 10)
/****** Object:  ForeignKey [FK_Product_ProductType]    Script Date: 07/25/2021 17:21:20 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductType] FOREIGN KEY([ProductTypeID])
REFERENCES [dbo].[ProductType] ([ProductTypeID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductType]
GO
/****** Object:  ForeignKey [FK_Customer_Account]    Script Date: 07/25/2021 17:21:20 ******/
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Account]
GO
/****** Object:  ForeignKey [FK_Staff_Account]    Script Date: 07/25/2021 17:21:20 ******/
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Account]
GO
/****** Object:  ForeignKey [FK_Import_Staff]    Script Date: 07/25/2021 17:21:20 ******/
ALTER TABLE [dbo].[Import]  WITH CHECK ADD  CONSTRAINT [FK_Import_Staff] FOREIGN KEY([StaffID])
REFERENCES [dbo].[Staff] ([StaffID])
GO
ALTER TABLE [dbo].[Import] CHECK CONSTRAINT [FK_Import_Staff]
GO
/****** Object:  ForeignKey [FK_Carts_Product]    Script Date: 07/25/2021 17:21:20 ******/
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Product]
GO
/****** Object:  ForeignKey [FK_Orders_Customer]    Script Date: 07/25/2021 17:21:20 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customer]
GO
/****** Object:  ForeignKey [FK_Orders_Staff]    Script Date: 07/25/2021 17:21:20 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Staff] FOREIGN KEY([StaffID])
REFERENCES [dbo].[Staff] ([StaffID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Staff]
GO
/****** Object:  ForeignKey [FK_Order_details_Orders]    Script Date: 07/25/2021 17:21:20 ******/
ALTER TABLE [dbo].[Order_details]  WITH CHECK ADD  CONSTRAINT [FK_Order_details_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[Order_details] CHECK CONSTRAINT [FK_Order_details_Orders]
GO
/****** Object:  ForeignKey [FK_Order_details_Product]    Script Date: 07/25/2021 17:21:20 ******/
ALTER TABLE [dbo].[Order_details]  WITH CHECK ADD  CONSTRAINT [FK_Order_details_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Order_details] CHECK CONSTRAINT [FK_Order_details_Product]
GO
/****** Object:  ForeignKey [FK_Import_details_Import]    Script Date: 07/25/2021 17:21:20 ******/
ALTER TABLE [dbo].[Import_details]  WITH CHECK ADD  CONSTRAINT [FK_Import_details_Import] FOREIGN KEY([ImportID])
REFERENCES [dbo].[Import] ([ImportID])
GO
ALTER TABLE [dbo].[Import_details] CHECK CONSTRAINT [FK_Import_details_Import]
GO
/****** Object:  ForeignKey [FK_Import_details_Product]    Script Date: 07/25/2021 17:21:20 ******/
ALTER TABLE [dbo].[Import_details]  WITH CHECK ADD  CONSTRAINT [FK_Import_details_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Import_details] CHECK CONSTRAINT [FK_Import_details_Product]
GO
